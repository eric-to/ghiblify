import React from "react";
import { Route, Switch } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import Modal from "../components/modal/modal";
import SidebarContainer from "./navigation/sidebar_container";
import MusicPlayerContainer from "./music_player/music_player_container";
import Browse from "./browse/browse";
import LibraryContainer from "./library/library_container";
import Search from "./search/search";
import SearchIcon from "./navigation/search_icon";
import HomeIcon from "./navigation/home_icon";
import LibraryIcon from "./navigation/library_icon";
import AlbumDetailsContainer from "./album/album_details_container";
import PlaylistDetailsContainer from "./playlist/playlist_details_container";
// import SongDetailsContainer from "./song/song_all_listings_container";

// components to import:
//  Sidebar
//  Browse
//  Library

const MainPage = () => {
	const sidebarItemInfos = [
		{
			to: "/search",
			icon: <SearchIcon />,
			displayText: "Search"
		},
		{
			to: "/browse/playlists",
			icon: <HomeIcon />,
			displayText: "Home"
		},
		{
			to: "/library/playlists",
			icon: <LibraryIcon />,
			displayText: "Your Library"
		}
	];
	return (
		<div>
			<div className="main-nav-content">
				<Modal />
				<SidebarContainer sidebarItemInfos={sidebarItemInfos} />
				<Switch>
					<Route path="/browse" component={Browse} />
					<Route path="/library" component={LibraryContainer} />
					<Route path="/search" component={Search} />
					<Route path="/albums/:albumId" component={AlbumDetailsContainer} />
					<Route
						path="/playlists/:playlistId"
						component={PlaylistDetailsContainer}
					/>
					{/* <Route path="/songs/:songId" component={SongDetailsContainer} /> */}
				</Switch>
			</div>

			<MusicPlayerContainer />
		</div>
	);
};

export default MainPage;

{
	/* <Switch>
			<Route path="/browse" component={Browse} />
			<Route path="/library" component={Library} />
		</Switch> */
}
