import std.math.abs

class ComplexNumber <: Equatable<ComplexNumber> {

    /*
    This is a class that represents a complex number with real and imaginary parts.
    */

    public var real: Float64
    public var imaginary: Float64

    public init(real: Float64, imaginary: Float64) {
        /*
        Initializes a complex number with the given real and imaginary parts.
        :param real: The real part of the complex number,Float64.
        :param imaginary: The imaginary part of the complex number,Float64.
        */
        this.real = real
        this.imaginary = imaginary
    }

    public override operator func != (that: ComplexNumber): Bool {
        /*
        Checks if this complex number is not equal to another complex number.
        :param that: The other complex number to compare with,ComplexNumber.
        :return: true if the complex numbers are not equal, false otherwise,Bool.
        */
        return this.real != that.real || this.imaginary != that.imaginary
    }

    public override operator func == (that: ComplexNumber): Bool {
        /*
        Checks if this complex number is equal to another complex number.
        :param that: The other complex number to compare with,ComplexNumber.
        :return: true if the complex numbers are equal, false otherwise,Bool.
        */
        return this.real == that.real && this.imaginary == that.imaginary
    }
}


class ComplexCalculator {

    /*
    This is a class that implements addition, subtraction, multiplication, and division operations for complex numbers.
    */

    public init() { }

    public static func add(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        /*
        Adds two complex numbers.
        :param c1: The first complex number,ComplexNumber.
        :param c2: The second complex number,ComplexNumber.
        :return: The sum of the two complex numbers,ComplexNumber.
        >>> ComplexCalculator.add(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0))
        ComplexNumber(4.0, 6.0)

        */
        
    }

    public static func subtract(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        /*
        Subtracts two complex numbers.
        :param c1: The first complex number,ComplexNumber.
        :param c2: The second complex number,ComplexNumber.
        :return: The difference of the two complex numbers,ComplexNumber.
        >>> ComplexCalculator.subtract(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0))
        ComplexNumber(-2.0, -2.0)

        */
        
    }

    public static func multiply(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        /*
        Multiplies two complex numbers.
        :param c1: The first complex number,ComplexNumber.
        :param c2: The second complex number,ComplexNumber.
        :return: The product of the two complex numbers,ComplexNumber.
        >>> ComplexCalculator.multiply(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0))
        ComplexNumber(-5.0, 10.0)

        */
        
    }

    public static func divide(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        /*
        Divides two complex numbers.
        :param c1: The first complex number,ComplexNumber.
        :param c2: The second complex number,ComplexNumber.
        :return: The quotient of the two complex numbers,ComplexNumber.
        >>> ComplexCalculator.divide(ComplexNumber(1.0, 2.0), ComplexNumber(3.0, 4.0))
        ComplexNumber(0.44, 0.08)

        */
        
    }
}
