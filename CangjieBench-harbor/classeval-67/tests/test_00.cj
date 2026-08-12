import std.collection.ArrayList
import std.collection.HashMap

func test_add_dish_1() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)

    let result = order.add_dish(Dish("dish3", 15, 4))
    if (result != true) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 5) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>([Dish("dish3", 15, 4)])) {
        throw Exception("Test failed!")
    }
}

func test_add_dish_2() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)

    let result = order.add_dish(Dish("dish3", 15, 8))
    if (result != false) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 5) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 7) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>()) {
        throw Exception("Test failed!")
    }
}

func test_add_dish_3() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)

    let result = order.add_dish(Dish("dish3", 15, 7))
    if (result != true) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 5) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 0) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>([Dish("dish3", 15, 7)])) {
        throw Exception("Test failed!")
    }
}

func test_add_dish_4() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)

    let result = order.add_dish(Dish("dish3", 15, 6))
    if (result != true) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 5) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 1) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>([Dish("dish3", 15, 6)])) {
        throw Exception("Test failed!")
    }
}

func test_add_dish_5() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)

    let result = order.add_dish(Dish("dish3", 15, 5))
    if (result != true) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 5) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 2) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>([Dish("dish3", 15, 5)])) {
        throw Exception("Test failed!")
    }
}

func test_add_dish_6() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)

    order.menu.clear()
    let result = order.add_dish(Dish("dish1", 10, 5))
    if (result != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_add_dish_1()
    test_add_dish_2()
    test_add_dish_3()
    test_add_dish_4()
    test_add_dish_5()
    test_add_dish_6()
}
