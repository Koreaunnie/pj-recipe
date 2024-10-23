package com.example.pjrecipe.mapper;

import com.example.pjrecipe.dto.Recipe;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RecipeMapper {

    @Insert("""
            INSERT INTO Recipes
            (name, description)
            VALUES (#{name}, #{description})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(Recipe recipe);

    @Select("""
            SELECT *
            FROM Recipes
            """)
    List<Recipe> selectAll();

    @Select("""
            SELECT *
            FROM Recipes
            WHERE id = #{id}
            """)
    Recipe selectById(Integer id);
}
