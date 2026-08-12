import std.collection.ArrayList

func test_remove_job() {
    let jobMarketplace = JobMarketplace()
    var jobListing = JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    jobMarketplace.jobListings.add(jobListing)
    jobMarketplace.remove_job(jobListing)
    let expected = ArrayList<JobListing>()
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_job_2() {
    let jobMarketplace = JobMarketplace()
    var jobListing1 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    var jobListing2 = JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    jobMarketplace.jobListings.add(jobListing1)
    jobMarketplace.jobListings.add(jobListing2)
    jobMarketplace.remove_job(jobListing1)
    let expected = ArrayList<JobListing>()
    expected.add(jobListing2)
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_job_3() {
    let jobMarketplace = JobMarketplace()
    var jobListing1 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    var jobListing2 = JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    jobMarketplace.jobListings.add(jobListing1)
    jobMarketplace.jobListings.add(jobListing2)
    jobMarketplace.remove_job(jobListing1)
    jobMarketplace.remove_job(jobListing2)
    let expected = ArrayList<JobListing>()
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

func test_remove_job_4() {
    let jobMarketplace = JobMarketplace()
    var jobListing1 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    var jobListing2 = JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    var jobListing3 = JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    jobMarketplace.jobListings.add(jobListing1)
    jobMarketplace.jobListings.add(jobListing2)
    jobMarketplace.jobListings.add(jobListing3)
    jobMarketplace.remove_job(jobListing1)
    jobMarketplace.remove_job(jobListing2)
    let expected = ArrayList<JobListing>()
    expected.add(jobListing3)
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_remove_job()
    test_remove_job_2()
    test_remove_job_3()
    test_remove_job_4()
}
