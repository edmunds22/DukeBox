var app = angular.module('myApp', ['ngRoute', 'ngSanitize']); 

app.service('PlaylistService', ['$http', function($http){

	this.getLivePlaylist = getLivePlaylist;
	this.getPlaylist = getPlaylist;
	this.addToPlaylist = addToPlaylist;
	this.getPlaylistList = getPlaylistList;
    this.createPlaylist = createPlaylist;

	
	
	function getLivePlaylist(callback){
	   
        $http({
            url: '/testData/live_playlist.json',
            method: 'GET'
        }).success(function (data, status, header, config){
		
            console.log(data);
            callback(data);

        });

	
	}
	
	function getPlaylist(playlistId, callback){
	
		console.log('getting playlist: '+playlistId);
	   
        $http({
            url: '/index.php/playlist/'+playlistId,
			data: {"playlistName" : playlistId},
            method: 'GET'
        }).success(function (data, status, header, config){
		
            console.log(data);
            callback(data);

        }).error(function (data, status, headers, config) {  
  
        }); 
	}

	
	function getPlaylistList(callback){
	
		console.log('getting playlists');
	   
        $http({
            url: '/testData/playlists.json',
            method: 'GET'
        }).success(function (data, status, header, config){
		
            console.log(data);
            callback(data);

        });

	
	}
	
	
	function addToPlaylist(ref, callback){
	
        alert('adding '+ref.referenceType+' to list '+ref.playlistId+'...'+ref.referenceId);

        $http({
            url: '/testData/200.php',
            data: {
                referenceType:referenceType,
                playlistId:playlistId,
                referenceId:referenceId
            },
            method: 'POST'
        }).success(function (data, status, header, config){
		
            console.log(status);
            callback(data);

        });

	
	}	


    function createPlaylist(name, callback){
    
        alert('adding playlist '+name);
       
        $http({
            url: '/testData/200.php',
            data: {name:name},
            method: 'POST'
        }).success(function (data, status, header, config){
        
            console.log(status);
            callback(data);

        }); 

    }
	
}]);



app.service('LibraryService', ['$http', function($http){

	this.getArtists = getArtists;
	this.getAlbum = getAlbum;
	this.getArtistInfo = getArtistInfo;
	
	
	function getAlbum(albumId, callback){
	
        alert('fetching...'+albumId);
	   
        $http({
            url: '/testData/album_info.json',
            method: 'GET'
        }).success(function (data, status, header, config){
		
            callback(data);

        });

	
	}
     
    function getArtists(callback) { 

        alert('fetching artists');

        $http({
            url: '/index.php/artists',
            data: {"nameFilter" : ""},
            method: 'GET'
        }).success(function (data, status, header, config){
		
            callback(data.artists);
			
        });

	};

    function getArtistInfo(artistId, routeArtistId, callback) { 

        var finArtistId = routeArtistId;

        if(typeof finArtistId == "undefined"){

            var finArtistId = artistId;
 
        }
	 
        $http({
            //url: '/testData/artist_info.json',
            url: '/index.php/artist/'+finArtistId,
			data: {"artistId" : artistId},
            method: 'GET'
        }).success(function (data, status, header, config){
		
            callback(data.artistInfo);
			
        });

	};	
	
	
}]);

app.factory("Data", ['$http',
    function ($http) { // This service connects to our REST API
 
        var serviceBase = '/index.php/';
 
        var obj = {};
        //obj.toast = function (data) {
        //    toaster.pop(data.status, "", data.message, 10000, 'trustedHtml');
        //}
        obj.get = function (q) {
            return $http.get(serviceBase + q).then(function (results) {
                return results.data;
            });
        };
        obj.post = function (q, object) {
            return $http.post(serviceBase + q, object).then(function (results) {
                return results.data;
            });
        };
        obj.put = function (q, object) {
            return $http.put(serviceBase + q, object).then(function (results) {
                return results.data;
            });
        };
        obj.delete = function (q) {
            return $http.delete(serviceBase + q).then(function (results) {
                return results.data;
            });
        };
 
        return obj;
}]);

app.config(['$routeProvider', function($routeProvider) {
    $routeProvider
		
        // route for the home page 
		
        .when('/', {
            templateUrl : 'templates/main.html',
            //controller  : 'artistInfoCtrl'
        })
		

        .when('/artist/:artistId', {
            templateUrl : 'templates/main.html',
            //controller  : 'artistInfoCtrl'
        })

        .when('/login', {
            templateUrl : 'templates/login.html',
            controller  : 'loginCtrl'
        })
        .otherwise({
            redirectTo: '/login'
        })
		/*
        .when('/playlist', {
            templateUrl : 'templates/playlistInfo.html',
            controller  : 'playlistInfoCtrl'
        })
        */
}])

    .run(function ($rootScope, $location, Data) {
        $rootScope.$on("$routeChangeStart", function (event, next, current) {
            $rootScope.authenticated = false;
            alert('authed?');
            
            Data.get('auth/session').then(function (results) {
                if (results.uid) {
                    $rootScope.authenticated = true;
                    $rootScope.uid = results.uid;
                    $rootScope.name = results.name;
                    $rootScope.email = results.email;
                } else {
                    //var nextUrl = next.$$route.originalPath;
                    //if (nextUrl == '/signup' || nextUrl == '/login') {
 
                    //} else {
                        $location.path("/login");
                    //}
                }
            });
        });
    });


;