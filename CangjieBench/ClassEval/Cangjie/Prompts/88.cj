import std.math.numeric.Decimal
import std.math.numeric.round
import std.math.abs

class TriCalculator {

    /*
    The class allows to calculate trigonometric values, including cosine, sine, and tangent, using Taylor series approximations.
    */

    let PI = 3.1415926

    public init() {}

    public func cos(x: Float64): Float64 {
        /*
        Calculate the cos value of the x-degree angle
        :param x:Float64
        :return:Float64
        >>> tricalculator = TriCalculator()
        >>> tricalculator.cos(60.0)
        0.5
        */
        
    }

    public func factorial(a: Int64): Decimal {
        /*
        Calculate the factorial of a
        :param a: Int64
        :return: Decimal
        >>> tricalculator.factorial(5)
        Decimal(120)
        */
        
    }

    public func taylor(x: Float64, n: Int64): Float64 {
        /*
        Finding the n-order Taylor expansion value of cos (x/180 * pi)
        :param x: Float64
        :param n: Int64
        :return: Float64
        >>> tricalculator.taylor(60.0, 50)
        0.5000000000000001
        */
        
    }

    public func sin(x: Float64): Float64 {
        /*
        Calculate the sin value of the x-degree angle
        :param x: Float64
        :return: Float64
        >>> tricalculator.sin(30.0)
        0.5
        */
        
    }

    public func tan(x: Float64): Option<Float64> {
        /*
        Calculate the tan value of the x-degree angle
        If abs(this.cos(x) - 0.0) > 0.000001, return None
        :param x: Float64
        :return: Option<Float64>
        >>> tricalculator.tan(45.0)
        1.0
        */
        
    }
}

