package com.luvina.bookstoreapi.repository.book;

import com.luvina.bookstoreapi.model.product.Type;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ITypeRepository extends JpaRepository<Type, Long> {

    @Query(nativeQuery = true,
            value = "SELECT t.*\n" +
            "from book b\n" +
            "    join book_type bt on b.id = bt.book_id\n" +
            "    join type t on t.id = bt.type_id\n" +
            "where b.id = :id and t.is_remove = false")
    List<Type> getAllTypeByBookId(@Param("id") Long id);
}
