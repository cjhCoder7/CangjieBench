func test_stop() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.stop() != true) {
        throw Exception("Test failed!")
    }
}

func test_stop_2() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>()
    musicPlayer.current_song = "song1"
    if (musicPlayer.stop() != true) {
        throw Exception("Test failed!")
    }
}

func test_stop_3() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    if (musicPlayer.stop() != false) {
        throw Exception("Test failed!")
    }
}

func test_stop_4() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.stop() != true) {
        throw Exception("Test failed!")
    }
}

func test_stop_5() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.current_song = "song2"
    if (musicPlayer.stop() != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_stop()
    test_stop_2()
    test_stop_3()
    test_stop_4()
    test_stop_5()
}