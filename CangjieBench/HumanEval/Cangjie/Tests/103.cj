
main() {
    if (rounded_avg(1, 5) != "0b11") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(7, 13) != "0b1010") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(964, 977) != "0b1111001010") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(996, 997) != "0b1111100100") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(560, 851) != "0b1011000010") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(185, 546) != "0b101101110") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(362, 496) != "0b110101101") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(350, 902) != "0b1001110010") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(197, 233) != "0b11010111") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(7, 5) != "-1") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(5, 1) != "-1") {
        throw Exception("Test Failed!")
    }
    if (rounded_avg(5, 5) != "0b101") {
        throw Exception("Test Failed!")
    }
}