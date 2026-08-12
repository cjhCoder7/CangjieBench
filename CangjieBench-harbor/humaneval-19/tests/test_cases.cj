import std.collection.HashMap
import std.sort.*

main(){
    if (sort_numbers('') != '') {
        throw Exception("Test Failed!")
    }
    if (sort_numbers('three') != 'three') {
        throw Exception("Test Failed!")
    }
    if (sort_numbers('three five nine') != 'three five nine') {
        throw Exception("Test Failed!")
    }
    if (sort_numbers('five zero four seven nine eight') != 'zero four five seven eight nine') {
        throw Exception("Test Failed!")
    }
    if (sort_numbers('six five four three two one zero') != 'zero one two three four five six') {
        throw Exception("Test Failed!")
    }
}
