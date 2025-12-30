import std.math.*

class AreaCalculator {

    let radius: Float64

    public init(radius: Float64) {
        this.radius = radius
    }

    public func calculate_circle_area(): Float64 {
        let pi = 3.1415926
        return pi * (radius ** 2)
    }

    public func calculate_sphere_area(): Float64 {
        let pi = 3.1415926
        return 4.0 * pi * (radius ** 2)
    }

    public func calculate_cylinder_area(height: Float64): Float64 {
        let pi = 3.1415926
        return 2.0 * pi * radius * (radius + height)
    }

    public func calculate_sector_area(angle: Float64): Float64 {
        return (radius ** 2) * angle / 2.0
    }

    public func calculate_annulus_area(inner_radius: Float64, outer_radius: Float64): Float64 {
        let pi = 3.1415926
        return pi * (outer_radius ** 2 - inner_radius ** 2)
    }
}
