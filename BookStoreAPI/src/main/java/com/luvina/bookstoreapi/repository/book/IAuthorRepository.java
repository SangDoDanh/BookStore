package com.luvina.bookstoreapi.repository.book;

import com.luvina.bookstoreapi.model.product.Author;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IAuthorRepository extends JpaRepository<Author, Long> {
}
