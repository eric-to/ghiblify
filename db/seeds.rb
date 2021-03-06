# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
Playlist.destroy_all
PlaylistSong.destroy_all

demo = User.create!(username: "totoro", email: "totolovescode@gmail.com", password: "password")
user1 = User.create!(username: "kiki", email: "kikilovescode@gmail.com", password: "password")
user2 = User.create!(username: "chihiro", email: "chihirolovescode@gmail.com", password: "password")
user3 = User.create!(username: "howl-jenks", email: "howllovescode@gmail.com", password: "password")
user4 = User.create!(username: "kodama", email: "littleforestghost@gmail.com", password: "password")
user5 = User.create!(username: "nahhhface", email: "nofacelovescode@gmail.com", password: "password")

#SPIRITED AWAY SOUNDTRACK
artist1 = Artist.create!(name: "Joe Hisaishi")
artist1.photo_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/images/joe_hisaishi.png'), filename: "joe_hisaishi.png"})

album1 = Album.create!(title: "Spirited Away Soundtrack", year: 2001, genre: "Ghibli", artist: artist1)
album1.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/images/spirited_away_cover.png'), filename: "sprited_away.png"})

song1 = Song.create!(title: "One Summer's Day", duration: 189, artist: artist1, album: album1)
song1.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+01+-+Ano+Natsu+He.mp3'), filename: 'ano.mp3'})

song2 = Song.create!(title: "The Passage", duration: 127, artist: artist1, album: album1)
song2.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+02+-+Toorimichi.mp3'), filename: 'toorimichi.mp3'})

song3 = Song.create!(title: "The Abandoned Restaurant", duration: 195, artist: artist1, album: album1)
song3.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+03+-+Dare+Mo+Inai+Ryouriten.mp3'), filename: 'dare.mp3'})

song4 = Song.create!(title: "Night is Coming", duration: 120, artist: artist1, album: album1)
song4.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+04+-+Yoru+Kitaru.mp3'), filename: 'yoru.mp3'})

song5 = Song.create!(title: "Dragon Boy", duration: 132, artist: artist1, album: album1)
song5.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+05+-+Ryuu+no+Shounen.mp3'), filename: 'ryuu.mp3'})

song6 = Song.create!(title: "Sootballs", duration: 153, artist: artist1, album: album1)
song6.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+06+-+Boiraa+Mushi.mp3'), filename: 'boiraa.mp3'})

song7 = Song.create!(title: "Procession of the Gods", duration: 180, artist: artist1, album: album1)
song7.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+07+-+Kamisama-tachi.mp3'), filename: 'kamisama.mp3'})

song8 = Song.create!(title: "Yubaba", duration: 210, artist: artist1, album: album1)
song8.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+08+-+Yu-Baaba.mp3'), filename: 'yubaba.mp3'})

song9 = Song.create!(title: "Reprise (Chihiro's Waltz)", duration: 293, artist: artist1, album: album1)
song9.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+19+-+Futatabi.mp3'), filename: 'futatabi.mp3'})

song10 = Song.create!(title: "No-Face", duration: 227, artist: artist1, album: album1)
song10.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+15+-+Kaonashi.mp3'), filename: 'kaonashi.mp3'})

song11 = Song.create!(title: "Going Home", duration: 200, artist: artist1, album: album1)
song11.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Joe+Hisaishi+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+20+-+Kaeru+Hi.mp3'), filename: 'kaeru.mp3'})

song12 = Song.create!(title: "Always with Me", duration: 215, artist: artist1, album: album1)
song12.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Spirited+Away/songs/Youmi+Kimura+-+Sen+to+Chihiro+no+Kamikakushi+Soundtrack+-+21+-+Itsumo+Nando+Demo.mp3'), filename: 'itsumo.mp3'})



# HOWL'S MOVING CASTLE SOUNDTRACK
album2 = Album.create!(title: "Howl's Moving Castle (Original Soundtrack)", year: 2004, genre: "Ghibli", artist: artist1)
album2.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/images/howls_moving_castle_cover.png'), filename: "howls.png"})

