import std.collection.ArrayList

main() {
    if (odd_count(ArrayList<String>(["1234567"])) != ArrayList<String>(["the number of odd elements 4n the str4ng 4 of the 4nput."])) {
        throw Exception("Test Failed!")
    }
    if (odd_count(ArrayList<String>(["3", "11111111"])) != ArrayList<String>(["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."])) {
        throw Exception("Test Failed!")
    }
    if (odd_count(ArrayList<String>(["271", "137", "314"])) != ArrayList<String>([
        "the number of odd elements 2n the str2ng 2 of the 2nput.",
        "the number of odd elements 3n the str3ng 3 of the 3nput.",
        "the number of odd elements 2n the str2ng 2 of the 2nput."
    ])) {
        throw Exception("Test Failed!")
    }
}
