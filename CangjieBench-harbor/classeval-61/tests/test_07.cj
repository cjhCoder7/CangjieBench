import std.random.Random
import std.collection.ArrayList

func test_shuffle() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    if (musicPlayer.shuffle() != true) {
        throw Exception("Test failed!")
    }
}

func test_shuffle_2() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>()
    musicPlayer.current_song = "song1"
    if (musicPlayer.shuffle() != false) {
        throw Exception("Test failed!")
    }
}

func test_shuffle_3() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song2"
    if (musicPlayer.shuffle() != true) {
        throw Exception("Test failed!")
    }
}

func test_shuffle_4() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song3"
    if (musicPlayer.shuffle() != true) {
        throw Exception("Test failed!")
    }
}

func test_shuffle_5() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.shuffle() != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_shuffle()
    test_shuffle_2()
    test_shuffle_3()
    test_shuffle_4()
    test_shuffle_5()
}
