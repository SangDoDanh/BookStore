package com.luvina.bookstoreapi.controller.book;

import com.luvina.bookstoreapi.dto.book.BookAdDTO;
import com.luvina.bookstoreapi.dto.book.BookDTO;
import com.luvina.bookstoreapi.model.product.Book;
import com.luvina.bookstoreapi.service.book.IBookService;
import com.luvina.bookstoreapi.service.mapper.IMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/v1/books")
public class BookRestController {

    @Autowired
    private IBookService bookService;

    @Autowired
    IMapperService mapperService;

    @GetMapping("")
    public ResponseEntity<List<BookDTO>> getAllBooks() {
        List<Book> bookList = bookService.getAll();
        List<BookDTO> bookDTOS = mapperService.toListBookDTO(bookList);
        if (bookDTOS.isEmpty()) {
            return new ResponseEntity<>(bookDTOS, HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(bookDTOS, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<BookDTO> getAllBooks(@PathVariable Long id) {
        Optional<Book> book = bookService.getBookById(id);
        if (book.isPresent()) {
            BookDTO bookDTO = mapperService.toBookDTO(book.get());
            return new ResponseEntity<>(bookDTO, HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping()
    public ResponseEntity<?> addBook(@RequestBody BookAdDTO bookAdDTO) {
        if (bookAdDTO == null) {
            return new ResponseEntity<>(HttpStatus.NOT_MODIFIED);
        }

        Book book = mapperService.bookAdDTOToBook(bookAdDTO);
        if ((book = bookService.save(book)) != null) {
            bookService.setBookType(book, bookAdDTO.getBookTypes());
            BookDTO bookDTO = mapperService.toBookDTO(book);
            return new ResponseEntity<>(bookDTO, HttpStatus.CREATED);
        }
        return new ResponseEntity<>(HttpStatus.NOT_MODIFIED);

    }


}
