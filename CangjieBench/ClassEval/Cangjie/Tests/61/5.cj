func test_previous_song() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3"])
    musicPlayer.current_song = "song2"
    if (musicPlayer.previous_song() != true) {
        throw Exception("Test failed!")
    }
}

func test_previous_song2() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3"])
    musicPlayer.current_song = "song1"
    if (musicPlayer.previous_song() != false) {
        throw Exception("Test failed!")
    }
}

func test_previous_song3() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3"])
    musicPlayer.current_song = "song3"
    if (musicPlayer.previous_song() != true) {
        throw Exception("Test failed!")
    }
}

func test_previous_song4() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3"])
    if (musicPlayer.previous_song() != false) {
        throw Exception("Test failed!")
    }
}

func test_previous_song5() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>()
    if (musicPlayer.previous_song() != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_previous_song()
    test_previous_song2()
    test_previous_song3()
    test_previous_song4()
    test_previous_song5()
}