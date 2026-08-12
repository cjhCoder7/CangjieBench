import std.math.*

class AreaCalculator {
    /*
    This is a class for calculating the area of different shapes, including circle, sphere, cylinder, sector and annulus.
    */

    let radius: Float64

    public init(radius: Float64) {
        /*
        Initialize the radius for shapes.
        :param radius: Float64
        */
        this.radius = radius
    }

    public func calculate_circle_area(): Float64 {
        /*
        calculate the area of circle based on this.radius
        :return: area of circle, Float64
        >>> areaCalculator = AreaCalculator(2.0)
        >>> areaCalculator.calculate_circle_area()
        12.566370614359172
        */
        
    }

    public func calculate_sphere_area(): Float64 {
        /*
        calculate the area of sphere based on this.radius
        :return: area of sphere, Float64
        >>> areaCalculator = AreaCalculator(2.0)
        >>> areaCalculator.calculate_sphere_area()
        50.26548245743669
        */

    }

    public func calculate_cylinder_area(height: Float64): Float64 {
        /*
        calculate the area of cylinder based on this.radius and height
        :param height: height of cylinder, Float64
        :return: area of cylinder, Float64
        >>> areaCalculator = AreaCalculator(2.0)
        >>> areaCalculator.calculate_cylinder_area(3.0)
        62.83185307179586
        */

    }

    public func calculate_sector_area(angle: Float64): Float64 {
        /*
        calculate the area of sector based on this.radius and angle
        :param angle: angle of sector, Float64
        :return: area of sector, Float64
        >>> areaCalculator = AreaCalculator(2.0)
        >>> areaCalculator.calculate_sector_area(3.1415926)
        6.283185307179586
        */

    }

    public func calculate_annulus_area(inner_radius: Float64, outer_radius: Float64): Float64 {
        /*
        calculate the area of annulus based on inner_radius and out_radius
        :param inner_radius: inner radius of sector, Float64
        :param outer_radius: outer radius of sector, Float64
        :return: area of annulus, Float64
        >>> areaCalculator = AreaCalculator(2.0)
        >>> areaCalculator.calculate_annulus_area(2.0, 3.0)
        15.707963267948966
        */
        
    }
}
