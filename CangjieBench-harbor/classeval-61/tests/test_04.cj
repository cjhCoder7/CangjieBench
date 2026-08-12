import std.random.Random
import std.collection.ArrayList

func test_switch_song() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.switch_song() != true) {
        throw Exception("Test failed!")
    }
}

func test_switch_song2() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song2"
    if (musicPlayer.switch_song() != false) {
        throw Exception("Test failed!")
    }
}

func test_switch_song3() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3"])
    musicPlayer.current_song = "song3"
    if (musicPlayer.switch_song() != false) {
        throw Exception("Test failed!")
    }
}

func test_switch_song4() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    if (musicPlayer.switch_song() != false) {
        throw Exception("Test failed!")
    }
}

func test_switch_song5() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>()
    if (musicPlayer.switch_song() != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_switch_song()
    test_switch_song2()
    test_switch_song3()
    test_switch_song4()
    test_switch_song5()
}
