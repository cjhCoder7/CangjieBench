func test_celsius_to_fahrenheit() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 27.0
    if (abs(weatherSystem.celsius_to_fahrenheit() - 80.6) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_celsius_to_fahrenheit_2() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 23.0
    if (abs(weatherSystem.celsius_to_fahrenheit() - 73.4) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_celsius_to_fahrenheit_3() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 23.0
    if (abs(weatherSystem.celsius_to_fahrenheit() - 80.6) < 0.001) {
        throw Exception("Test failed!")
    }
}

func test_celsius_to_fahrenheit_4() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 27.0
    if (abs(weatherSystem.celsius_to_fahrenheit() - 73.4) < 0.001) {
        throw Exception("Test failed!")
    }
}

func test_celsius_to_fahrenheit_5() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 27.0
    if (abs(weatherSystem.celsius_to_fahrenheit() - 23.0) < 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_celsius_to_fahrenheit()
    test_celsius_to_fahrenheit_2()
    test_celsius_to_fahrenheit_3()
    test_celsius_to_fahrenheit_4()
    test_celsius_to_fahrenheit_5()
}