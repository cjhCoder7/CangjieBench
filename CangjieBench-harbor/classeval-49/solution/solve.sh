#!/usr/bin/env bash

set -euo pipefail

cat > /workspace/main.cj <<'__CANGJIEBENCH_CLASSEVAL_SOLUTION__'
import std.collection.ArrayList

class Resume <: Equatable<Resume> {

    let name: String
    let skills: ArrayList<String>
    let experience: String

    public init(name: String, skills: ArrayList<String>, experience: String) {
        this.name = name
        this.skills = skills
        this.experience = experience
    }

    public override operator func != (that: Resume): Bool {
        return this.name != that.name || this.skills != that.skills || this.experience != that.experience
    }

    public override operator func == (that: Resume): Bool {
        return this.name == that.name && this.skills == that.skills && this.experience == that.experience
    }
}

class JobListing <: Equatable<JobListing> {

    let job_title: String
    let company: String
    let requirements: ArrayList<String>

    public init(job_title: String, company: String, requirements: ArrayList<String>) {
        this.job_title = job_title
        this.company = company
        this.requirements = requirements
    }

    public override operator func != (that: JobListing): Bool {
        return this.job_title != that.job_title || this.company != that.company || this.requirements != that.requirements
    }

    public override operator func == (that: JobListing): Bool {
        return this.job_title == that.job_title && this.company == that.company && this.requirements == that.requirements
    }
}

class JobMarketplace {

    let jobListings: ArrayList<JobListing>
    let resumes: ArrayList<Resume>

    public init() {
        this.jobListings = ArrayList<JobListing>()
        this.resumes = ArrayList<Resume>()
    }

    public func post_job(job_title: String, company: String, requirements: ArrayList<String>): Unit {
        this.jobListings.add(JobListing(job_title, company, requirements))
    }

    public func remove_job(job: JobListing): Unit {
        var index = -1
        for (i in 0..this.jobListings.size) {
            if (this.jobListings[i] == job) {
                index = i
                break
            }
        }
        if (index != -1) {
            this.jobListings.remove(at: index)
        }
    }

    public func submit_resume(name: String, skills: ArrayList<String>, experience: String): Unit {
        this.resumes.add(Resume(name, skills, experience))
    }

    public func withdraw_resume(resume: Resume): Unit {
        var index = -1
        for (i in 0..this.resumes.size) {
            if (this.resumes[i] == resume) {
                index = i
                break
            }
        }
        if (index != -1) {
            this.resumes.remove(at: index)
        }
    }

    public func search_jobs(criteria: String): ArrayList<JobListing> {
        let matching_jobs = ArrayList<JobListing>()
        for (job_listing in this.jobListings) {
            let lower_requirements = ArrayList<String>(job_listing.requirements)
            for (i in 0..lower_requirements.size) {
                lower_requirements[i] = lower_requirements[i].toAsciiLower()
            }
            if (job_listing.job_title.toAsciiLower().contains(criteria.toAsciiLower()) || lower_requirements.contains(criteria.toAsciiLower())) {
                matching_jobs.add(job_listing)
            }
        }
        return matching_jobs
    }

    public func get_job_applicants(job: JobListing): ArrayList<Resume> {
        let applicants = ArrayList<Resume>()
        for (resume in this.resumes) {
            if (matches_requirements(resume, job.requirements)) {
                applicants.add(resume)
            }
        }
        return applicants
    }

    public static func matches_requirements(resume: Resume, requirements: ArrayList<String>): Bool {
        for (skill in resume.skills) {
            if (!requirements.contains(skill)) {
                return false
            }
        }
        return true
    }
}
__CANGJIEBENCH_CLASSEVAL_SOLUTION__
