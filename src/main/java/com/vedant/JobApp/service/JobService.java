package com.vedant.JobApp.service;

import com.vedant.JobApp.model.JobPost;
import com.vedant.JobApp.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepo repo;

    public void addJob(JobPost jobPost){
        repo.addJobs(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return repo.getAllJobs();
    }
}
