import std.unicode.UnicodeStringExtension

func get_closest_vowel(word: String): String {
    /*
    You are given a word. Your task is to find the closest vowel that stands between 
    two consonants from the right side of the word (case sensitive).
    
    Vowels in the beginning and ending doesn't count. Return empty string if you didn't
    find any vowel met the above condition. 

    You may assume that the given string contains English letter only.

    Example:
    get_closest_vowel("yogurt") ==> "u"
    get_closest_vowel("FULL") ==> "U"
    get_closest_vowel("quick") ==> ""
    get_closest_vowel("ab") ==> ""
    */
    if (word.size < 3) {
        return ""
    }

    let vowels = ["a", "e", "i", "o", "u", "A", "E", 'O', 'U', 'I']
    for (i in word.size-2..0:-1) {
        if (vowels.contains(Rune(word[i]).toString())) {
            if (!vowels.contains(Rune(word[i+1]).toString()) && !vowels.contains(Rune(word[i-1]).toString())) {
                return Rune(word[i]).toString()
            }
        }
    }
    return ""
}
