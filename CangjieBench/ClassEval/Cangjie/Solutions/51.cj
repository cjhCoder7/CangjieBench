import std.collection.ArrayList
import std.math.abs

class KappaCalculator {

    public static func kappa(testData: ArrayList<ArrayList<Int64>>, k: Int64): Float64 {
        let dataMat = testData.clone()
        var P0 = 0.0
        for (i in 0..k) {
            P0 += Float64(dataMat[i][i]) * 1.0
        }
        let xsum = ArrayList<Int64>(Array<Int64>(k, repeat: 0))
        let ysum = ArrayList<Int64>(Array<Int64>(k, repeat: 0))
        var sum = 0
        for (i in 0..k) {
            for (j in 0..k) {
                xsum[i] += dataMat[i][j]
                ysum[j] += dataMat[i][j]
                sum += dataMat[i][j]
            }
        }
        var Pe = 0.0
        for (i in 0..k) {
            Pe += Float64(ysum[i]) * Float64(xsum[i])
        }
        Pe = Pe / (Float64(sum) * Float64(sum))
        P0 = P0 / Float64(sum)
        return (P0 - Pe) / (1.0 - Pe)
    }

    public static func fleiss_kappa(testData: ArrayList<ArrayList<Int64>>, N: Int64, k: Int64, n: Int64): Float64 {
        let dataMat = testData.clone()
        var P = ArrayList<Float64>()
        var sum = 0
        for (i in 0..N) {
            var temp = 0.0
            for (j in 0..k) {
                sum += dataMat[i][j]
                temp += Float64(dataMat[i][j] * (dataMat[i][j]))
            }
            temp -= Float64(n)
            temp /= Float64((n - 1) * n)
            P.add(temp)
        }
        var p_sum = 0.0
        for (i in 0..N) {
            p_sum += P[i]
        }
        let P0 = p_sum / Float64(N)
        let pj = ArrayList<Float64>(Array<Float64>(k, repeat: 0.0))
        for (j in 0..k) {
            for (i in 0..N) {
                pj[j] += Float64(dataMat[i][j])
            }
            pj[j] /= Float64(sum)
        }
        var Pe = 0.0
        for (j in 0..k) {
            Pe += pj[j] * pj[j]
        }
        return (P0 - Pe) / (1.0 - Pe)
    }
}
