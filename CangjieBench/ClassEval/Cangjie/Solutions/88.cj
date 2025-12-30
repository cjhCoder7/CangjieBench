import std.math.numeric.Decimal
import std.math.numeric.round
import std.math.abs

class TriCalculator {

    let PI = 3.1415926

    public init() {}

    public func cos(x: Float64): Float64 {
        var ans = Decimal(this.taylor(x, 50))
        ans *= Decimal(10 ** 10)
        ans = round(ans)
        ans /= Decimal(10 ** 10)
        return ans.toFloat64()
    }

    public func factorial(a: Int64): Decimal {
        var b = Decimal(1)
        var a_ = Decimal(a)
        while (a_ != Decimal(1)) {
            b *= a_
            a_ -= Decimal(1)
        }
        return b
    }

    public func taylor(x: Float64, n: Int64): Float64 {
        var a = Decimal(1)
        let x_ = x / Float64(180) * PI
        var count = 1
        for (k in 1..n) {
            let term = Decimal(x_ ** (2 * k)) / this.factorial(2 * k)
            if (count % 2 != 0) {
                a -= term
            } else {
                a += term
            }
            count += 1
        }
        return a.toFloat64()
    }

    public func sin(x: Float64): Float64 {
        let x_ = x / Float64(180) * PI
        var g = 0.0
        var t = x_
        var n = 1

        while (abs(t) >= 1e-15) {
            g += t
            n += 1
            t = -t * x_ * x_ / Float64(2 * n - 1) / Float64(2 * n - 2)
        }

        var ans = Decimal(g)
        ans *= Decimal(10 ** 10)
        ans = round(ans)
        ans /= Decimal(10 ** 10)
        return ans.toFloat64()
    }

    public func tan(x: Float64): Option<Float64> {
        if (abs(this.cos(x) - 0.0) > 0.000001) {
            let result = this.sin(x) / this.cos(x)

            var ans = Decimal(result)
            ans *= Decimal(10 ** 10)
            ans = round(ans)
            ans /= Decimal(10 ** 10)
            return ans.toFloat64()
        } else {
            return None
        }
    }
}