song13 = Song.create!(title: "Opening: The Merry-Go-Round Of Life", duration: 154, artist: artist1, album: album2)
song13.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+01+-+-Opening-+Jinsei+no+Merry-go-round.mp3'), filename: "opening.mp3"})

song14 = Song.create!(title: "Stroll Through the Sky", duration: 135, artist: artist1, album: album2)
song14.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+03+-+Kuuchuu+Sanpo.mp3'), filename: "kuuchuu.mp3"})

song15 = Song.create!(title: "Heart Aflutter", duration: 20, artist: artist1, album: album2)
song15.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+04+-+Tokimeki.mp3'), filename: "tokimeki.mp3"})

song16 = Song.create!(title: "The Indelible Curse", duration: 45, artist: artist1, album: album2)
song16.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+08+-+Kienai+Noroi.mp3'), filename: "kienai.mp3"})

song17 = Song.create!(title: "Sulliman's Magic Square: Return to the Castle", duration: 323, artist: artist1, album: album2)
song17.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+15+-+Sulliman+no+Mahoujin+~Shiro+he+no+Kikan.mp3'), filename: "sulliman.mp3"})

song18 = Song.create!(title: "Moving", duration: 185, artist: artist1, album: album2)
song18.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+17+-+Hikkoshi.mp3'), filename: "hikkoshi.mp3"})

song19 = Song.create!(title: "Now That's Love", duration: 72, artist: artist1, album: album2)
song19.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+20+-+Koi+da+ne.mp3'), filename: "koi.mp3"})

song20 = Song.create!(title: "Sophie's Castle", duration: 159, artist: artist1, album: album2)
song20.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+24+-+Sophie+no+Shiro.mp3'), filename: "sophie.mp3"})

song21 = Song.create!(title: "Ending: The Promise of the World", duration: 411, artist: artist1, album: album2)
song21.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Howls+Moving+Castle/songs/Joe+Hisaishi+-+Hauru+no+Ugoku+Shiro+Soundtrack+-+26+-+-Ending-+Sekai+no+Yakusoku+~Jinsei+no+Merry-go-round.mp3'), filename: "ending.mp3"})


# GRAVE OF THE FIREFLIES SOUNDTRACK
artist2 = Artist.create!(name: "Michio Mamiya")
artist2.photo_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/images/41WGN5K3JQL.jpg'), filename: "michio_mamiya.jpg"})

album3 = Album.create!(title: "Graves of the Fireflies Soundtrack", year: 1998, genre: "Ghibli", artist: artist2)
album3.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/images/grave_of_the_fireflies_cover.png'), filename: "graves_of_the_fireflies.png"})

song22 = Song.create!(title: "Setsuko and Seita", duration: 177, artist: artist2, album: album3)
song22.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/songs/Michio+Mamiya+-+Hotaru+no+Haka+Soundtrack+Collection+-+01+-+Setsuko+to+Seita+-+Main+Title+(Setsuko+and+Seita+-+Main+Title).mp3'), filename: "setsuko.mp3"})

song23 = Song.create!(title: "To the Ocean", duration: 97, artist: artist2, album: album3)
song23.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/songs/Michio+Mamiya+-+Hotaru+no+Haka+Soundtrack+Collection+-+06+-+Umi+he+(To+the+Ocean).mp3'), filename: "umi.mp3"})

song24 = Song.create!(title: "The Beach", duration: 97, artist: artist2, album: album3)
song24.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/songs/Michio+Mamiya+-+Hotaru+no+Haka+Soundtrack+Collection+-+07+-+Namiuchigiwa+(The+Beach).mp3'), filename: "nami.mp3"})

song25 = Song.create!(title: "Under the Cherry Blossoms", duration: 91, artist: artist2, album: album3)
song25.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/songs/Michio+Mamiya+-+Hotaru+no+Haka+Soundtrack+Collection+-+09+-+Sakura+no+Shita+(Under+The+Cherry+Blossom).mp3'), filename: "sakura.mp3"})

