import std.collection.ArrayList

func bf(planet1: String, planet2: String): ArrayList<String> {
    /*
    There are eight planets in our solar system: the closerst to the Sun 
    is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
    Uranus, Neptune.
    Write a function that takes two planet names as strings planet1 and planet2. 
    The function should return a tuple containing all planets whose orbits are 
    located between the orbit of planet1 and the orbit of planet2, sorted by 
    the proximity to the sun. 
    The function should return an empty tuple if planet1 or planet2
    are not correct planet names. 
    Examples
    bf("Jupiter", "Neptune") ==> ["Saturn", "Uranus"]
    bf("Earth", "Mercury") ==> ["Venus"]
    bf("Mercury", "Uranus") ==> ["Venus", "Earth", "Mars", "Jupiter", "Saturn"]
    */
    let planet_names = ArrayList<String>(["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"])
    if (!planet_names.contains(planet1) || !planet_names.contains(planet2) || planet1 == planet2) {
        return ArrayList<String>()
    }
    var planet1_index = -1
    var planet2_index = -1
    for (i in 0..planet_names.size) {
        if (planet_names[i] == planet1) {
            planet1_index = i
        }
        if (planet_names[i] == planet2) {
            planet2_index = i
        }
    }
    if (planet1_index < planet2_index) {
        return planet_names[planet1_index+1..planet2_index]
    } else {
        return planet_names[planet2_index+1..planet1_index]
    }
}
