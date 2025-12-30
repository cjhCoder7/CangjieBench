func test_auto_check_conflict_1() {
    let t = Thermostat(30.0, 25.0, "cool")
    if (t.auto_check_conflict() != true) {
        throw Exception("Test failed!")
    }
}

func test_auto_check_conflict_2() {
    let t = Thermostat(30.0, 25.0, "heat")
    if (t.auto_check_conflict() != false) {
        throw Exception("Test failed!")
    }
    if (t.mode != "cool") {
        throw Exception("Test failed!")
    }
}

func test_auto_check_conflict_3() {
    let t = Thermostat(25.0, 30.0, "heat")
    if (t.auto_check_conflict() != true) {
        throw Exception("Test failed!")
    }
}

func test_auto_check_conflict_4() {
    let t = Thermostat(25.0, 30.0, "cool")
    if (t.auto_check_conflict() != false) {
        throw Exception("Test failed!")
    }
    if (t.mode != "heat") {
        throw Exception("Test failed!")
    }
}

func test_auto_check_conflict_5() {
    let t = Thermostat(25.0, 25.0, "cool")
    if (t.auto_check_conflict() != false) {
        throw Exception("Test failed!")
    }
    if (t.mode != "cool") {
        throw Exception("Test failed!")
    }
}

main() {
    test_auto_check_conflict_1()
    test_auto_check_conflict_2()
    test_auto_check_conflict_3()
    test_auto_check_conflict_4()
    test_auto_check_conflict_5()
}