song26 = Song.create!(title: "Grave of the Fireflies", duration: 106, artist: artist2, album: album3)
song26.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/songs/Michio+Mamiya+-+Hotaru+no+Haka+Soundtrack+Collection+-+14+-+Hotaru+no+Haka.mp3'), filename: "hotaru.mp3"})

song27 = Song.create!(title: "Sunset Colors", duration: 53, artist: artist2, album: album3)
song27.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Grave+Of+The+Fireflies/songs/Michio+Mamiya+-+Hotaru+no+Haka+Soundtrack+Collection+-+15+-+Yuuyake+(Sunset+Colors).mp3'), filename: "yuuyake.mp3"})


# TOTORO SOUNDTRACK 2
artist3 = Artist.create!(name: "Azumi Inoue")
artist3.photo_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/images/a40091049_s800b1b5.jpg'), filename: "azumi_inoue.jpg"})
album4 = Album.create!(title: "My Neighbor Totoro", year: 1988, genre: "Ghibli", artist: artist3)
album4.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/images/totoro_alternative.jpg'), filename: "totoro_soundtrack2.jpg"})

song28 = Song.create!(title: "Hey Let's Go", duration: 163, artist: artist3, album: album4)
song28.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Azumi+Inoue+-+Tonari+no+Totoro+Soundtrack+Collection+-+01+-+Sanpo+(Opening+Shudaika).mp3'), filename: "opening.mp3"})

song29 = Song.create!(title: "A Lost Child", duration: 228, artist: artist3, album: album4)
song29.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Azumi+Inoue+-+Tonari+no+Totoro+Soundtrack+Collection+-+12+-+Maigo.mp3'), filename: "maigo.mp3"})

song30 = Song.create!(title: "My Neighbor Totoro", duration: 257, artist: artist3, album: album4)
song30.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Azumi+Inoue+-+Tonari+no+Totoro+Soundtrack+Collection+-+19+-+Tonari+no+Totoro+(Ending+Shudaika).mp3'), filename: "tonari.mp3"})

song31 = Song.create!(title: "Hey Let's Go (with Chorus)", duration: 163, artist: artist3, album: album4)
song31.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Azumi+Inoue+-+Tonari+no+Totoro+Soundtrack+Collection+-+20+-+Sanpo+(Gasshou+tsuki).mp3'), filename: "sanpo.mp3"})

# TOTORO SOUNDTRACK 1
album5 = Album.create!(title: "My Neighbor Totoro (Original Soundtrack)", year: 1988, genre: "Ghibli", artist: artist1)
album5.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/images/my_neighbor_totoro_cover.jpg'), filename: "totoro_soundtrack1.jpg"})

song32 = Song.create!(title: "A Haunted House", duration: 83, artist: artist1, album: album5)
song32.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Joe+Hisaishi+-+Tonari+no+Totoro+Soundtrack+Collection+-+03+-+Obake+Yashiki!.mp3'), filename: "obake.mp3"})

song33 = Song.create!(title: "Evening Wind", duration: 61, artist: artist1, album: album5)
song33.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Joe+Hisaishi+-+Tonari+no+Totoro+Soundtrack+Collection+-+05+-+Yuugure+no+Kaze.mp3'), filename: "yuugure.mp3"})

song34 = Song.create!(title: "Not Afraid", duration: 43, artist: artist1, album: album5)
song34.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Joe+Hisaishi+-+Tonari+no+Totoro+Soundtrack+Collection+-+06+-+Kowakunai.mp3'), filename: "kowakunai.mp3"})

song35 = Song.create!(title: "Mother", duration: 66, artist: artist1, album: album5)
song35.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Joe+Hisaishi+-+Tonari+no+Totoro+Soundtrack+Collection+-+08+-+Okaasan.mp3'), filename: "okaasan.mp3"})

song36 = Song.create!(title: "The Path of the Wind", duration: 196, artist: artist1, album: album5)
song36.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Joe+Hisaishi+-+Tonari+no+Totoro+Soundtrack+Collection+-+13+-+Kaze+no+Toorimichi+(Instrumental).mp3'), filename: "kaze.mp3"})

