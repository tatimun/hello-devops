package com.devops.hello_devops;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/hello")
    public String helloDevOps() {
        return "Hello, DevOps!";
    }
}
