package com.example.pjrecipe.controller;

import com.example.pjrecipe.service.CalendarService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("calendar")
public class CalendarController {

    private final CalendarService service;

    // 달력
    @RequestMapping("calendar")
    public void calendar() {
    }
}
