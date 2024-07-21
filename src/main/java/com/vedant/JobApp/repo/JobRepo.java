package com.vedant.JobApp.repo;

import com.vedant.JobApp.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Repository
public class JobRepo {
    List<JobPost> jobs = new ArrayList<>(List.of(
            new JobPost(1, "Java Developer", "Must have good experience in core Java", 1, Arrays.asList("Java", "SpringBoot"))
    ));

    public List<JobPost> getAllJobs(){
        return jobs;
    }

    public void addJobs(JobPost job){
        jobs.add(job);
        System.out.println(jobs);
    }
}
