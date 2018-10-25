package com.moc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class ErrorController {

    @GetMapping(value = "/errors")
    protected String error() {
        return "jsp/page404";
    }
}
