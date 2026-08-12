import std.collection.ArrayList
import std.collection.HashMap
import std.random.Random
import std.convert.Parsable

func test_answer_1() {
    let game = TwentyFourPointGame()
    let cards = game.answer("pass")
    if (cards != false) {
        throw Exception("Test failed!")
    }
}

func test_answer_2() {
    let game = TwentyFourPointGame()
    let result = game.answer("4*3+6+6")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_answer_3() {
    let game = TwentyFourPointGame()
    let result = game.answer("1+1+1+1")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_answer_4() {
    let game = TwentyFourPointGame()
    let result = game.answer("1+")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_answer_5() {
    let game = TwentyFourPointGame()
    let result = game.answer("abc")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_answer_6() {
    let game = TwentyFourPointGame()
    game.nums = ArrayList<Int64>([1, 1, 1, 1])
    let result = game.answer("1+1+1+2")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_answer_7() {
    let game = TwentyFourPointGame()
    game.nums = ArrayList<Int64>([1, 1, 1, 1])
    let result = game.answer("1+1+1+1+1")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_answer_1()
    test_answer_2()
    test_answer_3()
    test_answer_4()
    test_answer_5()
    test_answer_6()
    test_answer_7()
}
