package com.luvina.bookstoreapi.model.product;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.luvina.bookstoreapi.model.order.OrdersDetail;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@NoArgsConstructor
@Entity
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "is_remove")
    private Boolean isRemove;

    private String title;
    private String releaseDate;
    private Integer edition;
    private Double price;
    private String description;
    private String imageUrl;
    private Integer quantity;

    @ManyToOne
    @JoinColumn(name = "author_id", referencedColumnName = "id")
    private Author author;

    @OneToMany(mappedBy = "book")
    @JsonManagedReference
    private Set<BookType> bookTypes;

    @ManyToOne
    @JoinColumn(name = "pub_id", referencedColumnName = "id")
    @JsonBackReference
    private Publishing publishing;

    @OneToMany(mappedBy = "book")
    @JsonManagedReference
    private Set<OrdersDetail> ordersDetails;
}