song37 = Song.create!(title: "Cat Bus", duration: 131, artist: artist1, album: album5)
song37.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/My+Neighbor+Totoro/songs/Joe+Hisaishi+-+Tonari+no+Totoro+Soundtrack+Collection+-+17+-+Nekobasu.mp3'), filename: "neko.mp3"})


#PRINCESS MONONOKE SOUNDTRACK
album6 = Album.create!(title: "Princess Mononoke Soundtrack", year: 1997, genre: "Ghibli", artist: artist1)
album6.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/images/princess_mononoke_cover.png'), filename: "princess_mononoke.png"})

song38 = Song.create!(title: "The Legend of Ashitaka", duration: 99, artist: artist1, album: album6)
song38.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/songs/unknown+artist+-+Princess+Mononoke+Soundtrack+(US)+-+01+-+The+Legend+of+Ashitaka.mp3'), filename: "ashitaka.mp3"})

song39 = Song.create!(title: "The Demon Power", duration: 36, artist: artist1, album: album6)
song39.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/songs/unknown+artist+-+Princess+Mononoke+Soundtrack+(US)+-+04+-+The+Demon+Power.mp3'), filename: "demon.mp3"})

song40 = Song.create!(title: "The Encounter", duration: 52, artist: artist1, album: album6)
song40.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/songs/unknown+artist+-+Princess+Mononoke+Soundtrack+(US)+-+06+-+The+Encounter.mp3'), filename: "encounter.mp3"})

song41 = Song.create!(title: "Evening at the Ironworks", duration: 39, artist: artist1, album: album6)
song41.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/songs/unknown+artist+-+Princess+Mononoke+Soundtrack+(US)+-+09+-+Evening+at+the+Ironworks.mp3'), filename: "ironworks.mp3"})

song42 = Song.create!(title: "Requiem", duration: 141, artist: artist1, album: album6)
song42.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/songs/unknown+artist+-+Princess+Mononoke+Soundtrack+(US)+-+15+-+Requiem.mp3'), filename: "requiem.mp3"})

song43 = Song.create!(title: "Will to Live", duration: 31, artist: artist1, album: album6)
song43.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/songs/unknown+artist+-+Princess+Mononoke+Soundtrack+(US)+-+16+-+Will+to+Live.mp3'), filename: "will.mp3"})

song44 = Song.create!(title: "Princess Mononoke", duration: 212, artist: artist1, album: album6)
song44.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Princess+Mononoke/songs/unknown+artist+-+Princess+Mononoke+Soundtrack+(US)+-+20+-+The+Battle+Drums.mp3'), filename: "battle.mp3"})



album7 = Album.create!(title: "Kiki's Delivery Service", year: 1989, genre: "Ghibli", artist: artist1 )
album7.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/images/kikis_delivery_service_cover.png'), filename: "kiki_delivery.png"})

song45 = Song.create!(title: "On a Clear Day", duration: 136, artist: artist1, album: album7)
song45.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/songs/Joe+Hisaishi+-+Majo+no+Takkyuubin+Soundtrack+Music+Collection+-+01+-+Hareta+Hi+ni....mp3'), filename: "hareta.mp3"})

song46 = Song.create!(title: "Departure", duration: 173, artist: artist1, album: album7)
song46.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/songs/Joe+Hisaishi+-+Majo+no+Takkyuubin+Soundtrack+Music+Collection+-+02+-+Tabidachi.mp3'), filename: "tabi.mp3"})

song47 = Song.create!(title: "Flying Delivery Service", duration: 129, artist: artist1, album: album7)
song47.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/songs/Joe+Hisaishi+-+Majo+no+Takkyuubin+Soundtrack+Music+Collection+-+03+-+Umi+no+Mieru+Machi.mp3'), filename: "umino.mp3"})

