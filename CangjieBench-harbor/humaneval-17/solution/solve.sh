#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
import std.collection.ArrayList
import std.collection.HashMap

func parse_music(music_string: String): ArrayList<Int64> {
    /*
    Input to this function is a string representing musical notes in a special ASCII format.
    Your task is to parse this string and return list of integers corresponding to how many beats does each
    not last.

    Here is a legend:
    'o' - whole note, lasts four beats
    'o|' - half note, lasts two beats
    '.|' - quater note, lasts one beat

    >>> parse_music('o o| .| o| o| .| .| .| .| o o')
    [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
    */
    let result = ArrayList<Int64>()
    let note_map = HashMap<String, Int64>([("o", 4), ("o|", 2), (".|", 1)])
    let notes = music_string.split(" ")
    
    for (note in notes) {
        result.add(note_map[note])
    }
    
    return result
}
__CANGJIEBENCH_SOLUTION__
