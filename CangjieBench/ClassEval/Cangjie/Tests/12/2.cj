func test_check_winner_1() {
    let blackjackGame = BlackjackGame()
    let player_hand = ArrayList<String>(["2S", "JS", "QS"])
    let dealer_hand = ArrayList<String>(["7S", "9S"])
    if (blackjackGame.check_winner(player_hand, dealer_hand) != "Dealer wins") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_2() {
    let blackjackGame = BlackjackGame()
    let player_hand = ArrayList<String>(["2S", "4S", "5S"])
    let dealer_hand = ArrayList<String>(["2S", "JS", "QS"])
    if (blackjackGame.check_winner(player_hand, dealer_hand) != "Player wins") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_3() {
    let blackjackGame = BlackjackGame()
    let player_hand = ArrayList<String>(["3S", "JS", "QS"])
    let dealer_hand = ArrayList<String>(["2S", "JS", "QS"])
    if (blackjackGame.check_winner(player_hand, dealer_hand) != "Dealer wins") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_4() {
    let blackjackGame = BlackjackGame()
    let player_hand = ArrayList<String>(["2S", "JS", "QS"])
    let dealer_hand = ArrayList<String>(["3S", "JS", "QS"])
    if (blackjackGame.check_winner(player_hand, dealer_hand) != "Player wins") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_5() {
    let blackjackGame = BlackjackGame()
    let player_hand = ArrayList<String>(["2S", "3S", "5S"])
    let dealer_hand = ArrayList<String>(["AS", "JS"])
    if (blackjackGame.check_winner(player_hand, dealer_hand) != "Dealer wins") {
        throw Exception("Test failed!")
    }
}

func test_check_winner_6() {
    let blackjackGame = BlackjackGame()
    let player_hand = ArrayList<String>(["AS", "JS"])
    let dealer_hand = ArrayList<String>(["2S", "3S", "5S"])
    if (blackjackGame.check_winner(player_hand, dealer_hand) != "Player wins") {
        throw Exception("Test failed!")
    }
}

main() {
    test_check_winner_1()
    test_check_winner_2()
    test_check_winner_3()
    test_check_winner_4()
    test_check_winner_5()
    test_check_winner_6()
}