import std.collection.HashMap

main(){
    if (check_dict_case(HashMap<String, String>([("p","pineapple"), ("b","banana")])) != true) {
        throw Exception("Test Failed!")
    }
    if (check_dict_case(HashMap<String, String>([("p","pineapple"), ("A","banana"), ("B","banana")])) != false) {
        throw Exception("Test Failed!")
    }
    if (check_dict_case(HashMap<String, String>([("p","pineapple"), ("5","banana"), ("a","apple")])) != false) {
        throw Exception("Test Failed!")
    }
    if (check_dict_case(HashMap<String, String>([("Name","John"), ("Age","36"), ("City","Houston")])) != false) {
        throw Exception("Test Failed!")
    }
    if (check_dict_case(HashMap<String, String>([("STATE","NC"), ("ZIP","12345")])) != true) {
        throw Exception("Test Failed!")
    }
    if (check_dict_case(HashMap<String, String>([("fruit","Orange"), ("taste","Sweet")])) != true) {
        throw Exception("Test Failed!")
    }
    if (check_dict_case(HashMap<String, String>([])) != false) {
        throw Exception("Test Failed!")
    }
}
