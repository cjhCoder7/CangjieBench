func test_set_city() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.set_city("Beijing")
    if (weatherSystem.city != "Beijing") {
        throw Exception("Test failed!")
    }
}

func test_set_city_2() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.set_city("Shanghai")
    if (weatherSystem.city != "Shanghai") {
        throw Exception("Test failed!")
    }
}

func test_set_city_3() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.set_city("Shanghai")
    if (weatherSystem.city == "Beijing") {
        throw Exception("Test failed!")
    }
}

func test_set_city_4() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.set_city("Shanghai")
    if (weatherSystem.city == "New York") {
        throw Exception("Test failed!")
    }
}

func test_set_city_5() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.set_city("Shanghai")
    if (weatherSystem.city == "Tokyo") {
        throw Exception("Test failed!")
    }
}

main() {
    test_set_city()
    test_set_city_2()
    test_set_city_3()
    test_set_city_4()
    test_set_city_5()
}