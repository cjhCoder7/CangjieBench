import std.collection.ArrayList
import std.collection.HashMap
import std.random.Random
import std.convert.Parsable

func test_TwentyFourPointGame() {
    let game = TwentyFourPointGame()
    let cards = game.get_my_cards()
    if (cards.size != 4) {
        throw Exception("Test failed!")
    }
    for (card in cards) {
        if (![1, 2, 3, 4, 5, 6, 7, 8, 9].contains(card)) {
            throw Exception("Test failed!")
        }
    }
    game.nums = ArrayList<Int64>([4, 3, 6, 6])
    let result = game.answer("4*3+6+6")
    if (result != true) {
        throw Exception("Test failed!")
    }
    let result2 = game.evaluate_expression("4*3+6+6")
    if (result2 != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_TwentyFourPointGame()
}
