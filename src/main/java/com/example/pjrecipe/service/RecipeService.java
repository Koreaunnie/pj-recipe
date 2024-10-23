package com.example.pjrecipe.service;

import com.example.pjrecipe.dto.Recipe;
import com.example.pjrecipe.mapper.RecipeMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class RecipeService {

    private final RecipeMapper mapper;

    public void addRecipe(Recipe recipe) {
        mapper.insert(recipe);
    }

    public List<Recipe> list() {
        return mapper.selectAll();
    }

    public Recipe info(Integer id) {
        return mapper.selectById(id);
    }
}
