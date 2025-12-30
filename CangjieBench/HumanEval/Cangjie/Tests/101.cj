
main(){
    if (words_string("Hi, my name is John") != ArrayList<String>(["Hi", "my", "name", "is", "John"])) {
        throw Exception("Test Failed!")
    }
    if (words_string("One, two, three, four, five, six") != ArrayList<String>(["One", "two", "three", "four", "five", "six"])) {
        throw Exception("Test Failed!")
    }
    if (words_string("Hi, my name") != ArrayList<String>(["Hi", "my", "name"])) {
        throw Exception("Test Failed!")
    }
    if (words_string("One,, two, three, four, five, six,") != ArrayList<String>(["One", "two", "three", "four", "five", "six"])) {
        throw Exception("Test Failed!")
    }
    if (words_string("") != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (words_string("ahmed     , gamal") != ArrayList<String>(["ahmed", "gamal"])) {
        throw Exception("Test Failed!")
    }
}