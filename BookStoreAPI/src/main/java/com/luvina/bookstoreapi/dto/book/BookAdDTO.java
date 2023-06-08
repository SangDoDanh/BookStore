package com.luvina.bookstoreapi.dto.book;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.luvina.bookstoreapi.model.order.OrdersDetail;
import com.luvina.bookstoreapi.model.product.Author;
import com.luvina.bookstoreapi.model.product.BookType;
import com.luvina.bookstoreapi.model.product.Publishing;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class BookAdDTO {
    private String title;
    private String releaseDate;
    private Integer edition;
    private Double price;
    private String description;
    private String imageUrl;
    private Integer quantity;
    private Long authorId;
    private Set<Long> bookTypes;
    private Long publishingId;
}
