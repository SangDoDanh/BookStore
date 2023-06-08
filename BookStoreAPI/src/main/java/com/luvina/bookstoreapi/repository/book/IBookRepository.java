package com.luvina.bookstoreapi.repository.book;

import com.luvina.bookstoreapi.model.product.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IBookRepository extends JpaRepository<Book, Long> {

    @Query(nativeQuery = true,
            value =
            "SELECT * \n" +
            "from book\n" +
            "where is_remove = false")
    List<Book> getAll();
}
