import std.random.Random
import std.collection.ArrayList

func test_set_volume() {
    let musicPlayer = MusicPlayer()
    if (musicPlayer.set_volume(50) != true) {
        throw Exception("Test failed!")
    }
    if (musicPlayer.volume != 50) {
        throw Exception("Test failed!")
    }
}

func test_set_volume2() {
    let musicPlayer = MusicPlayer()
    if (musicPlayer.set_volume(100) != true) {
        throw Exception("Test failed!")
    }
    if (musicPlayer.volume != 100) {
        throw Exception("Test failed!")
    }
}

func test_set_volume3() {
    let musicPlayer = MusicPlayer()
    if (musicPlayer.set_volume(0) != true) {
        throw Exception("Test failed!")
    }
    if (musicPlayer.volume != 0) {
        throw Exception("Test failed!")
    }
}

func test_set_volume4() {
    let musicPlayer = MusicPlayer()
    if (musicPlayer.set_volume(101) != false) {
        throw Exception("Test failed!")
    }
    if (musicPlayer.volume != 50) {
        throw Exception("Test failed!")
    }
}

func test_set_volume5() {
    let musicPlayer = MusicPlayer()
    if (musicPlayer.set_volume(-1) != false) {
        throw Exception("Test failed!")
    }
    if (musicPlayer.volume != 50) {
        throw Exception("Test failed!")
    }
}

main() {
    test_set_volume()
    test_set_volume2()
    test_set_volume3()
    test_set_volume4()
    test_set_volume5()
}
