func test_add_song() {
    let musicPlayer = MusicPlayer()
    musicPlayer.add_song("song1")
    let expected = ArrayList<String>(["song1"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_song2() {
    let musicPlayer = MusicPlayer()
    musicPlayer.add_song("song1")
    musicPlayer.add_song("song2")
    let expected = ArrayList<String>(["song1", "song2"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_song3() {
    let musicPlayer = MusicPlayer()
    musicPlayer.add_song("song1")
    musicPlayer.add_song("song2")
    musicPlayer.add_song("song3")
    let expected = ArrayList<String>(["song1", "song2", "song3"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_song4() {
    let musicPlayer = MusicPlayer()
    musicPlayer.add_song("song1")
    musicPlayer.add_song("song2")
    musicPlayer.add_song("song3")
    musicPlayer.add_song("song4")
    let expected = ArrayList<String>(["song1", "song2", "song3", "song4"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_add_song5() {
    let musicPlayer = MusicPlayer()
    musicPlayer.add_song("song1")
    musicPlayer.add_song("song2")
    musicPlayer.add_song("song3")
    musicPlayer.add_song("song4")
    musicPlayer.add_song("song5")
    let expected = ArrayList<String>(["song1", "song2", "song3", "song4", "song5"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_song()
    test_add_song2()
    test_add_song3()
    test_add_song4()
    test_add_song5()
}