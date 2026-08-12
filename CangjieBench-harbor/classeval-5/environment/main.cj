import std.collection.HashMap
import std.collection.ArrayList
import std.unicode.UnicodeStringExtension

class AutomaticGuitarSimulator {

    /*
    This class is an automatic guitar simulator that can interpret and play based on the input guitar sheet music.
    */

    let play_text: String

    public init(text: String) {
        /*
        Initialize the score to be played
        :param text:String, score to be played
        */
        this.play_text = text
    }

    public func interpret(display!: Bool = false): ArrayList<HashMap<String, String>> {
        /*
        Interpret the music score to be played
        :param display:Bool, representing whether to print the interpreted score
        :return: list of HashMap, The HashMap includes two fields, Chord and Tune, which are letters and numbers, respectively. If the input is empty or contains only whitespace, an empty list is returned.
        >>> context = AutomaticGuitarSimulator("C53231323 Em43231323 F43231323 G63231323")
        >>> play_list = context.interpret(display: false)
        [{'Chord': 'C', 'Tune': '53231323'}, {'Chord': 'Em', 'Tune': '43231323'}, {'Chord': 'F', 'Tune': '43231323'}, {'Chord': 'G', 'Tune': '63231323'}]

        */
        
    }

    public func display(key: String, value: String): String {
        /*
        Print out chord and play tune with following format: Normal Guitar Playing -- Chord: %s, Play Tune: %s
        :param key:String, chord
        :param value:String, play tune
        :return: String
        >>> context = AutomaticGuitarSimulator("C53231323 Em43231323 F43231323 G63231323")
        >>> context.display("C", "53231323")
        Normal Guitar Playing -- Chord: C, Play Tune: 53231323

        */

    }
}
