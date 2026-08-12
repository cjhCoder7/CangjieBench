import std.random.Random
import std.collection.ArrayList
import std.convert.Parsable

func test_main_1() {
    let blackjackGame = BlackjackGame()
    let deck = blackjackGame.deck
    let suits = ArrayList<String>(["S", "C", "D", "H"])
    let ranks = ArrayList<String>(["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"])
    for (suit in suits) {
        for (rank in ranks) {
            if (!deck.contains(rank + suit)) {
                throw Exception("Test failed!")
            }
        }
    }
    let player_hand = ArrayList<String>(["2S", "JS", "QS"])
    let dealer_hand = ArrayList<String>(["7S", "9S"])
    if (blackjackGame.check_winner(player_hand, dealer_hand) != "Dealer wins") {
        throw Exception("Test failed!")
    }
}

main() {
    test_main_1()
}
