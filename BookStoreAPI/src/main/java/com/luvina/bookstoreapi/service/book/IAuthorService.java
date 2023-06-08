package com.luvina.bookstoreapi.service.book;

import com.luvina.bookstoreapi.model.product.Author;

public interface IAuthorService {
    Author getAuthorById(Long authorId);
}
