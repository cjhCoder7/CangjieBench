func test_main() {
    let jobMarketplace = JobMarketplace()
    jobMarketplace.post_job("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"]))
    jobMarketplace.post_job("Mechanical Engineer", "XYZ Company", ArrayList<String>(["skill3", "skill4"]))
    let expected1 = ArrayList<JobListing>()
    expected1.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"])))
    expected1.add(JobListing("Mechanical Engineer", "XYZ Company", ArrayList<String>(["skill3", "skill4"])))
    if (jobMarketplace.jobListings != expected1) {
        throw Exception("Test failed!")
    }
    
    jobMarketplace.remove_job(expected1[1])
    let expected2 = ArrayList<JobListing>()
    expected2.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"])))
    if (jobMarketplace.jobListings != expected2) {
        throw Exception("Test failed!")
    }
    
    jobMarketplace.submit_resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    let expected3 = ArrayList<Resume>()
    expected3.add(Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience"))
    if (jobMarketplace.resumes != expected3) {
        throw Exception("Test failed!")
    }
    
    jobMarketplace.withdraw_resume(expected3[0])
    let expected4 = ArrayList<Resume>()
    if (jobMarketplace.resumes != expected4) {
        throw Exception("Test failed!")
    }
    
    let result1 = jobMarketplace.search_jobs("skill1")
    let expected5 = ArrayList<JobListing>()
    expected5.add(JobListing("Software Engineer", "ABC Company", ArrayList<String>(["skill1", "skill2"])))
    if (result1 != expected5) {
        throw Exception("Test failed!")
    }
    
    var resume = Resume("Tom", ArrayList<String>(["skill1", "skill2"]), "experience")
    jobMarketplace.resumes.add(resume)
    let result2 = jobMarketplace.get_job_applicants(expected2[0])
    let expected6 = ArrayList<Resume>()
    expected6.add(resume)
    if (result2 != expected6) {
        throw Exception("Test failed!")
    }
    
    if (JobMarketplace.matches_requirements(resume, ArrayList<String>(["skill1", "skill2"])) != true) {
        throw Exception("Test failed!")
    }
}

main() {
    test_main()
}