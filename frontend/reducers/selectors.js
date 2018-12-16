import * as _ from 'lodash';

export const hydratedAlbumsSelector = (entities) => {
  const albums = entities.albums;
  const artists = entities.artists;
  if (_.isEmpty(albums) || _.isEmpty(artists)) {
    return undefined;
  }
  const result = Object.values(albums).map(album => {
    const artist = artists[album.artistId];

    return {
      ...album,
      artistId: undefined,
      artist
    };
  });
  return result;
}

//converts creator_id to user's name
export const hydratedPlaylistsSelector = (entities) => {
  const playlists = entities.playlists;
  const users = entities.users;

  if (_.isEmpty(playlists) || _.isEmpty(users)) {
    return undefined;
  }
  const result = Object.values(playlists).map(playlist => {
    const creator = users[playlist.creatorId];

    return {
      ...playlist,
      creatorId: undefined,
      creator
    };
  });
  return result;
}

// const playlistSongSelector = (targetPlaylistId, entities) => {
//   const songs = [];
//   const keys = _.keys(entities.playlistSongs);
//   Object.keys()
//   keys.forEach(playlistSongId => {
//     if (entities.playlistSongs[playlistSongId].playlistId === targetPlaylistId) {
//       songs.push(entities.playlistSongs[playlistSongId].songId);
//     }
//   });
//   return songs.map((songId => entities.songs[songId]));
// }

// const savedPlaylists = (targetUserId, entities) => {
//   const playlists = [];
//   Object.keys(entities.playlistSongs).forEach(playlistSaveId => {
//     if (entities.playlistSaves[playlistSaveId].userId === targetUserId) {
//       playlists.push(entities.playlistSaves[playlistSaveId]);
//     }
//   });
//   return playlists;
// };