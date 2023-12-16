package com.rb.Registration.Controller;

import com.rb.Registration.Entity.Employee;
import com.rb.Registration.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class EmployeeController {
    @Autowired
    EmployeeService service;

    @RequestMapping("/student")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();

        List<Employee> student = service.viewall();
        modelAndView.addObject("student",student);
        modelAndView.setViewName("index");
        return modelAndView;




    }
    @PostMapping("/savestudent")
    public String saveStudent(@ModelAttribute("student") Employee employee) {
        service.saveStudent(employee);
        return "redirect:/student";
    }


    @GetMapping("/addstudent")
    public ModelAndView addStudent() {
        ModelAndView modelAndView = new ModelAndView();
        Employee student = new Employee();
        modelAndView.addObject("student", new Employee());
        modelAndView.setViewName("addstudent");
        return modelAndView;
    }

    @RequestMapping("/edit")
    public ModelAndView getUserId(@RequestParam Long id ,Employee student){
        ModelAndView mav = new ModelAndView("editstudent");
        student = service.getUserId(id);
        mav.addObject("student",student);
        return mav;

    }
    @GetMapping("/deleteStudent")
    public String deleteById(@RequestParam("id") Long id) {
        service.deleteStudent(id);
        return "redirect:/student";
    }

}
