import std.random.Random
import std.collection.ArrayList
import std.convert.Parsable

func test_create_deck_1() {
    let blackjackGame = BlackjackGame()
    let deck = blackjackGame.deck
    if (deck.size != 52) {
        throw Exception("Test failed!")
    }
}

func test_create_deck_2() {
    let blackjackGame = BlackjackGame()
    let deck = blackjackGame.deck
    let suits = ['S', 'C', 'D', 'H']
    let ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
    for (suit in suits) {
        for (rank in ranks) {
            if (!deck.contains(rank + suit)) {
                throw Exception("Test failed!")
            }
        }
    }
}

func test_create_deck_3() {
    let blackjackGame = BlackjackGame()
    let deck = blackjackGame.deck
    let suits = ['S', 'C', 'D', 'H']
    let ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9']
    for (suit in suits) {
        for (rank in ranks) {
            if (!deck.contains(rank + suit)) {
                throw Exception("Test failed!")
            }
        }
    }
}

func test_create_deck_4() {
    let blackjackGame = BlackjackGame()
    let deck = blackjackGame.deck
    let suits = ['S', 'C', 'D', 'H']
    let ranks = ['10', 'J', 'Q', 'K']
    for (suit in suits) {
        for (rank in ranks) {
            if (!deck.contains(rank + suit)) {
                throw Exception("Test failed!")
            }
        }
    }
}

func test_create_deck_5() {
    let blackjackGame = BlackjackGame()
    let deck = blackjackGame.deck
    let suits = ['S', 'C', 'D', 'H']
    let ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9']
    for (suit in suits) {
        for (rank in ranks) {
            if (!deck.contains(rank + suit)) {
                throw Exception("Test failed!")
            }
        }
    }
}

main() {
    test_create_deck_1()
    test_create_deck_2()
    test_create_deck_3()
    test_create_deck_4()
    test_create_deck_5()
}
