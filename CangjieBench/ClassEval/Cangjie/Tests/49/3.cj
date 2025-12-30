func test_withdraw_resume() {
    let jobMarketplace = JobMarketplace()
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.resumes.add(resume)
    jobMarketplace.withdraw_resume(resume)
    let expected = ArrayList<Resume>()
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_withdraw_resume_2() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    jobMarketplace.withdraw_resume(resume1)
    let expected = ArrayList<Resume>()
    expected.add(resume2)
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_withdraw_resume_3() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    jobMarketplace.withdraw_resume(resume1)
    jobMarketplace.withdraw_resume(resume2)
    let expected = ArrayList<Resume>()
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_withdraw_resume_4() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Amy", ArrayList<String>(["skill3", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    jobMarketplace.withdraw_resume(resume1)
    jobMarketplace.withdraw_resume(resume2)
    let expected = ArrayList<Resume>()
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_withdraw_resume_5() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Amy", ArrayList<String>(["skill1", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    jobMarketplace.withdraw_resume(resume1)
    let expected = ArrayList<Resume>()
    expected.add(resume2)
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_withdraw_resume()
    test_withdraw_resume_2()
    test_withdraw_resume_3()
    test_withdraw_resume_4()
    test_withdraw_resume_5()
}