import std.random.Random
import std.collection.ArrayList

func test_play() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.play() != "song1") {
        throw Exception("Test failed!")
    }
}

func test_play_2() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>()
    musicPlayer.current_song = "song2"
    if (musicPlayer.play() != None) {
        throw Exception("Test failed!")
    }
}

func test_play_3() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    if (musicPlayer.play() != "False") {
        throw Exception("Test failed!")
    }
}

func test_play_4() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song3"
    if (musicPlayer.play() != "song1") {
        throw Exception("Test failed!")
    }
}

func test_play_5() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.play() != "song1") {
        throw Exception("Test failed!")
    }
}

main() {
    test_play()
    test_play_2()
    test_play_3()
    test_play_4()
    test_play_5()
}
