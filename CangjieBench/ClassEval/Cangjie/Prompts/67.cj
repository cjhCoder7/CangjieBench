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

    /*
    The class manages restaurant orders by allowing the addition of dishes, calculation of the total cost, and checkout.
    */

    let menu: ArrayList<Dish>
    let selected_dishes: ArrayList<Dish>
    let sales: HashMap<String, Float64>

    public init() {
        /*
        Initialize the order management system
        this.menu stores the dishes of resturant inventory
        menu = [Dish("dish name", price, count), ...]
        this.selected_dishes stores the dished selected by customer
        selected_dish = Dish("dish name", price, count)
        this.sales stores the sales of each dish
        sales = {dish name: sales}
        */
        this.menu = ArrayList<Dish>()
        this.selected_dishes = ArrayList<Dish>()
        this.sales = HashMap<String, Float64>()
    }
    
    public func add_dish(dish: Dish): Bool {
        /*
        Check the this.menu and add into this.selected_dish if the dish count is valid.
        And if the dish has successfully been added, change the count in this.menu.
        :param dish: Dish, the information of dish.
        :return: true if successfully added, or false otherwise.
        >>> order = Order()
        >>> order.menu.add(Dish("dish1", 10, 5))
        >>> order.add_dish(Dish("dish1", 10, 3))
        true
        */
        
    }

    public func calculate_total(): Float64 {
        /*
        Calculate the total price of dishes that have been ordered. Multiply the count, price and sales.
        :return total: Float64, the final total price.
        >>> order = Order()
        >>> order.menu.add(Dish("dish1", 10, 5))
        >>> order.sales = {"dish1": 0.8}
        >>> order.add_dish(Dish("dish1", 10, 4))
        true
        >>> order.calculate_total()
        32.0
        */
        
    }
    
    public func checkout(): Option<Float64> {
        /*
        Check out the dished ordered. IF the this.selected_dishes is not empty, invoke the calculate_total
        method to check out.
        :return None if the this.selected_dishes is empty, or total(return value of calculate_total) otherwise.
        >>> order = Order()
        >>> order.menu.add(Dish("dish1", 10, 5))
        >>> order.sales = {"dish1": 0.8}
        >>> order.add_dish(Dish("dish1", 10, 4))
        true
        >>> order.checkout()
        32.0
        */
        
    }
}

