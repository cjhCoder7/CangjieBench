import std.collection.ArrayList
import std.collection.HashMap

class Dish <: Equatable<Dish> {

    let dish: String
    let price: Int64
    var count: Int64

    public init(dish: String, price: Int64, count: Int64) {
        this.dish = dish
        this.price = price
        this.count = count
    }

    public override operator func != (that: Dish): Bool {
        return this.dish != that.dish || this.price != that.price || this.count != that.count
    }

    public override operator func == (that: Dish): Bool {
        return this.dish == that.dish && this.price == that.price && this.count == that.count
    }
}

class Order {

    let menu: ArrayList<Dish>
    let selected_dishes: ArrayList<Dish>
    let sales: HashMap<String, Float64>

    public init() {
        this.menu = ArrayList<Dish>()
        this.selected_dishes = ArrayList<Dish>()
        this.sales = HashMap<String, Float64>()
    }
    
    public func add_dish(dish: Dish): Bool {
        for (menu_dish in this.menu) {
            if (dish.dish == menu_dish.dish) {
                if (menu_dish.count < dish.count) {
                    return false
                } else {
                    menu_dish.count -= dish.count
                    break
                }
            }
        }
        this.selected_dishes.add(dish)
        return true
    }

    public func calculate_total(): Float64 {
        var total = 0.0
        for (dish in this.selected_dishes) {
            total += Float64(dish.price * dish.count) * this.sales[dish.dish]
        }
        return total
    }
    
    public func checkout(): Option<Float64> {
        if (this.selected_dishes.size == 0) {
            return None
        }
        let total = this.calculate_total()
        this.selected_dishes.clear()
        return total
    }
}

