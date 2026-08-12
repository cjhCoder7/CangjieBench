import std.collection.HashMap
import std.collection.ArrayList
import std.unicode.UnicodeStringExtension

func test_display_1() {
    let context = AutomaticGuitarSimulator("C53231323 Em43231323")
    let play_list = context.interpret()
    let str = context.display(play_list[0]["Chord"], play_list[0]["Tune"])
    if (str != "Normal Guitar Playing -- Chord: C, Play Tune: 53231323") {
        throw Exception("Test failed!")
    }
}

func test_display_2() {
    let context = AutomaticGuitarSimulator("C53231323 Em43231323")
    let play_list = context.interpret()
    let str = context.display(play_list[1]["Chord"], play_list[1]["Tune"])
    if (str != "Normal Guitar Playing -- Chord: Em, Play Tune: 43231323") {
        throw Exception("Test failed!")
    }
}

func test_display_3() {
    let context = AutomaticGuitarSimulator("F43231323 G63231323")
    let play_list = context.interpret()
    let str = context.display(play_list[0]["Chord"], play_list[0]["Tune"])
    if (str != "Normal Guitar Playing -- Chord: F, Play Tune: 43231323") {
        throw Exception("Test failed!")
    }
}

func test_display_4() {
    let context = AutomaticGuitarSimulator("F43231323 G63231323")
    let play_list = context.interpret()
    let str = context.display(play_list[1]["Chord"], play_list[1]["Tune"])
    if (str != "Normal Guitar Playing -- Chord: G, Play Tune: 63231323") {
        throw Exception("Test failed!")
    }
}

func test_display_5() {
    let context = AutomaticGuitarSimulator("")
    let str = context.display("", "")
    if (str != "Normal Guitar Playing -- Chord: , Play Tune: ") {
        throw Exception("Test failed!")
    }
}

main() {
    test_display_1()
    test_display_2()
    test_display_3()
    test_display_4()
    test_display_5()
}
