package com.luvina.bookstoreapi.controller.book;

import com.luvina.bookstoreapi.model.product.Publishing;
import com.luvina.bookstoreapi.service.book.IPublishingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/v1/publishing")
public class PublishingRestController {

    @Autowired
    private IPublishingService publishingService;


    @GetMapping("")

    public ResponseEntity<List<Publishing>> getAllPublishing() {
        List<Publishing> publishings = publishingService.getAll();
        return  new ResponseEntity<>(publishings, HttpStatus.OK);
    }
}
