func test_submit_resume() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let expected = ArrayList<Resume>()
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_submit_resume_2() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.submit_resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    let expected = ArrayList<Resume>()
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    expected.add(Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience"))
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_submit_resume_3() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.submit_resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let expected = ArrayList<Resume>()
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    expected.add(Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience"))
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_submit_resume_4() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.submit_resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.submit_resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    let expected = ArrayList<Resume>()
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    expected.add(Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience"))
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    expected.add(Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience"))
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

func test_submit_resume_5() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.submit_resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.submit_resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let expected = ArrayList<Resume>()
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    expected.add(Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience"))
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    expected.add(Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience"))
    expected.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    if (jobMarketplace.resumes != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_submit_resume()
    test_submit_resume_2()
    test_submit_resume_3()
    test_submit_resume_4()
    test_submit_resume_5()
}