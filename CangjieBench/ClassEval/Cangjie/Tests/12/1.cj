func test_calculate_hand_value_1() {
    let blackjackGame = BlackjackGame()
    let hand = ArrayList<String>(["2S", "3S", "4S", "5S"])
    if (blackjackGame.calculate_hand_value(hand) != 14) {
        throw Exception("Test failed!")
    }
}

func test_calculate_hand_value_2() {
    let blackjackGame = BlackjackGame()
    let hand = ArrayList<String>(["2S", "3S", "JS", "QS"])
    if (blackjackGame.calculate_hand_value(hand) != 25) {
        throw Exception("Test failed!")
    }
}

func test_calculate_hand_value_3() {
    let blackjackGame = BlackjackGame()
    let hand = ArrayList<String>(["2S", "3S", "4S", "AS"])
    if (blackjackGame.calculate_hand_value(hand) != 20) {
        throw Exception("Test failed!")
    }
}

func test_calculate_hand_value_4() {
    let blackjackGame = BlackjackGame()
    let hand = ArrayList<String>(["JS", "QS", "4S", "AS"])
    if (blackjackGame.calculate_hand_value(hand) != 25) {
        throw Exception("Test failed!")
    }
}

func test_calculate_hand_value_5() {
    let blackjackGame = BlackjackGame()
    let hand = ArrayList<String>(["JS", "QS", "AS", "AS", "AS"])
    if (blackjackGame.calculate_hand_value(hand) != 23) {
        throw Exception("Test failed!")
    }
}

func test_calculate_hand_value_6() {
    let blackjackGame = BlackjackGame()
    let hand = ArrayList<String>(["JS", "QS", "BS", "CS"])
    if (blackjackGame.calculate_hand_value(hand) != 20) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_hand_value_1()
    test_calculate_hand_value_2()
    test_calculate_hand_value_3()
    test_calculate_hand_value_4()
    test_calculate_hand_value_5()
    test_calculate_hand_value_6()
}