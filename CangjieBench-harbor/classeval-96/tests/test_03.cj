import std.collection.HashMap
import std.math.abs

func test_fahrenheit_to_celsius() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 80.6
    if (abs(weatherSystem.fahrenheit_to_celsius() - 27.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_fahrenheit_to_celsius_2() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 73.4
    if (abs(weatherSystem.fahrenheit_to_celsius() - 23.0) > 0.001) {
        throw Exception("Test failed!")
    }
}

func test_fahrenheit_to_celsius_3() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 80.0
    if (abs(weatherSystem.fahrenheit_to_celsius() - 23.0) < 0.001) {
        throw Exception("Test failed!")
    }
}

func test_fahrenheit_to_celsius_4() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 73.0
    if (abs(weatherSystem.fahrenheit_to_celsius() - 27.0) < 0.001) {
        throw Exception("Test failed!")
    }
}

func test_fahrenheit_to_celsius_5() {
    let weatherSystem = WeatherSystem("New York")
    weatherSystem.temperature = 80.0
    if (abs(weatherSystem.fahrenheit_to_celsius() - 27.0) < 0.001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_fahrenheit_to_celsius()
    test_fahrenheit_to_celsius_2()
    test_fahrenheit_to_celsius_3()
    test_fahrenheit_to_celsius_4()
    test_fahrenheit_to_celsius_5()
}
