func test_AutomaticGuitarSimulator() {
    var context = AutomaticGuitarSimulator("C53231323")
    var play_list = context.interpret()
    var expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([("Chord", "C"), ("Tune", "53231323")]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }

    context = AutomaticGuitarSimulator("C53231323 Em43231323")
    play_list = context.interpret()
    var str = context.display(play_list[0]["Chord"], play_list[0]["Tune"])
    if (str != "Normal Guitar Playing -- Chord: C, Play Tune: 53231323") {
        throw Exception("Test failed!")
    }
}

main() {
    test_AutomaticGuitarSimulator()
}