package com.luvina.bookstoreapi.dto.book;

import com.luvina.bookstoreapi.model.product.Type;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookDTO {

    private Long id;
    private String title;
    private String releaseDate;
    private Integer edition;
    private Double price;
    private String description;
    private String imageUrl;
    private Integer quantity;
    private String author;
    private List<Type> bookTypes; // type chu khong phai booktype
    private String publishingName;
}
