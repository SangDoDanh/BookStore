package com.luvina.bookstoreapi.service.book.impl;

import com.luvina.bookstoreapi.model.product.BookType;
import com.luvina.bookstoreapi.repository.book.IBookTypeRepository;
import com.luvina.bookstoreapi.service.book.IBookTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookTypeService implements IBookTypeService {

    @Autowired
    private IBookTypeRepository typeRepository;
    @Override
    public BookType save(BookType bookType) {
        if (bookType == null)
            return null;
        return typeRepository.save(bookType);
    }
}
