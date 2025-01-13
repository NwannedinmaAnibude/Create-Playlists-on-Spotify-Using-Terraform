resource "spotify_playlist" "Naija" {
  name = "Naija"
  tracks = ["3bmGw3ziK3NcjAweMG7zMn"]
}

data "spotify_search_track" "davido" {
  artist = "Davido"
  
}

resource "spotify_playlist" "OBO" {
  name = "OBO"
  tracks = [data.spotify_search_track.davido.tracks[0].id,
  data.spotify_search_track.davido.tracks[1].id,
  data.spotify_search_track.davido.tracks[2].id]
}