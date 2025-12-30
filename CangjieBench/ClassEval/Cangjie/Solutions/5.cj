import std.collection.HashMap
import std.collection.ArrayList
import std.unicode.UnicodeStringExtension

class AutomaticGuitarSimulator {

    let play_text: String

    public init(text: String) {
        this.play_text = text
    }

    public func interpret(display!: Bool = false): ArrayList<HashMap<String, String>> {
        if (this.play_text.trim() == "") {
            return ArrayList<HashMap<String, String>>()
        } else {
            let play_list = ArrayList<HashMap<String, String>>()
            let play_segs = this.play_text.split(" ")
            for (play_seg in play_segs) {
                var pos = 0
                for (ele in play_seg.toRuneArray()) {
                    if (ele.isAsciiLetter()) {
                        pos += 1
                        continue
                    }
                    break
                }
                let play_chord = play_seg[0..pos]
                let play_value = play_seg[pos..]
                play_list.add(HashMap<String, String>([('Chord', play_chord), ('Tune', play_value)]))
                if (display) {
                    this.display(play_chord, play_value)
                }
            }
            return play_list
        }
    }

    public func display(key: String, value: String): String {
        return "Normal Guitar Playing -- Chord: ${key}, Play Tune: ${value}"
    }
}
