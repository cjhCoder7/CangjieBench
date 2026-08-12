import std.collection.ArrayList

main(){
    if (total_match(ArrayList<String>([]), ArrayList<String>([])) != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>(["hi", "admin"]), ArrayList<String>(["hi", "hi"])) != ArrayList<String>(["hi", "hi"])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>(["hi", "admin"]), ArrayList<String>(["hi", "hi", "admin", "project"])) != ArrayList<String>(["hi", "admin"])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>(["4"]), ArrayList<String>(["1", "2", "3", "4", "5"])) != ArrayList<String>(["4"])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>(["hi", "admin"]), ArrayList<String>(["hI", "Hi"])) != ArrayList<String>(["hI", "Hi"])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>(["hi", "admin"]), ArrayList<String>(["hI", "hi", "hi"])) != ArrayList<String>(["hI", "hi", "hi"])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>(["hi", "admin"]), ArrayList<String>(["hI", "hi", "hii"])) != ArrayList<String>(["hi", "admin"])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>([]), ArrayList<String>(["this"])) != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
    if (total_match(ArrayList<String>(["this"]), ArrayList<String>([])) != ArrayList<String>([])) {
        throw Exception("Test Failed!")
    }
}
