#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class DecryptionUtils {

    let key: String

    public init(key: String) {
        this.key = key
    }

    public func caesar_decipher(ciphertext: String, shift: Int64): String {
        var plaintext = ""
        for (char in ciphertext.toRuneArray()) {
            if (char.isAsciiLetter()) {
                var ascii_offset = 0
                if (char.isAsciiUpperCase()) {
                    ascii_offset = 65
                } else {
                    ascii_offset = 97
                }
                var shifted_char = (Int64(UInt32(char)) - ascii_offset - shift) % 26
                if (shifted_char < 0) {
                    shifted_char += 26
                }
                shifted_char += ascii_offset
                plaintext += Rune(UInt32(shifted_char)).toString()
            } else {
                plaintext += char.toString()
            }
        }
        return plaintext
    }

    public func vigenere_decipher(ciphertext: String): String {
        var decrypted_text = ""
        var key_index = 0
        for (char in ciphertext.toRuneArray()) {
            if (char.isAsciiLetter()) {
                let shift = UInt32(Rune(this.key[key_index % this.key.size]).toAsciiLowerCase()) - UInt32(r'a')
                var decrypted_char = (Int64(UInt32(char.toAsciiLowerCase())) - Int64(UInt32(r'a')) - Int64(shift)) % 26
                if (decrypted_char < 0) {
                    decrypted_char += 26
                }
                decrypted_char += Int64(UInt32(r'a'))
                if (char.isAsciiUpperCase()) {
                    decrypted_text += Rune(UInt32(decrypted_char)).toAsciiUpperCase().toString()
                } else {
                    decrypted_text += Rune(UInt32(decrypted_char)).toString()
                }
                key_index += 1
            } else {
                decrypted_text += char.toString()
            }
        }
        return decrypted_text
    }

    public func rail_fence_decipher(encrypted_text: String, rails: Int64): String {
        let fence = ArrayList<ArrayList<String>>()
        for (_ in 0..rails) {
            let a = ArrayList<String>()
            for (_ in 0..encrypted_text.size) {
                a.add("\n")
            }
            fence.add(a)
        }

        var direction = -1
        var row = 0
        var col = 0

        for (_ in 0..encrypted_text.size) {
            if (row == 0 || row == rails - 1) {
                direction = -direction
            }

            fence[row][col] = ''
            col += 1
            row += direction
        }

        var index = 0
        for (i in 0..rails) {
            for(j in 0..encrypted_text.size) {
                if (fence[i][j] == '') {
                    fence[i][j] = Rune(encrypted_text[index]).toString()
                    index += 1
                }
            }
        }

        var plain_text = ''
        direction = -1
        row = 0
        col = 0

        for (_ in 0..encrypted_text.size) {
            if (row == 0 || row == rails - 1) {
                direction = -direction
            }
            plain_text += fence[row][col]
            col += 1
            row += direction
        }

        return plain_text
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
