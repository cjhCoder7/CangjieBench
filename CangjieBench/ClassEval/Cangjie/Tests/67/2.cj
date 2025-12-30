func test_checkout_1() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 2))
    order.add_dish(Dish("dish3", 20, 2))
    let result = order.checkout()
    if (result != 50.0) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 5) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>()) {
        throw Exception("Test failed!")
    }
}

func test_checkout_2() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    let result = order.checkout()
    if (result != None) {
        throw Exception("Test failed!")
    }
}

func test_checkout_3() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 1))
    order.add_dish(Dish("dish3", 20, 1))
    let result = order.checkout()
    if (result != 25.0) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 4) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 6) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>()) {
        throw Exception("Test failed!")
    }
}

func test_checkout_4() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)

    order.add_dish(Dish("dish1", 10, 3))
    order.add_dish(Dish("dish3", 20, 3))
    let result = order.checkout()
    if (result != 75.0) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 2) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish2") {
            if (menu_dish.count != 3) {
                throw Exception("Test failed!")
            }
        }
        if (menu_dish.dish == "dish3") {
            if (menu_dish.count != 4) {
                throw Exception("Test failed!")
            }
        }
    }
    if (order.selected_dishes != ArrayList<Dish>()) {
        throw Exception("Test failed!")
    }
}

func test_checkout_5() {
    let order = Order()
    order.menu.add(Dish("dish1", 10, 5))
    order.menu.add(Dish("dish2", 15, 3))
    order.menu.add(Dish("dish3", 20, 7))
    order.sales.add("dish1", 0.9)
    order.sales.add("dish2", 1.0)
    order.sales.add("dish3", 0.8)
    
    order.add_dish(Dish("dish1", 10, 5))
    order.add_dish(Dish("dish3", 20, 5))
    let result = order.checkout()
    if (result != 125.0) {
        throw Exception("Test failed!")
    }

    let menu = order.menu
    for (menu_dish in menu) {
        if (menu_dish.dish == "dish1") {
            if (menu_dish.count != 0) {
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
    if (order.selected_dishes != ArrayList<Dish>()) {
        throw Exception("Test failed!")
    }
}

main() {
    test_checkout_1()
    test_checkout_2()
    test_checkout_3()
    test_checkout_4()
    test_checkout_5()
}