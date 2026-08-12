#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.math.abs

class ComplexNumber <: Equatable<ComplexNumber> {
    public var real: Float64
    public var imaginary: Float64

    public init(real: Float64, imaginary: Float64) {
        this.real = real
        this.imaginary = imaginary
    }

    public override operator func != (that: ComplexNumber): Bool {
        return this.real != that.real || this.imaginary != that.imaginary
    }

    public override operator func == (that: ComplexNumber): Bool {
        return this.real == that.real && this.imaginary == that.imaginary
    }
}

class ComplexCalculator {

    public init() { }

    public static func add(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        let real = c1.real + c2.real
        let imaginary = c1.imaginary + c2.imaginary
        return ComplexNumber(real, imaginary)
    }

    public static func subtract(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        let real = c1.real - c2.real
        let imaginary = c1.imaginary - c2.imaginary
        return ComplexNumber(real, imaginary)
    }

    public static func multiply(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        let real = c1.real * c2.real - c1.imaginary * c2.imaginary
        let imaginary = c1.real * c2.imaginary + c1.imaginary * c2.real
        return ComplexNumber(real, imaginary)
    }

    public static func divide(c1: ComplexNumber, c2: ComplexNumber): ComplexNumber {
        let denominator = c2.real ** 2 + c2.imaginary ** 2
        let real = (c1.real * c2.real + c1.imaginary * c2.imaginary) / denominator
        let imaginary = (c1.imaginary * c2.real - c1.real * c2.imaginary) / denominator
        return ComplexNumber(real, imaginary)
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
