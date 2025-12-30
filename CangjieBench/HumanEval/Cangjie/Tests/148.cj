
main() {
    if (bf("Jupiter", "Neptune") != ArrayList<String>(["Saturn", "Uranus"])) {
        throw Exception("Test Failed!")
    }
    if (bf("Earth", "Mercury") != ArrayList<String>(["Venus"])) {
        throw Exception("Test Failed!")
    }
    if (bf("Mercury", "Uranus") != ArrayList<String>(["Venus", "Earth", "Mars", "Jupiter", "Saturn"])) {
        throw Exception("Test Failed!")
    }
    if (bf("Neptune", "Venus") != ArrayList<String>(["Earth", "Mars", "Jupiter", "Saturn", "Uranus"])) {
        throw Exception("Test Failed!")
    }
    if (bf("Earth", "Earth") != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (bf("Mars", "Earth") != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (bf("Jupiter", "Makemake") != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
}