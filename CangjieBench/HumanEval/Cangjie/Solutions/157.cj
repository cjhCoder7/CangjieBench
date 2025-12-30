func right_angle_triangle(a: Int64, b: Int64, c: Int64): Bool {
    /*
    Given the lengths of the three sides of a triangle. Return true if the three
    sides form a right-angled triangle, false otherwise.
    A right-angled triangle is a triangle in which one angle is right angle or 
    90 degree.
    Example:
    right_angle_triangle(3, 4, 5) == true
    right_angle_triangle(1, 2, 3) == false
    */
    return a*a == b*b + c*c || b*b == a*a + c*c || c*c == a*a + b*b
}
