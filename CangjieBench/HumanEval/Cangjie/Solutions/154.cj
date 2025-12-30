func cycpattern_check(a: String, b: String): Bool {
    /*
    You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
    cycpattern_check("abcd","abd") => false
    cycpattern_check("hello","ell") => true
    cycpattern_check("whassup","psus") => false
    cycpattern_check("abab","baa") => true
    cycpattern_check("efef","eeff") => false
    cycpattern_check("himenss","simen") => true

    */
    let l = b.size
    let pat = b + b
    for (i in 0..a.size - l + 1) {
        for (j in 0..l + 1) {
            if (a[i..i+l] == pat[j..j+l]) {
                return true
            }
        }
    }
    return false
}
