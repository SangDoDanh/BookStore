package com.luvina.bookstoreapi.model.order;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.luvina.bookstoreapi.model.product.Book;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity

public class OrdersDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer quantity;

    @Column(name = "is_remove")
    private Boolean isRemove;

    @ManyToOne
    @JoinColumn(name = "orders_id", referencedColumnName = "id")
    @JsonBackReference
    private Orders orders;


    @ManyToOne
    @JoinColumn(name = "book_id", referencedColumnName = "id")
//    @JsonBackReference
    private Book book;
}
