package com.example.dockerdemo.dockerdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PrintController {

    @GetMapping("/")
    public String helloworld() {
        return "Hello World";
    }
}
