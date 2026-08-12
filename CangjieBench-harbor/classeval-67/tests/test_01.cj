import std.collection.ArrayList
import std.collection.HashMap

func test_calculate_total_1() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 2))
    order.add_dish(Dish("dish3", 20, 2))
    let result = order.calculate_total()
    if (result != 50.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_total_2() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 2))
    order.add_dish(Dish("dish2", 15, 2))
    let result = order.calculate_total()
    if (result != 48.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_total_3() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 1))
    order.add_dish(Dish("dish3", 20, 1))
    let result = order.calculate_total()
    if (result != 25.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_total_4() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 3))
    order.add_dish(Dish("dish3", 20, 3))
    let result = order.calculate_total()
    if (result != 75.0) {
        throw Exception("Test failed!")
    }
}

func test_calculate_total_5() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 4))
    order.add_dish(Dish("dish3", 20, 4))
    let result = order.calculate_total()
    if (result != 100.0) {
        throw Exception("Test failed!")
    }
}

main() {
    test_calculate_total_1()
    test_calculate_total_2()
    test_calculate_total_3()
    test_calculate_total_4()
    test_calculate_total_5()
}
