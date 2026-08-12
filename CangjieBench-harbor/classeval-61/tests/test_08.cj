import std.random.Random
import std.collection.ArrayList

func test_main() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.play() != "song1") {
        throw Exception("Test failed!")
    }
    if (musicPlayer.stop() != true) {
        throw Exception("Test failed!")
    }
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.switch_song() != true) {
        throw Exception("Test failed!")
    }
    if (musicPlayer.previous_song() != true) {
        throw Exception("Test failed!")
    }
    musicPlayer.set_volume(50)
    if (musicPlayer.volume != 50) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
