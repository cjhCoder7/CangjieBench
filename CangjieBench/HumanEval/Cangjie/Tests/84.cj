
main(){
    if (solve(1000) != "1") {
        throw Exception("Test Failed!")
    }
    if (solve(150) != "110") {
        throw Exception("Test Failed!")
    }
    if (solve(147) != "1100") {
        throw Exception("Test Failed!")
    }
    if (solve(333) != "1001") {
        throw Exception("Test Failed!")
    }
    if (solve(963) != "10010") {
        throw Exception("Test Failed!")
    }
}