import std.collection.ArrayList

class EncryptionUtils {

    let key: String

    public init(key: String) {
        this.key = key
    }

    public func caesar_cipher(plaintext: String, shift: Int64): String {
        var ciphertext = ""
        for (char in plaintext.toRuneArray()) {
            if (char.isAsciiLetter()) {
                var ascii_offset = 0
                if (char.isAsciiUpperCase()) {
                    ascii_offset = 65
                } else {
                    ascii_offset = 97
                }
                var shifted_char = (Int64(UInt32(char)) - ascii_offset + shift) % 26
                if (shifted_char < 0) {
                    shifted_char += 26
                }
                shifted_char += ascii_offset
                ciphertext += Rune(UInt32(shifted_char)).toString()
            } else {
                ciphertext += char.toString()
            }
        }
        return ciphertext
    }

    public func vigenere_cipher(plain_text: String): String {
        var encrypted_text = ""
        var key_index = 0
        for (char in plain_text.toRuneArray()) {
            if (char.isAsciiLetter()) {
                let shift = UInt32(Rune(this.key[key_index % this.key.size]).toAsciiLowerCase()) - UInt32(r'a')
                var encrypted_char = (Int64(UInt32(char.toAsciiLowerCase())) - Int64(UInt32(r'a')) + Int64(shift)) % 26
                if (encrypted_char < 0) {
                    encrypted_char += 26
                }
                encrypted_char += Int64(UInt32(r'a'))
                if (char.isAsciiUpperCase()) {
                    encrypted_text += Rune(UInt32(encrypted_char)).toAsciiUpperCase().toString()
                } else {
                    encrypted_text += Rune(UInt32(encrypted_char)).toString()
                }
                key_index += 1
            } else {
                encrypted_text += char.toString()
            }
        }
        return encrypted_text
    }

    public func rail_fence_cipher(plain_text: String, rails: Int64): String {
        let fence = ArrayList<ArrayList<String>>()
        for (_ in 0..rails) {
            let a = ArrayList<String>()
            for (_ in 0..plain_text.size) {
                a.add("\n")
            }
            fence.add(a)
        }

        var direction = -1
        var row = 0
        var col = 0

        for (char in plain_text.toRuneArray()) {
            if (row == 0 || row == rails - 1) {
                direction = -direction
            }

            fence[row][col] = char.toString()
            col += 1
            row += direction
        }

        var encrypted_text = ''
        for (i in 0..rails) {
            for (j in 0..plain_text.size) {
                if (fence[i][j] != '\n') {
                    encrypted_text += fence[i][j]
                }
            }
        }
        return encrypted_text
    }
}