song48 = Song.create!(title: "A Very Busy Kiki", duration: 79, artist: artist1, album: album7)
song48.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/songs/Joe+Hisaishi+-+Majo+no+Takkyuubin+Soundtrack+Music+Collection+-+09+-+Ooisogashi+no+Kiki.mp3'), filename: "ooisogashi.mp3"})

song49 = Song.create!(title: "Late for the Party", duration: 67, artist: artist1, album: album7)
song49.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/songs/Joe+Hisaishi+-+Majo+no+Takkyuubin+Soundtrack+Music+Collection+-+10+-+Paatii+ni+Maniawanai.mp3'), filename: "paati.mp3"})

song50 = Song.create!(title: "Heartbroken Kiki", duration: 71, artist: artist1, album: album7)
song50.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/songs/Joe+Hisaishi+-+Majo+no+Takkyuubin+Soundtrack+Music+Collection+-+14+-+Shoushin+no+Kiki.mp3'), filename: "shoushin.mp3"})

song51 = Song.create!(title: "Rendezvous on the Push Broom", duration: 66, artist: artist1, album: album7)
song51.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Kikis+Delivery+Service/songs/Joe+Hisaishi+-+Majo+no+Takkyuubin+Soundtrack+Music+Collection+-+19+-+Dekki+Burasshu+de+Rendezvous.mp3'), filename: "dekki.mp3"})


album8 = Album.create!(title: "Laputa Castle in the Sky", year: 1986, genre: "Ghibli", artist: artist1)
album8.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/images/laputa_castle_in_the_sky_cover.jpg'), filename: "laputa_castle_in_sky.jpg"})

song52 = Song.create!(title: "The Girl Who Fell From the Sky", duration: 147, artist: artist1, album: album8)
song52.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+01+-+Sora+kara+Futtekita+Shoujo.mp3'), filename: "sora.mp3"})

song53 = Song.create!(title: "Memories of Gondoa", duration: 166, artist: artist1, album: album8)
song53.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+04+-+Gondoa+no+Omoide.mp3'), filename: "gondoa.mp3"})

song54 = Song.create!(title: "Robot Soldier", duration: 154, artist: artist1, album: album8)
song54.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+06+-+Robotto+Hei+(Fukkatsu+~+Kyuushutsu).mp3'), filename: "robotto.mp3"})

song55 = Song.create!(title: "Carrying You", duration: 122, artist: artist1, album: album8)
song55.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+07+-+Gasshou+Kimi+wo+Nosete.mp3'), filename: "gasshou.mp3"})

song56 = Song.create!(title: "On the Tiger Moth", duration: 153, artist: artist1, album: album8)
song56.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+09+-+Taigaamosu-gou+nite.mp3'), filename: "taiga.mp3"})

song57 = Song.create!(title: "A Sea of Clouds in the Moonlight", duration: 153, artist: artist1, album: album8)
song57.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+11+-+Gekkou+no+Unkai.mp3'), filename: "gekkou.mp3"})

song58 = Song.create!(title: "Castle in the Sky", duration: 277, artist: artist1, album: album8)
song58.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+12+-+Tenkuu+no+Shiro+Rapyuta.mp3'), filename: "tenkuu.mp3"})

song59 = Song.create!(title: "Destruction of Laputa", duration: 120, artist: artist1, album: album8)
song59.song_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Laputa+Castle+In+The+Sky/songs/Joe+Hisaishi+-+Tenk%C5%AB+no+Shiro+Laputa+Soundtrack+-+13+-+Rapyuta+no+Houkai.mp3'), filename: "ryapuuta.mp3"})



