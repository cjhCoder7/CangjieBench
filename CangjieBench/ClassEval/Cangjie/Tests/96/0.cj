func test_query() {
    let weatherSystem = WeatherSystem("New York")
    let weather_list = HashMap<String, Weather>()
    weather_list["New York"] = Weather("sunny", 27.0, "celsius")
    weather_list["Beijing"] = Weather("cloudy", 23.0, "celsius")
    let result = weatherSystem.query(weather_list)
    if ((result ?? (Float64.NaN, "")) != (27.0, "sunny")) {
        throw Exception("Test failed!")
    }
}

func test_query_2() {
    let weatherSystem = WeatherSystem("Shanghai")
    let weather_list = HashMap<String, Weather>()
    weather_list["New York"] = Weather("sunny", 27.0, "celsius")
    weather_list["Beijing"] = Weather("cloudy", 23.0, "celsius")
    let result = weatherSystem.query(weather_list)
    if ((result ?? (Float64.Min, "")) != (Float64.Min, "")) {
        throw Exception("Test failed!")
    }
}

func test_query_3() {
    let weatherSystem = WeatherSystem("Beijing")
    let weather_list = HashMap<String, Weather>()
    weather_list["New York"] = Weather("sunny", 27.0, "celsius")
    weather_list["Beijing"] = Weather("cloudy", 23.0, "celsius")
    let result = weatherSystem.query(weather_list, tmp_units: "fahrenheit")
    let result_ = result ?? (Float64.NaN, "")
    if (abs(result_[0] - 73.4) > 0.001 || result_[1] != "cloudy") {
        throw Exception("Test failed!")
    }
}

func test_query_4() {
    let weatherSystem = WeatherSystem("Beijing")
    let weather_list = HashMap<String, Weather>()
    weather_list["New York"] = Weather("sunny", 73.47, "fahrenheit")
    weather_list["Beijing"] = Weather("cloudy", 73.4, "fahrenheit")
    let result = weatherSystem.query(weather_list, tmp_units: "celsius")
    let result_ = result ?? (Float64.NaN, "")
    if (abs(result_[0] - 23.0) > 0.001 || result_[1] != "cloudy") {
        throw Exception("Test failed!")
    }
}

func test_query_5() {
    let weatherSystem = WeatherSystem("New York")
    let weather_list = HashMap<String, Weather>()
    weather_list["New York"] = Weather("sunny", 80.6, "fahrenheit")
    weather_list["Beijing"] = Weather("cloudy", 23.0, "celsius")
    let result = weatherSystem.query(weather_list, tmp_units: "celsius")
    let result_ = result ?? (Float64.NaN, "")
    if (abs(result_[0] - 27.0) > 0.001 || result_[1] != "sunny") {
        throw Exception("Test failed!")
    }
}

func test_query_6() {
    let weatherSystem = WeatherSystem("New York")
    let weather_list = HashMap<String, Weather>()
    weather_list["New York"] = Weather("sunny", 27.0, "celsius")
    weather_list["Beijing"] = Weather("cloudy", 23.0, "celsius")
    let result = weatherSystem.query(weather_list, tmp_units: "fahrenheit")
    let result_ = result ?? (Float64.NaN, "")
    if (abs(result_[0] - 80.6) > 0.001 || result_[1] != "sunny") {
        throw Exception("Test failed!")
    }
}

main() {
    test_query()
    test_query_2()
    test_query_3()
    test_query_4()
    test_query_5()
    test_query_6()
}