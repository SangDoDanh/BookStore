package com.luvina.bookstoreapi.service.mapper.impl;

import com.luvina.bookstoreapi.dto.book.BookAdDTO;
import com.luvina.bookstoreapi.dto.book.BookDTO;
import com.luvina.bookstoreapi.model.product.*;
import com.luvina.bookstoreapi.service.book.*;
import com.luvina.bookstoreapi.service.mapper.IMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class MapperService implements IMapperService {

    @Autowired
    private IPublishingService publishingService;

    @Autowired
    private IAuthorService authorService;

    @Autowired
    ITypeService typeService;

    @Autowired
    IBookTypeService bookTypeService;

    @Autowired
    IBookService bookService;

    @Override
    public BookDTO toBookDTO(Book book) {

        List<Type> types = typeService.getAllTypeByBookId(book.getId());

        String publishingName;
        if(book.getPublishing() != null){
            publishingName = book.getPublishing().getName();
        } else {
            publishingName = null;
        }


        return new BookDTO(
                book.getId(),
                book.getTitle(),
                book.getReleaseDate(),
                book.getEdition(),
                book.getPrice(),
                book.getDescription(),
                book.getImageUrl(),
                book.getQuantity(),
                book.getAuthor().getName(),
                types,
                publishingName);
    }

    @Override
    public Book bookAdDTOToBook(BookAdDTO bookAdDTO) {
        Book book = new Book();

        Publishing publishing = publishingService.getPublishingById(bookAdDTO.getPublishingId());
        Author author = authorService.getAuthorById(bookAdDTO.getAuthorId());


        book.setPublishing(publishing);
        book.setTitle(bookAdDTO.getTitle());
        book.setIsRemove(false);
        book.setReleaseDate(bookAdDTO.getReleaseDate());
        book.setEdition(bookAdDTO.getEdition());
        book.setPrice(bookAdDTO.getPrice());
        book.setDescription(bookAdDTO.getDescription());
        book.setImageUrl(bookAdDTO.getImageUrl());
        book.setQuantity(bookAdDTO.getQuantity());
        book.setAuthor(author);
        return  book;
    }

    @Override
    public List<BookDTO> toListBookDTO(List<Book> bookList) {
        List<BookDTO> bookDTOS = new ArrayList<>();
        BookDTO bookDTO;
        for (Book book : bookList) {
            bookDTO = toBookDTO(book);
            bookDTOS.add(bookDTO);
        }
        return bookDTOS;
    }
}
