import std.collection.ArrayList
import std.collection.HashMap
import std.random.Random
import std.convert.Parsable

func test_get_my_cards_1() {
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
}

func test_get_my_cards_2() {
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
}

func test_get_my_cards_3() {
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
}

func test_get_my_cards_4() {
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
}

func test_get_my_cards_5() {
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
}

main() {
    test_get_my_cards_1()
    test_get_my_cards_2()
    test_get_my_cards_3()
    test_get_my_cards_4()
    test_get_my_cards_5()
}
