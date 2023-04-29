package kr.smart.controller;

import kr.smart.entity.Mcourse;
import kr.smart.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CourseController {

    @Autowired
    private CourseService cservice;

    @RequestMapping("/courseRegister")
    public String courseRegister(){
        return "courseRegister";
    }

    @RequestMapping("/courseinsert")
    public @ResponseBody void courseInsert(Mcourse mcourse){
        cservice.courseInsert(mcourse);
        //return "redirect:/";
    }

}
