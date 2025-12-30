func test_post_job() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.post_job("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    let expected = ArrayList<JobListing>()
    expected.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2'])))
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

func test_post_job_2() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.post_job("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    let expected = ArrayList<JobListing>()
    expected.add(JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4'])))
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

func test_post_job_3() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.post_job("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    jobMarketplace.post_job("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    let expected = ArrayList<JobListing>()
    expected.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2'])))
    expected.add(JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4'])))
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

func test_post_job_4() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.post_job("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    jobMarketplace.post_job("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    jobMarketplace.post_job("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    let expected = ArrayList<JobListing>()
    expected.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2'])))
    expected.add(JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4'])))
    expected.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2'])))
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

func test_post_job_5() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.post_job("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    jobMarketplace.post_job("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    jobMarketplace.post_job("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2']))
    jobMarketplace.post_job("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4']))
    let expected = ArrayList<JobListing>()
    expected.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2'])))
    expected.add(JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4'])))
    expected.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(['requirement1', 'requirement2'])))
    expected.add(JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(['requirement3', 'requirement4'])))
    if (jobMarketplace.jobListings != expected) {
        throw Exception("Test failed!")
    }
}

main() {
    test_post_job()
    test_post_job_2()
    test_post_job_3()
    test_post_job_4()
    test_post_job_5()
}