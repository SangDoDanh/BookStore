package com.luvina.bookstoreapi.service.book.impl;

import com.luvina.bookstoreapi.model.product.Publishing;
import com.luvina.bookstoreapi.repository.book.IPublishingRepository;
import com.luvina.bookstoreapi.service.book.IPublishingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PublishingService implements IPublishingService {
    @Autowired
    private IPublishingRepository publishingRepository;

    @Override
    public List<Publishing> getAll() {
        return publishingRepository.findAll();
    }

    @Override
    public Publishing getPublishingById(Long publishingId) {
        if (publishingId == null)
            return null;

        Optional<Publishing> publishing = publishingRepository.findById(publishingId);
        return publishing.orElse(null);
    }
}
