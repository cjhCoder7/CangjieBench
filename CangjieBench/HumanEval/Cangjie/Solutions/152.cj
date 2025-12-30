import std.collection.ArrayList
import std.math.abs

func compare(game: ArrayList<Int64>, guess: ArrayList<Int64>): ArrayList<Int64> {
    /*
    I think we all remember that feeling when the result of some long-awaited
    event is finally known. The feelings and thoughts you have at that moment are
    definitely worth noting down and comparing.
    Your task is to determine if a person correctly guessed the results of a number of matches.
    You are given two arrays of scores and guesses of equal length, where each index shows a match. 
    Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
    the value is 0, and if not, the value is the absolute difference between the guess and the score.
    
    
    example:

    compare(ArrayList<Int64>([1,2,3,4,5,1]),ArrayList<Int64>([1,2,3,4,2,-2])) -> [0,0,0,0,3,3]
    compare(ArrayList<Int64>([0,5,0,0,0,4]),ArrayList<Int64>([4,1,1,0,0,-2])) -> [4,4,1,0,0,6]
    */
    let result = ArrayList<Int64>()
    for (i in 0..guess.size) {
        result.add(abs(game[i] - guess[i]))
    }
    return result
}
