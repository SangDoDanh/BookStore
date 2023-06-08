package com.luvina.bookstoreapi.repository.book;

import com.luvina.bookstoreapi.model.product.BookType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IBookTypeRepository extends JpaRepository<BookType, Long> {
}
