#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.HashMap
import std.math.abs

class Weather {

    let weather: String
    let temperature: Float64
    let temperature_units: String

    public init(weather: String, temperature: Float64, temperature_units: String) {
        this.weather = weather
        this.temperature = temperature
        this.temperature_units = temperature_units
    }
}

class WeatherSystem {

    var temperature: Float64
    var weather: String
    var city: String
    var weather_list: HashMap<String, Weather>

    public init(city: String) {
        this.temperature = Float64.NaN
        this.weather = ""
        this.city = city
        this.weather_list = HashMap<String, Weather>()
    }

    public func query(weather_list: HashMap<String, Weather>, tmp_units!: String = 'celsius'): Option<(Float64, String)> {
        this.weather_list = weather_list
        if (!weather_list.contains(this.city)) {
            return None
        } else {
            this.temperature = this.weather_list[this.city].temperature
            this.weather = this.weather_list[this.city].weather
        }
        if (this.weather_list[this.city].temperature_units != tmp_units) {
            if (tmp_units == 'celsius') {
                return (this.fahrenheit_to_celsius(), this.weather)
            } else {
                return (this.celsius_to_fahrenheit(), this.weather)
            }
        } else {
            return (this.temperature, this.weather)
        }
    }
    
    public func set_city(city: String): Unit {
        this.city = city
    }

    public func celsius_to_fahrenheit(): Float64 {
        return (this.temperature * 9.0 / 5.0) + 32.0
    }

    public func fahrenheit_to_celsius(): Float64 {
        return (this.temperature - 32.0) * 5.0 / 9.0
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
