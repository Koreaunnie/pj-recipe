package com.example.pjrecipe.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("calender")
public class CalendarController {
    // 달력
    @RequestMapping("calender")
    public void calendar() {
    }
}
