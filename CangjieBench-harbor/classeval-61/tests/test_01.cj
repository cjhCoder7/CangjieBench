import std.random.Random
import std.collection.ArrayList

func test_remove_song() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2"])
    musicPlayer.remove_song("song1")
    let expected = ArrayList<String>(["song2"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_song2() {
    let musicPlayer = MusicPlayer()
    musicPlayer.current_song = "song1"
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3"])
    musicPlayer.remove_song("song1")
    let expected = ArrayList<String>(["song2", "song3"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_song3() {
    let musicPlayer = MusicPlayer()
    musicPlayer.current_song = "song1"
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3", "song4"])
    musicPlayer.remove_song("song1")
    let expected = ArrayList<String>(["song2", "song3", "song4"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_song4() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3", "song4", "song5"])
    musicPlayer.remove_song("song1")
    let expected = ArrayList<String>(["song2", "song3", "song4", "song5"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_song5() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>(["song1", "song2", "song3", "song4", "song5"])
    musicPlayer.remove_song("song1")
    musicPlayer.remove_song("song2")
    let expected = ArrayList<String>(["song3", "song4", "song5"])
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_song6() {
    let musicPlayer = MusicPlayer()
    musicPlayer.playlist = ArrayList<String>()
    musicPlayer.remove_song("song1")
    let expected = ArrayList<String>()
    if (musicPlayer.playlist != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_song()
    test_remove_song2()
    test_remove_song3()
    test_remove_song4()
    test_remove_song5()
    test_remove_song6()
}
