package com.luvina.bookstoreapi.service.book.impl;

import com.luvina.bookstoreapi.model.product.Author;
import com.luvina.bookstoreapi.repository.book.IAuthorRepository;
import com.luvina.bookstoreapi.service.book.IAuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AuthorService implements IAuthorService {

    @Autowired
    private IAuthorRepository authorRepository;
    @Override
    public Author getAuthorById(Long authorId) {

        if (authorId == null)
            return null;
        Optional<Author> author = authorRepository.findById(authorId);

        return author.orElse(null);
    }
}
