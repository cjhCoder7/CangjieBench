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

    /*
    This is a class representing a weather system that provides functionality to query weather information for a specific city and convert temperature units between Celsius and Fahrenheit.
    */

    var temperature: Float64
    var weather: String
    var city: String
    var weather_list: HashMap<String, Weather>

    public init(city: String) {
        /*
        Initialize the weather system with a city name.
        */
        this.temperature = Float64.NaN
        this.weather = ""
        this.city = city
        this.weather_list = HashMap<String, Weather>()
    }

    public func query(weather_list: HashMap<String, Weather>, tmp_units!: String = 'celsius'): Option<(Float64, String)> {
        /*
        Query the weather system for the weather and temperature of the city,and convert the temperature units based on the input parameter.
        :param weather_list: a dictionary of weather information for different cities,HashMap<String, Weather>.
        :param tmp_units: the temperature units to convert to, String.
        :return: the temperature and weather of the city, Option<Float64, String>.
        >>> weatherSystem = WeatherSystem('New York')
        >>> weather_list = HashMap<String, Weather>()
        >>> weather_list['New York'] = Weather('sunny', 27.0, 'celsius')
        >>> weather_list['Beijing'] = Weather('cloudy', 23.0, 'celsius')
        >>> weatherSystem.query(weather_list)
        (27.0, 'sunny')

        */
        
    }
    
    public func set_city(city: String): Unit {
        /*
        Set the city of the weather system.
        :param city: the city to set, String.
        :return: Unit
        >>> weatherSystem = WeatherSystem('New York')
        >>> weatherSystem.set_city('Beijing')
        >>> weatherSystem.city
        'Beijing'

        */
        
    }

    public func celsius_to_fahrenheit(): Float64 {
        /*
        Convert the temperature from Celsius to Fahrenheit.
        :return: the temperature in Fahrenheit, Float64.
        >>> weatherSystem = WeatherSystem('New York')
        >>> weatherSystem.temperature = 27.0
        >>> weatherSystem.celsius_to_fahrenheit()
        80.6

        */
        
    }

    public func fahrenheit_to_celsius(): Float64 {
        /*
        Convert the temperature from Fahrenheit to Celsius.
        :return: the temperature in Celsius, Float64.
        >>> weatherSystem = WeatherSystem('New York')
        >>> weatherSystem.temperature = 80.6
        >>> weatherSystem.fahrenheit_to_celsius()
        26.999999999999996

        */
        
    }
}

