#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_SOLUTION__'
func encrypt(s: String): String {
    /*
    Create a function encrypt that takes a string as an argument and
    returns a string encrypted with the alphabet being rotated. 
    The alphabet should be rotated in a manner such that the letters 
    shift down by two multiplied to two places.
    For example:
    encrypt('hi') returns 'lm'
    encrypt('asdfghjkl') returns 'ewhjklnop'
    encrypt('gf') returns 'kj'
    encrypt('et') returns 'ix'
    */
    let d = 'abcdefghijklmnopqrstuvwxyz'
    var out = ''
    for (c in s.toRuneArray()) {
        if (d.contains(c.toString())) {
            var c_index_d = 0
            for (i in 0..d.size) {
                if (Rune(d[i]) == c) {
                    c_index_d = i
                    break
                }
            }
            out += Rune(d[(c_index_d+2*2)%26]).toString()
        } else {
            out += c.toString()
        }
    }
    return out
}
__CANGJIEBENCH_SOLUTION__
