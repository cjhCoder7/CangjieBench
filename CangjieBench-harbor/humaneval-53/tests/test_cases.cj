import std.random.Random

main(){
    if (add(0, 1) != 1) {
        throw Exception("Test Failed!")
    }
    if (add(1, 0) != 1) {
        throw Exception("Test Failed!")
    }
    if (add(2, 3) != 5) {
        throw Exception("Test Failed!")
    }
    if (add(5, 7) != 12) {
        throw Exception("Test Failed!")
    }
    if (add(7, 5) != 12) {
        throw Exception("Test Failed!")
    }
    let r = Random(42)
    for (_ in 0..100) {
        let x = r.nextInt64(1000)
        let y = r.nextInt64(1000)
        if (add(x, y) != x + y) {
            throw Exception("Test Failed!")
        }
    }
}
