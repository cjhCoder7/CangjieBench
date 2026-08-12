import std.sort.sort

main(){
    if (anti_shuffle("Hi") != "Hi") {
        throw Exception("Test Failed!")
    }
    if (anti_shuffle("hello") != "ehllo") {
        throw Exception("Test Failed!")
    }
    if (anti_shuffle("number") != "bemnru") {
        throw Exception("Test Failed!")
    }
    if (anti_shuffle("abcd") != "abcd") {
        throw Exception("Test Failed!")
    }
    if (anti_shuffle("Hello World!!!") != "Hello !!!Wdlor") {
        throw Exception("Test Failed!")
    }
    if (anti_shuffle("") != "") {
        throw Exception("Test Failed!")
    }
    if (anti_shuffle("Hi. My name is Mister Robot. How are you?") != ".Hi My aemn is Meirst .Rboot How aer ?ouy") {
        throw Exception("Test Failed!")
    }
}
