package com.luvina.bookstoreapi.service.book;

import com.luvina.bookstoreapi.model.product.Book;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface IBookService {
    List<Book> getAll();

    Optional<Book> getBookById(Long id);

    Book save(Book book);

    void setBookType(Book book, Set<Long> bookTypes);
}