playlist1 = Playlist.create!(name: "Vanilla DOM ftw", creator_id: demo.id)
playlist1.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Other/48365122_1820833841353979_6382637554398658560_n.jpg'), filename: "blue_playlist.jpg"})
playlist2 = Playlist.create!(name: "Ghibli Mix", creator_id: user1.id)
playlist2.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Other/red_playlist_default.jpg'), filename: "red_playlist.jpg"})
playlist3 = Playlist.create!(name: "Top 2018", creator_id: user2.id)
playlist3.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Other/green_playlist_default.jpg'), filename: "green_playlist.jpg"})
playlist4 = Playlist.create!(name: "Totoro Faves", creator_id: demo.id)
playlist4.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Other/pink_playlist_default.jpg'), filename: "pink_playlist.jpg"})
playlist5 = Playlist.create!(name: "No Face's Sombre Songs", creator_id: user5.id)
playlist5.cover_url.attach({io: EzDownload.open("https://s3.amazonaws.com/ghiblify-resources/Other/black_playlist_default.png"), filename: "black_playlist.jpg"})
playlist6 = Playlist.create!(name: "Best of a/A", creator_id: user3.id)
playlist6.cover_url.attach({io: EzDownload.open('https://s3.amazonaws.com/ghiblify-resources/Other/grey_playlist_default.jpg'), filename: "grey_playlist.jpg"})




##playlist songs REAL
playlist_song8 = PlaylistSong.create!(song: song1, playlist: playlist1)
playlist_song9 = PlaylistSong.create!(song: song33, playlist: playlist1)
playlist_song10 = PlaylistSong.create!(song: song43, playlist: playlist1)
playlist_song11 = PlaylistSong.create!(song: song2, playlist: playlist1)

playlist_song12 = PlaylistSong.create!(song: song3, playlist: playlist2)
playlist_song13 = PlaylistSong.create!(song: song27, playlist: playlist2)
playlist_song14 = PlaylistSong.create!(song: song29, playlist: playlist2)
playlist_song15 = PlaylistSong.create!(song: song37, playlist: playlist2)
playlist_song16 = PlaylistSong.create!(song: song23, playlist: playlist2)

playlist_song17 = PlaylistSong.create!(song: song15, playlist: playlist3)
playlist_song18 = PlaylistSong.create!(song: song21, playlist: playlist3)
playlist_song19 = PlaylistSong.create!(song: song12, playlist: playlist3)

playlist_song1 = PlaylistSong.create!(song: song1, playlist: playlist4)
playlist_song2 = PlaylistSong.create!(song: song12, playlist: playlist4)
playlist_song3 = PlaylistSong.create!(song: song13, playlist: playlist4)
playlist_song4 = PlaylistSong.create!(song: song24, playlist: playlist4)
playlist_song5 = PlaylistSong.create!(song: song25, playlist: playlist4)
playlist_song6 = PlaylistSong.create!(song: song36, playlist: playlist4)
playlist_song7 = PlaylistSong.create!(song: song33, playlist: playlist4)

playlist_song20 = PlaylistSong.create!(song: song57, playlist: playlist5)
playlist_song21 = PlaylistSong.create!(song: song2, playlist: playlist5)
playlist_song22 = PlaylistSong.create!(song: song50, playlist: playlist5)
playlist_song23 = PlaylistSong.create!(song: song4, playlist: playlist5)

playlist_song24 = PlaylistSong.create!(song: song57, playlist: playlist1)
playlist_song25 = PlaylistSong.create!(song: song46, playlist: playlist2)
playlist_song26 = PlaylistSong.create!(song: song49, playlist: playlist3)
playlist_song27 = PlaylistSong.create!(song: song16, playlist: playlist5)
playlist_song28 = PlaylistSong.create!(song: song9, playlist: playlist4)
playlist_song29 = PlaylistSong.create!(song: song39, playlist: playlist5)

playlist_song30 = PlaylistSong.create!(song: song52, playlist: playlist6)
playlist_song31 = PlaylistSong.create!(song: song7, playlist: playlist6)
playlist_song32 = PlaylistSong.create!(song: song37, playlist: playlist6)





# album1 = Album.create!(title: "", year: , genre: "", artist: )
# album1.cover_url.attach({io: EzDownload.open(''), filename: ""})

# artist1 = Artist.create!(name: "")
# artist1.photo_url.attach({io: EzDownload.open(''), filename: ""})

# song1 = Song.create!(title: "", duration: , artist: artist1, album: album1)
# song1.song_url.attach({io: EzDownload.open(''), filename: ".mp3"})