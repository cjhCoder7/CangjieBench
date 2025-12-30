func test_interpret_1() {
    let context = AutomaticGuitarSimulator("C53231323")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([('Chord', 'C'), ('Tune', '53231323')]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_2() {
    let context = AutomaticGuitarSimulator("F43231323")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([('Chord', 'F'), ('Tune', '43231323')]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_3() {
    let context = AutomaticGuitarSimulator("Em43231323")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([('Chord', 'Em'), ('Tune', '43231323')]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_4() {
    let context = AutomaticGuitarSimulator("G63231323")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([('Chord', 'G'), ('Tune', '63231323')]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_5() {
    let context = AutomaticGuitarSimulator("F43231323 G63231323")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([('Chord', 'F'), ('Tune', '43231323')]))
    expected.add(HashMap<String, String>([('Chord', 'G'), ('Tune', '63231323')]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_6() {
    let context = AutomaticGuitarSimulator(" ")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_7() {
    let context = AutomaticGuitarSimulator("ABC43231323 DEF63231323")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([('Chord', 'ABC'), ('Tune', '43231323')]))
    expected.add(HashMap<String, String>([('Chord', 'DEF'), ('Tune', '63231323')]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_8() {
    let context = AutomaticGuitarSimulator("C53231323")
    let play_list = context.interpret(display: true)
    let expected = ArrayList<HashMap<String, String>>()
    expected.add(HashMap<String, String>([('Chord', 'C'), ('Tune', '53231323')]))
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

func test_interpret_9() {
    let context = AutomaticGuitarSimulator("")
    let play_list = context.interpret()
    let expected = ArrayList<HashMap<String, String>>()
    if (play_list != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_interpret_1()
    test_interpret_2()
    test_interpret_3()
    test_interpret_4()
    test_interpret_5()
    test_interpret_6()
    test_interpret_7()
    test_interpret_8()
    test_interpret_9()
}