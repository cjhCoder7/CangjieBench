### Program Structure

```cangjie
import ...

// example.cj
let a = 2023
func b() {}
struct C {}
class D {}
enum E { F | G }

main() {
    println(a)
}
```

### Variables

Variables are declared using `let` or `var`:  
- `let` declares immutable variables (cannot be reassigned after initialization).  
- `var` declares mutable variables that can be reassigned within a function.

### Numeric Types

Primitive numeric types include:

- Signed integers: `Int8`, `Int16`, `Int32`, `Int64`, `IntNative`
- Unsigned integers: `UInt8`, `UInt16`, `UInt32`, `UInt64`, `UIntNative`
- Floating-point numbers: `Float16`, `Float32`, `Float64`

### Strings and Characters

The character type in Cangjie is called `Rune`.  
`Rune` literals start with the letter `r`, followed by a character enclosed in single or double quotes.  
The string type in Cangjie is called `String`. For example:

```cangjie
let a: Rune = r'a'
let s: String = "hello"
```

Converting between strings and characters:

- Use `s.runes()` to get an iterator over `Rune` (type `Iterator<Rune>`).  
- Use `s.toRuneArray()` to convert a string directly into an `Array<Rune>`.

String interpolation uses `${}`:

```cangjie
main() {
    let world = "world"
    let hello_world = "hello ${world}!"
    println(hello_world)
}
```

### Boolean Type

The Boolean type has two literals: `true` and `false`.  
Operators include `!`, `&&`, and `||`.

### Arrays and Dynamic Arrays

Fixed-length arrays are declared as `Array<T>`, where `T` is the element type. Example: `let arr1 = [1, 2, 3]`.

Dynamic-length arrays use `ArrayList<T>`. To use `ArrayList`, import it at the top level with `import std.collection.*`. Example: `let arr2 = ArrayList<Int64>([1, 2, 3])`.

- The length of both `Array` and `ArrayList` is accessed via `.size`: `a.size`.
- Elements are accessed by index: `a[index]`.
- Elements can be modified via index assignment: `a[index] = b`.
- `ArrayList` supports insertion and deletion at a specific index:  
  `a.add(b, at: index)` and `a.remove(at: index)`.

### Hash Maps

`HashMap` represents a hash-table-based key-to-value mapping. To use `HashMap`, import it at the top level with `import std.collection.*`. Example:  
`let a = HashMap<String, Int64>([("a", 0), ("b", 1), ("c", 2)])`.

- Length is accessed via `.size`.
- Insertion and deletion use `add(key, value)` and `remove(key)`.
- Values can be retrieved via indexing (`a[key]`) or `get(key)`, where `get` returns an `Option` type.

### Hash Sets

`HashSet` represents a hash-table-based collection of unique elements. To use `HashSet`, import it at the top level with `import std.collection.*`. Example:  
`let a = HashSet<String>(["a", "b", "c"])`.

- Length is accessed via `.size`.
- Insertion and deletion use `add(element)` and `remove(element)`.
- Membership is checked with `contains(element)`.

### Sorting

The `sort()` function can sort `Array` and `ArrayList`. Import it with `import std.sort.*` at the top level. Example: `sort(a)`.

Custom sorting is supported:

```cangjie
/* Sort by age in descending order */
var c = [Student("A", 8), Student("B", 7), Student("C", 3), Student("D", 4), Student("E", 6)]
let lessThan = {l: Student, r: Student => l.age < r.age}
sort(c, lessThan: lessThan, descending: true)

/* Stable sort by age in ascending order */
var d = [Student("A", 8), Student("B", 7), Student("C", 7), Student("D", 4), Student("E", 7)]
let key = {i: Student => i.age}
sort(d, key: key, stable: true)
```

### Tuples

Tuple types are written as `(T1, T2, ..., TN)`, where `T1` through `TN` can be any types.

Tuples are immutable.

Elements are accessed via constant numeric indices: `t[0]`, `t[1]`, etc.

### Conditional Statements

