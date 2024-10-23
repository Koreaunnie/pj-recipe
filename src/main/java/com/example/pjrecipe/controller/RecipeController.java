package com.example.pjrecipe.controller;

import com.example.pjrecipe.dto.Recipe;
import com.example.pjrecipe.service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("recipe")
public class RecipeController {

    private final RecipeService service;

    // 레시피 등록
    @GetMapping("new")
    public void newRecipe() {

    }

    @PostMapping("new")
    public String newRecipe(Recipe recipe, RedirectAttributes rttr) {
        service.addRecipe(recipe);

        rttr.addFlashAttribute("message", Map.of(
                "text", "레시피가 등록되었습니다."));
        rttr.addAttribute("id", recipe.getId());

        return "redirect:/recipe/list";
    }

    // 레시피 목록
    @GetMapping("list")
    public void listRecipe(Model model) {
        model.addAttribute("recipeList", service.list());

    }

    @GetMapping("view")
    public void viewRecipe(Integer id, Model model) {
        Recipe recipe = service.info(id);
        model.addAttribute("recipe", recipe);
    }
}
