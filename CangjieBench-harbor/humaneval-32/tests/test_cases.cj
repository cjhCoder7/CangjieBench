import std.collection.ArrayList
import std.math.pow
import std.math.abs
import std.random.Random

main(){
    let r = Random(42)
    for (_ in 0..100) {
        var ncoeff = 2 * r.nextInt64(5)
        while (ncoeff == 0) {
            ncoeff = 2 * r.nextInt64(5)
        }
        let coeffs = ArrayList<Int64>()
        let coeffs_copy = ArrayList<Int64>()
        for (_ in 0..ncoeff) {
            let is_positive = r.nextBool()
            var coeff = r.nextInt64(11)
            if (coeff < 0 && is_positive) {
                coeff = -coeff
            }
            if (coeff > 0 && !is_positive) {
                coeff = -coeff
            }
            if (coeff == 0) {
                coeff = 1
            }
            coeffs.add(coeff)
            coeffs_copy.add(coeff)
        }
        let solution = find_zero(coeffs)
        if (abs(poly(coeffs_copy, solution)) > 1e-4) {
            throw Exception("Test Failed!")
        }
    }
}
