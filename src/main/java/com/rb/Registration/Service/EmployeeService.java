package com.rb.Registration.Service;

import com.rb.Registration.Entity.Employee;
import com.rb.Registration.Repo.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    EmployeeRepo repo;




    public List<Employee> viewall() {

        return repo.findAll();
    }


    public void saveStudent(Employee employee) {
        repo.save(employee);
    }


    public Employee getUserId(Long id) {
        return repo.findById(id).get();
    }

    public void deleteStudent(Long id) {
        repo.deleteById(id);

    }


}
