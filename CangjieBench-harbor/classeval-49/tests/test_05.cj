import std.collection.ArrayList

func test_get_job_applicants() {
    let jobMarketplace = JobMarketplace()
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.resumes.add(resume)
    var jobListing = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    jobMarketplace.jobListings.add(jobListing)
    let result = jobMarketplace.get_job_applicants(jobListing)
    let expected = ArrayList<Resume>()
    expected.add(resume)
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_job_applicants_2() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    var jobListing = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    jobMarketplace.jobListings.add(jobListing)
    let result = jobMarketplace.get_job_applicants(jobListing)
    let expected = ArrayList<Resume>()
    expected.add(resume1)
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_job_applicants_3() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    var jobListing = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill3", "skill4"]))
    jobMarketplace.jobListings.add(jobListing)
    let result = jobMarketplace.get_job_applicants(jobListing)
    let expected = ArrayList<Resume>()
    expected.add(resume2)
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_job_applicants_4() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    var jobListing = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill5", "skill6"]))
    jobMarketplace.jobListings.add(jobListing)
    let result = jobMarketplace.get_job_applicants(jobListing)
    let expected = ArrayList<Resume>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_get_job_applicants_5() {
    let jobMarketplace = JobMarketplace()
    var resume1 = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    var resume2 = Resume("John", ArrayList<String>(["skill3", "skill4"]), "experience")
    jobMarketplace.resumes.add(resume1)
    jobMarketplace.resumes.add(resume2)
    var jobListing = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill6", "skill7"]))
    jobMarketplace.jobListings.add(jobListing)
    let result = jobMarketplace.get_job_applicants(jobListing)
    let expected = ArrayList<Resume>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_get_job_applicants()
    test_get_job_applicants_2()
    test_get_job_applicants_3()
    test_get_job_applicants_4()
    test_get_job_applicants_5()
}
