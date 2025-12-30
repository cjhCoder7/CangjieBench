
main(){
    let r = Random(42)
    for (_ in 0..100) {
        var str = ''
        let times = r.nextInt64(10) + 10
        for (_ in 0..times) {
            str += Rune(r.nextInt64(26) + 97).toString()
        }
        let encoded_str = encode_cyclic(str)
        if (decode_cyclic(encoded_str) != str) {
            throw Exception("Test failed!")
        }
    }
}
