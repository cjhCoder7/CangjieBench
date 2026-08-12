#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.random.Random
import std.collection.ArrayList
import std.convert.Parsable

class BlackjackGame {

    let deck: ArrayList<String>
    let player_hand: ArrayList<String>
    let dealer_hand: ArrayList<String>

    public init() {
        this.deck = BlackjackGame.create_deck()
        this.player_hand = ArrayList<String>()
        this.dealer_hand = ArrayList<String>()
    }

    public static func shuffle_arraylist(arr: ArrayList<String>): ArrayList<String> {
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
        var deck = ArrayList<String>()
        let suits = ArrayList<String>(['S', 'C', 'D', 'H'])
        let ranks = ArrayList<String>(['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'])
        for (suit in suits) {
            for (rank in ranks) {
                deck.add(rank + suit)
            }
        }
        deck = BlackjackGame.shuffle_arraylist(deck)
        return deck
    }

    public func calculate_hand_value(hand: ArrayList<String>): Int64 {
        var value = 0
        var num_aces = 0
        for (card in hand) {
            let rank = card[..card.size - 1]
            let rank_int = Int64.tryParse(rank)
            if (rank_int != None) {
                value += rank_int ?? 0
            } else if (['J', 'Q', 'K'].contains(rank)) {
                value += 10
            } else if (rank == "A") {
                value += 11
                num_aces++
            }
        }
        while (value > 21 && num_aces > 0) {
            value -= 10
            num_aces--
        }
        return value
    }

    public func check_winner(player_hand: ArrayList<String>, dealer_hand: ArrayList<String>): String {
        let player_value = this.calculate_hand_value(player_hand)
        let dealer_value = this.calculate_hand_value(dealer_hand)
        if (player_value > 21 && dealer_value > 21) {
            if (player_value <= dealer_value) {
                return 'Player wins'
            } else {
                return 'Dealer wins'
            }
        } else if (player_value > 21) {
            return 'Dealer wins'
        } else if (dealer_value > 21) {
            return 'Player wins'
        } else {
            if (player_value <= dealer_value) {
                return 'Dealer wins'
            } else {
                return 'Player wins'
            }
        }
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
