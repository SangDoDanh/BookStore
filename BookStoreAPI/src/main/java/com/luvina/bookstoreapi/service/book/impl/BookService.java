package com.luvina.bookstoreapi.service.book.impl;

import com.luvina.bookstoreapi.model.product.Book;
import com.luvina.bookstoreapi.model.product.BookType;
import com.luvina.bookstoreapi.model.product.Type;
import com.luvina.bookstoreapi.repository.book.IBookRepository;
import com.luvina.bookstoreapi.service.book.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class BookService implements IBookService {

    @Autowired
    private IBookRepository bookRepository;

    @Autowired
    ITypeService typeService;

    @Autowired
    IBookTypeService bookTypeService;
    @Override
    public List<Book> getAll() {
        return bookRepository.getAll();
    }

    @Override
    public Optional<Book> getBookById(Long id) {
        return bookRepository.findById(id);
    }

    @Override
    public Book save(Book book) {
        return bookRepository.save(book);
    }

    @Override
    public void setBookType(Book book, Set<Long> bookTypes) {

        Set<BookType> bookTypeSet;

        if (bookTypes.isEmpty()) {
            bookTypeSet = null;
        } else {
            bookTypeSet = new HashSet<>();
            for (Long typeId : bookTypes) {
                BookType bookType = new BookType();
                bookType.setBook(book);
                Type type = typeService.getTypeById(typeId);
                bookType.setType(type);
                bookType.setIsRemove(false);
                if(bookTypeService.save(bookType) != null) {
                    bookTypeSet.add(bookType);
                }
            }
        }

        book.setBookTypes(bookTypeSet);

    }
}
