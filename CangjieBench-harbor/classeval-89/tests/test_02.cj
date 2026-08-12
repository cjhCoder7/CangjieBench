import std.collection.ArrayList
import std.collection.HashMap
import std.random.Random
import std.convert.Parsable

func test_evaluate_expression_1() {
    let game = TwentyFourPointGame()
    let result = game.evaluate_expression("4+3+6+6")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_evaluate_expression_2() {
    let game = TwentyFourPointGame()
    let result = game.evaluate_expression("4*3+6+6")
    if (result != true) {
        throw Exception("Test failed!")
    }
}

func test_evaluate_expression_3() {
    let game = TwentyFourPointGame()
    let result = game.evaluate_expression("1+1+1+1")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_evaluate_expression_4() {
    let game = TwentyFourPointGame()
    let result = game.evaluate_expression("1+")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

func test_evaluate_expression_5() {
    let game = TwentyFourPointGame()
    let result = game.evaluate_expression("abc")
    if (result != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_evaluate_expression_1()
    test_evaluate_expression_2()
    test_evaluate_expression_3()
    test_evaluate_expression_4()
    test_evaluate_expression_5()
}
