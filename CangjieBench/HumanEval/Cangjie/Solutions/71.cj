
func triangle_area(a: Int64, b: Int64, c: Int64): Float64 {
    /*
    Given the lengths of the three sides of a triangle. Return the area of
    the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
    Otherwise return -1
    Three sides make a valid triangle when the sum of any two sides is greater 
    than the third side.
    Example:
    triangle_area(3, 4, 5) == 6.00
    triangle_area(1, 2, 10) == -1.00
    */
    if (a + b <= c || a + c <= b || b + c <= a) {
        return -1.0
    }
    let s = Float64(a + b + c) / 2.0
    let area = (s * (s - Float64(a)) * (s - Float64(b)) * (s - Float64(c))) ** 0.5  
    return area
}
