package com.luvina.bookstoreapi.service.mapper;

import com.luvina.bookstoreapi.dto.book.BookAdDTO;
import com.luvina.bookstoreapi.dto.book.BookDTO;
import com.luvina.bookstoreapi.model.product.Book;

import java.util.List;
import java.util.Optional;

public interface IMapperService {
    BookDTO toBookDTO(Book book);

    Book bookAdDTOToBook(BookAdDTO bookAdDTO);

    List<BookDTO> toListBookDTO(List<Book> bookList);
}
