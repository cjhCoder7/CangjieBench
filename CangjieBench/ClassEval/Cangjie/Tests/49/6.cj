func test_matches_requirements() {
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let requirements = ArrayList<String>(["skill1", "skill2"])
    if (JobMarketplace.matches_requirements(resume, requirements) != true) {
        throw Exception("Test failed!")
    }
}

func test_matches_requirements_2() {
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let requirements = ArrayList<String>(["skill3", "skill4"])
    if (JobMarketplace.matches_requirements(resume, requirements) != false) {
        throw Exception("Test failed!")
    }
}

func test_matches_requirements_3() {
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let requirements = ArrayList<String>(["skill5", "skill6"])
    if (JobMarketplace.matches_requirements(resume, requirements) != false) {
        throw Exception("Test failed!")
    }
}

func test_matches_requirements_4() {
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let requirements = ArrayList<String>(["skill1", "skill3"])
    if (JobMarketplace.matches_requirements(resume, requirements) != false) {
        throw Exception("Test failed!")
    }
}

func test_matches_requirements_5() {
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let requirements = ArrayList<String>(["skill1"])
    if (JobMarketplace.matches_requirements(resume, requirements) != false) {
        throw Exception("Test failed!")
    }
}

main() {
    test_matches_requirements()
    test_matches_requirements_2()
    test_matches_requirements_3()
    test_matches_requirements_4()
    test_matches_requirements_5()
}