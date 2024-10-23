package com.example.pjrecipe.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Recipe {
    private Integer id;
    private String name;
    private String description;
    private LocalDateTime created;
}
