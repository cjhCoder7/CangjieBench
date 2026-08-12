import std.collection.ArrayList
import std.collection.HashMap
import std.time.DateTime
import std.math.abs

func test_available_movies_1() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    system.add_movie("Spiderman", 59.9, "2023/01/01 20:00", "2023/01/01 22:30", 4)

    let result = system.available_movies("2023/01/01 16:00", "2023/01/01 23:00")
    let expected = ArrayList<String>(["Batman", "Spiderman"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_available_movies_2() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    system.add_movie("Spiderman", 59.9, "2023/01/01 20:00", "2023/01/01 22:30", 4)
    
    let result = system.available_movies("2023/01/01 23:00", "2023/01/01 23:59")
    let expected = ArrayList<String>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_available_movies_3() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    system.add_movie("Spiderman", 59.9, "2023/01/01 20:00", "2023/01/01 22:30", 4)
    
    let result = system.available_movies("2023/01/01 17:00", "2023/01/01 20:00")
    let expected = ArrayList<String>(["Batman"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_available_movies_4() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    system.add_movie("Spiderman", 59.9, "2023/01/01 20:00", "2023/01/01 22:30", 4)
    
    let result = system.available_movies("2023/01/01 10:00", "2023/01/01 23:00")
    let expected = ArrayList<String>(["Batman", "Spiderman"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_available_movies_5() {
    let system = MovieBookingSystem()
    system.add_movie("Batman", 49.9, "2023/01/01 17:05", "2023/01/01 19:25", 3)
    system.add_movie("Spiderman", 59.9, "2023/01/01 20:00", "2023/01/01 22:30", 4)

    let result = system.available_movies("2023/01/01 20:00", "2023/01/01 23:00")
    let expected = ArrayList<String>(["Spiderman"])
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_available_movies_1()
    test_available_movies_2()
    test_available_movies_3()
    test_available_movies_4()
    test_available_movies_5()
}
