
//////////////////////
//live playlist//
//////////////////////
/*
app.controller('livePlaylistInfoCtrl', function($scope, $http, LibraryService, PlaylistService) {
	
		
	PlaylistService.getLivePlaylist(function(data) {
		$scope.livePlaylistTracks = data.livePlaylist.tracks;
	});		

	
    $scope.getAlbum = function(albumId) {

		LibraryService.getAlbum(albumId, function(data, albumId) {
			//$scope.getAlbum = data;alert('fetching...'+albumId);
			//alert('fetching...'+albumId);

			$scope.albumInfo = data.albumInfo;
			$scope.albumTitle = data.albumInfo[0].title;
			$scope.albumTracks = data.albumInfo[0].tracks;
		
		});		
		
    };
	
	

	
	

});
*/

//////////////////////
//artist controller//
//////////////////////

app.controller('loginCtrl', function($scope, $http) {


});


//////////////////////
//artist info controller//
//////////////////////

app.controller('artistInfoCtrl', ['$scope', '$route', '$routeParams', '$http', 'LibraryService', 'PlaylistService', 
	function($scope, $route, $routeParams, $http, LibraryService, PlaylistService) {

/*
	$scope.artistId = $routeParams.artistId;
	$scope.artistName = '';
console.log('rpms');
console.log($routeParams);
	LibraryService.getArtistInfo($scope.artistId, function(data) {

		

		if(typeof $scope.artistId == "undefined"){

			$scope.artistName = '';
			$scope.artistAlbums = '';
			
			console.log('cannot fetch null artist id');
 
		}else{

			$scope.artistName = data.name;
			$scope.artistAlbums = data.albums;
			
			console.log(data.albums);

		}


	});  
	*/

  $scope.$on('$routeChangeSuccess', function() {
    alert('new route w art id: '+$routeParams.artistId);

    if(typeof $routeParams.artistId !== "undefined" && $routeParams.artistId !== ""){

		LibraryService.getArtistInfo($scope.artistId, $routeParams.artistId, function(data) {


				$scope.artistName = data.name;
				$scope.artistAlbums = data.albums;
				
				console.log(data.albums);
	 


		}); 

	}

  }); 
	
	LibraryService.getArtists(function(data) {
		$scope.artists = data;
	});    	

	////type=album/track
	
    $scope.addToPlaylist = function(referenceType, referenceId, playlistId) {

        var refInfo = {
                referenceType: referenceType,
                referenceId: referenceId,
                playlistId: playlistId
        };

		PlaylistService.addToPlaylist(refInfo, function(data) {
			//$scope.getAlbum = data;alert('fetching...'+albumId);
			//alert('fetching...'+albumId);

			console.log('completed.');
			
			//console.log(data);
		
		});
		
		
		//PlaylistService.getLivePlaylist(function(data) {
		//	$scope.livePlaylistTracks = data.livePlaylist.tracks;
		//});		
		
		
    };

}]);







//////////////////////
//playlist controller//
//////////////////////

app.controller('playlistInfoCtrl', function($scope, $http, LibraryService, PlaylistService) {

	$scope.currentPlaylist = "Live";
	
	$scope.$watch('[currentPlaylist]', function () { 
		PlaylistService.getPlaylist($scope.currentPlaylist, function(data) {
			$scope.livePlaylistTracks = data.playlist.tracks;
		});	
	}, true);
			

	
	
	PlaylistService.getPlaylistList(function(data) {
		$scope.playlists = data.playlists;
	});	
		


	/////////
	////////NEW PLAYLIST
	///////
    $scope.newPlaylist = function(name) {


    	if(name = "" || typeof name == "undefined"){

    		alert('playlist name??');
    		return false;

    	}else{

    		alert('creating playlist '+name);

    	}

		PlaylistService.createPlaylist(name, function(data) {
			//$scope.getAlbum = data;alert('fetching...'+albumId);
			//alert('fetching...'+albumId);

			console.log('playlist create completed.');
			
			//console.log(data);
		
		});
		
		
		//PlaylistService.getLivePlaylist(function(data) {
		//	$scope.livePlaylistTracks = data.livePlaylist.tracks;
		//});		
		
		
    };




});