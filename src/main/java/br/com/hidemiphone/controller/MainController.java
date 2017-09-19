package br.com.hidemiphone.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
    String home() {
        return "index";
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(MainController.class, args);
    }
}