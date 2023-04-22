package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourseRegisterController {
    @RequestMapping("/courseRegister")
    public String courseRegister(){
        return "courseRegister";
    }
}
