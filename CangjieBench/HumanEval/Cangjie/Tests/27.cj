
main(){
    if (flip_case('') != '') {
        throw Exception("Test failed!")
    }
    if (flip_case('Hello!') != 'hELLO!') {
        throw Exception("Test failed!")
    }
    if (flip_case('These violent delights have violent ends') != 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS') {
        throw Exception("Test failed!")
    }
}