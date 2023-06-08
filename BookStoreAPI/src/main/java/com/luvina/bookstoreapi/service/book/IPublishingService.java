package com.luvina.bookstoreapi.service.book;

import com.luvina.bookstoreapi.model.product.Publishing;

import java.util.List;

public interface IPublishingService {
    List<Publishing> getAll();

    Publishing getPublishingById(Long publishingId);
}
