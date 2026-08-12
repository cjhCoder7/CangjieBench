import std.collection.ArrayList

func test_search_jobs() {
    let jobMarketplace = JobMarketplace()
    var jobListing = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    jobMarketplace.jobListings.add(jobListing)
    let result = jobMarketplace.search_jobs("skill1")
    let expected = ArrayList<JobListing>()
    expected.add(jobListing)
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_search_jobs_2() {
    let jobMarketplace = JobMarketplace()
    var jobListing1 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    var jobListing2 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill3", "skill4"]))
    jobMarketplace.jobListings.add(jobListing1)
    jobMarketplace.jobListings.add(jobListing2)
    let result = jobMarketplace.search_jobs("skill1")
    let expected = ArrayList<JobListing>()
    expected.add(jobListing1)
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_search_jobs_3() {
    let jobMarketplace = JobMarketplace()
    var jobListing1 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    var jobListing2 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill3", "skill4"]))
    jobMarketplace.jobListings.add(jobListing1)
    jobMarketplace.jobListings.add(jobListing2)
    let result = jobMarketplace.search_jobs("skill3")
    let expected = ArrayList<JobListing>()
    expected.add(jobListing2)
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_search_jobs_4() {
    let jobMarketplace = JobMarketplace()
    var jobListing1 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    var jobListing2 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill3", "skill4"]))
    jobMarketplace.jobListings.add(jobListing1)
    jobMarketplace.jobListings.add(jobListing2)
    let result = jobMarketplace.search_jobs("skill5")
    let expected = ArrayList<JobListing>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

func test_search_jobs_5() {
    let jobMarketplace = JobMarketplace()
    var jobListing1 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    var jobListing2 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill3", "skill4"]))
    jobMarketplace.jobListings.add(jobListing1)
    jobMarketplace.jobListings.add(jobListing2)
    let result = jobMarketplace.search_jobs("skill6")
    let expected = ArrayList<JobListing>()
    if (result != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_search_jobs()
    test_search_jobs_2()
    test_search_jobs_3()
    test_search_jobs_4()
    test_search_jobs_5()
}
