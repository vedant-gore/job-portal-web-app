package com.vedant.JobApp;

import com.vedant.JobApp.model.JobPost;
import com.vedant.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;



import java.util.List;

// not using requestmapping, if using requestmapping then we will have to specifiy the type of method in the brackets along witht the url

@Controller
public class JobController {
    @Autowired
    private JobService service;

    @GetMapping({"/","home"})
    //@ResponseBody
    public String home(){
        return "home";
    }

    @GetMapping("addjob")
    //@ResponseBody
    public String addJob(){
        return "addjob";
    }

    // @RequestMapping("handleForm", method="post") -> by default requestapping is get
    @PostMapping("handleForm")
    //@ResponseBody
    public String handleForm(JobPost jobPost){
        service.addJob(jobPost);
        return "success";
    }

    @ModelAttribute
    @GetMapping("viewalljobs")
    public String viewAllJobs(Model m){
        List<JobPost> jobs = service.getAllJobs();
        m.addAttribute("jobPosts", jobs);
        return "viewalljobs";
    }
}