In Cangjie, `if-else`, `while`, and `match` expressions must wrap their condition in `()` and their logic block in `{}`. For example:

```cangjie
if (x > 0) {
    y = 1
} else {
    y = 2
}

while (true) {
}
```

Cangjie does **not** have a ternary operator:

```cangjie
let v =  a > b ? a : b
```

Use `if-else` instead:

```cangjie
let v =  if (a > b) { a }  else { b }
```

### Loop Statements

To iterate over the half-open interval `[low, high)`, use:

```cangjie
for (i in low..high:step) { // step is optional; defaults to 1
    ...
}
```

`while` loops follow standard syntax.

### Option Type

Optional types are declared as `Option<T>`, with values `None<T>` (note: no parentheses) or `Some<T>(x)`, where `x` is of type `T`.

`Option<T>` can also be abbreviated as `?T`.

To unwrap a `Some<T>(x)`, use `getOrThrow()` or the `??` operator:

```cangjie
let v1 = a.getOrThrow()
let v2 = a ?? default_value
```

### Match Expressions

`match` expressions perform pattern matching on a value and execute logic based on matched patterns.

```cangjie
let x = 2
let s: String = match (x) {
    case 0 => "x = 0"
    case 1 => "x = 1"
    case _ => "x != 0 and x != 1" // Matched.
}
```

### Lambda Expressions

Lambda expressions create anonymous functions. Examples:

```cangjie
let f = {x: Int64 => x * x}
var mine_sum: (Int64, Int64) -> Int64 = { a: Int64, b => a + b }
```

### Input and Output

Cangjie provides two main print statements: `println()` and `print()`.

Console input is read as a string using `readln()`.

Other I/O operations require importing `import std.io.*`.

### Functions

Functions are defined with `func`. Parameters and return types must be annotated. Named parameters are marked with `!`. Functions with no return value use `Unit`. Examples:

```cangjie
func foo(a: Int64, b!: Int64 = 0): Int64 {
    // function body
    return 0
}

func foo(x: String): Unit {
    // function body
}
```

When calling a function:
- Positional arguments come first and are passed without names.
- Named arguments follow in any order and must be named.
- Arguments with default values may be omitted.

Example calls:
```cangjie
foo("hello")
foo(3, b: 2)
```

Nested functions are allowed in Cangjie.

### Classes

Classes are defined with the `class` keyword. Example:

```cangjie
class Rectangle {
    let width: Int64
    let height: Int64

    public init(width: Int64, height: Int64) {
        this.width = width
        this.height = height
    }

    public func area() {
        width * height
    }
}
```

Classes can only be defined at the top level of a source file.

### Interfaces

Interfaces are defined with the `interface` keyword. Example:

```cangjie
interface Printable {
    func mine_print(): Unit
}
```

Classes implementing an interface use `<:`:

```cangjie
class Foo <: Printable {
    public func mine_print(): Unit {
        println("Foo")
    }
}
```

### Keywords

Keywords are reserved words that cannot be used as identifiers. The keywords in Cangjie are listed below:

| Keyword      | Keyword    | Keyword     |
| ------------ | ---------- | ----------- |
| as           | abstract   | break       |
| Bool         | case       | catch       |
| class        | const      | continue    |
| Rune         | do         | else        |
| enum         | extend     | for         |
| func         | false      | finally     |
| foreign      | Float16    | Float32     |
| Float64      | if         | in          |
| is           | init       | import      |
| interface    | Int8       | Int16       |
| Int32        | Int64      | IntNative   |
| let          | mut        | main        |
| macro        | match      | Nothing     |
| open         | operator   | override    |
| prop         | public     | package     |
| private      | protected  | quote       |
| redef        | return     | spawn       |
| super        | static     | struct      |
| synchronized | try        | this        |
| true         | type       | throw       |
| This         | unsafe     | Unit        |
| UInt8        | UInt16     | UInt32      |
| UInt64       | UIntNative | var         |
| VArray       | where      | while       |