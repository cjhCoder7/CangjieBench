import std.math.abs

class Thermostat {

    /*
    The class manages temperature control, including setting and retrieving the target temperature, adjusting the mode, and simulating temperature operation.
    */
    
    var current_temperature: Float64
    var target_temperature: Float64
    var mode: String

    public init(current_temperature: Float64, target_temperature: Float64, mode: String) {
        /*
        initialize instances of the Thermostat class, including the current temperature, target temperature, and operating mode.
        :param current_temperature: Float64
        :param target_temperature: Float64
        :param mode: String, the work mode
        */
        this.current_temperature = current_temperature
        this.target_temperature = target_temperature
        this.mode = mode
    }

    public func get_target_temperature(): Float64 {
        /*
        Get the target temperature of an instance of the Thermostat class.
        :return this.target_temperature: Float64
        >>> thermostat.get_target_temperature()
        37.5
        */
        
    }

    public func set_target_temperature(temperature: Float64): Unit {
        /*
        Set the target temperature
        :param temperature: Float64, the target temperature
        >>> thermostat.set_target_temperature(37.6)
        >>> thermostat.target_temperature
        37.6
        */
        
    }

    public func get_mode(): String {
        /*
        Get the current work mode
        :return mode: String, working mode. only ['heat', 'cool']
        */
        
    }

    public func set_mode(mode: String): Bool {
        /*
        Get the current work mode
        :param mode: String, working mode. only ['heat', 'cool']
        >>> thermostat.set_mode('cool')
        >>> thermostat.mode
        'cool'
        */
        
    }

    public func auto_set_mode(): Unit {
        /*
        Automatically set the operating mode by comparing with the current temperature and target temperature. If the current temperature is lower than the target temperature, the operating mode is set to 'heat', otherwise it is set to 'cool'.
        >>> thermostat = Thermostat(20.4, 37.5, 'cool')
        >>> thermostat.auto_set_mode()
        >>> thermostat.mode
        'heat'
        */

    }

    public func auto_check_conflict(): Bool {
        /*
        Check if there is a conflict between the operating mode and the relationship between the current temperature and the target temperature.
        If there is a conflict, the operating mode will be adjusted automatically.
        :return: true if mode isn't conflict with the relationship between the current temperature and the target temperature, or false otherwise.
        >>> thermostat = Thermostat(20.4, 37.5, 'cool')
        >>> thermostat.auto_check_conflict()
        false
        >>> thermostat.mode
        'heat'
        */
        
    }

    public func simulate_operation(): Int64 {
        /*
        simulate the operation of Thermostat. It will automatically start the auto_set_mode method to set the operating mode,
        and then automatically adjust the current temperature according to the operating mode until the target temperature is reached.
        :return time: Int64, the time it took to complete the simulation.
        >>> thermostat = Thermostat(20.4, 37.5, 'cool')
        >>> thermostat.simulate_operation()
        18
        */
        
    }
}

