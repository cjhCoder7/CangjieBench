import std.collection.HashMap

func encode(message: String): String {
    /*
    Write a function that takes a message, and encodes in such a 
    way that it swaps case of all letters, replaces all vowels in 
    the message with the letter that appears 2 places ahead of that 
    vowel in the english alphabet. 
    Assume only letters. 
    
    Examples:
    >>> encode('test')
    'TGST'
    >>> encode('This is a message')
    'tHKS KS C MGSSCGG'
    */
    let vowels = "aeiouAEIOU"
    let vowels_replace = HashMap<String, String>()
    for (i in vowels) {
        vowels_replace.add(Rune(i).toString(), Rune(i+2).toString())
    }
    var message_ = ""
    for (i in message.toRuneArray()) {
        var c = i
        if (i.isAsciiLowerCase()) {
            c = i.toAsciiUpperCase()
        } else if (i.isAsciiUpperCase()) {
            c = i.toAsciiLowerCase()
        }
        var char = c.toString()
        if (vowels.contains(c.toString())) {
            char = vowels_replace.get(c.toString()) ?? ""
        }
        message_ += char
    }
    return message_
}
