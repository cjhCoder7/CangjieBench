import std.collection.ArrayList

class EncryptionUtils {

    /*
    This is a class that provides methods for encryption, including the Caesar cipher, Vigenere cipher, and Rail Fence cipher.
    */

    let key: String

    public init(key: String) {
        /*
        Initializes the class with a key.
        :param key: The key to use for encryption, String.
        */
        this.key = key
    }

    public func caesar_cipher(plaintext: String, shift: Int64): String {
        /*
        Encrypts the plaintext using the Caesar cipher.
        :param plaintext: The plaintext to encrypt, String.
        :param shift: The number of characters to shift each character in the plaintext, Int64.
        :return: The ciphertext, String.
        >>> e = EncryptionUtils("key")
        >>> e.caesar_cipher("abc", 1)
        'bcd'

        */
        
    }

    public func vigenere_cipher(plain_text: String): String {
        /*
        Encrypts the plaintext using the Vigenere cipher.
        :param plaintext: The plaintext to encrypt, String.
        :return: The ciphertext, String.
        >>> e = EncryptionUtils("key")
        >>> e.vigenere_cipher("abc")
        'kfa'

        */
        
    }

    public func rail_fence_cipher(plain_text: String, rails: Int64): String {
        /*
        Encrypts the plaintext using the Rail Fence cipher.
        :param plaintext: The plaintext to encrypt, String.
        :return: The ciphertext, String.
        >>> e = EncryptionUtils("key")
        >>> e.rail_fence_cipher("abc", 2)
        'acb'

        */
        
    }
}

