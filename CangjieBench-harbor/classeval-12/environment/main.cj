import std.random.Random
import std.collection.ArrayList
import std.convert.Parsable

class BlackjackGame {

    /*
    This is a class representing a game of blackjack, which includes creating a deck, calculating the value of a hand, and determine the winner based on the hand values of the player and dealer.
    */

    let deck: ArrayList<String>
    let player_hand: ArrayList<String>
    let dealer_hand: ArrayList<String>

    public init() {
        /*
        Initialize the Blackjack Game with the attribute deck, player_hand and dealer_hand.
        While initializing deck attribute, call the create_deck method to generate.
        The deck stores 52 rondom order poker with the Jokers removed, format is ['AS', '2S', ...].
        player_hand is a ArrayList<String> which stores player's hand cards.
        dealer_hand is is a ArrayList<String> which stores dealer's hand cards.
        */
        this.deck = BlackjackGame.create_deck()
        this.player_hand = ArrayList<String>()
        this.dealer_hand = ArrayList<String>()
    }

    public static func shuffle_arraylist(arr: ArrayList<String>): ArrayList<String> {
        /*
        Shuffles the input ArrayList of strings using the Fisher-Yates (Knuth) shuffle algorithm.
        This algorithm produces a uniformly random permutation by swapping each element 
        with a randomly selected element that comes before it (including itself) in the list,
        ensuring each element has an equal probability of being in any position.
        
        :param arr: The ArrayList of strings to be shuffled
        :return: The shuffled ArrayList of strings (same object as input, shuffled in-place)
        */
        let rnd = Random()
        for (i in (arr.size - 1)..0:-1) {
            let j = rnd.nextInt64(i + 2)
            //  swap arr[i] and arr[j]
            let temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
        }
        return arr
    }

    public static func create_deck(): ArrayList<String> {
        /*
        Create a deck of 52 cards, which stores 52 rondom order poker with the Jokers removed.
        :return: a list of 52 rondom order poker with the Jokers removed, format is ['AS', '2S', ...].()
        >>> BlackjackGame.create_deck()
        ['QD', '9D', 'JC', 'QH', '2S', 'JH', '7D', '6H', '9S', '5C', '7H', 'QS', '5H',
        '6C', '7C', '3D', '10C', 'AD', '4C', '5D', 'AH', '2D', 'QC', 'KH', '9C', '9H',
        '4H', 'JS', '6S', '8H', '8C', '4S', '3H', '10H', '7S', '6D', '3C', 'KC', '3S',
        '2H', '10D', 'KS', '4D', 'AC', '10S', '2C', 'KD', '5S', 'JD', '8S', 'AS', '8D']
        */

    }

    public func calculate_hand_value(hand: ArrayList<String>): Int64 {
        /*
        Calculate the value of the poker cards stored in hand list according to the rules of the Blackjack Game.
        If the card is a digit, its value is added to the total hand value.
        Value of J, Q, or K is 10, while Aces are worth 11.
        If the total hand value exceeds 21 and there are Aces present, one Ace is treated as having a value of 1 instead of 11,
        until the hand value is less than or equal to 21, or all Aces have been counted as value of 1.
        :param hand: ArrayList<String>
        :return: the value of the poker cards stored in hand list, a number.
        >>> black_jack_game = BlackjackGame()
        >>> black_jack_game.calculate_hand_value(ArrayList<String>(['QD', '9D', 'JC', 'QH', 'AS']))
        40
        */

    }

    public func check_winner(player_hand: ArrayList<String>, dealer_hand: ArrayList<String>): String {
        /*
        Determines the winner of a game by comparing the hand values of the player and dealer.
        rule:
        If both players have hand values that are equal to or less than 21, the winner is the one whose hand value is closer to 21.
        Otherwise, the winner is the one with the lower hand value.
        :param player_hand: ArrayList<String>
        :param dealer_hand: ArrayList<String>
        :return: the result of the game, only two certain String: 'Dealer wins' or 'Player wins'
        >>> black_jack_game = BlackjackGame()
        >>> black_jack_game.check_winner(ArrayList<String>(['QD', '9D', 'JC', 'QH', 'AS']), ArrayList<String>(['QD', '9D', 'JC', 'QH', '2S']))
        'Player wins'
        */

    }
}
