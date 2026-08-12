import std.collection.HashMap
import std.math.abs

func test_main() {
    let weatherSystem = WeatherSystem('New York')
    let weather_list = HashMap<String, Weather>()
    weather_list['New York'] = Weather('sunny', 27.0, 'celsius')
    weather_list['Beijing'] = Weather('cloudy', 23.0, 'celsius')
    if ((weatherSystem.query(weather_list) ?? (Float64.Min, "")) != (27.0, 'sunny')) {
        throw Exception("Test failed!")
    }

    weatherSystem.set_city('Beijing')
    if (weatherSystem.city != 'Beijing') {
        throw Exception("Test failed!")
    }

    weatherSystem.temperature = 27.0
    if (abs(weatherSystem.celsius_to_fahrenheit() - 80.6) > 0.000000000000001) {
        throw Exception("Test failed!")
    }

    weatherSystem.temperature = 80.6
    if (abs(weatherSystem.fahrenheit_to_celsius() - 26.999999999999996) > 0.000000000000001) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}
