package com.luvina.bookstoreapi.repository.book;

import com.luvina.bookstoreapi.model.product.Publishing;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IPublishingRepository extends JpaRepository<Publishing, Long> {
}
