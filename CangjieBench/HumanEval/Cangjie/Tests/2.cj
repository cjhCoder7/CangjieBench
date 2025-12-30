
main(){
    if (truncate_number(3.5) != 0.5) {
        throw Exception('Test failed!')
    }
    if ((truncate_number(1.33) - 0.33) >= 1e-6 || (0.33 - truncate_number(1.33)) >= 1e-6) {
        throw Exception('Test failed!')
    }
    if ((truncate_number(123.456) - 0.456) >= 1e-6 || (0.456 - truncate_number(123.456)) >= 1e-6) {
        throw Exception('Test failed!')
    }
}