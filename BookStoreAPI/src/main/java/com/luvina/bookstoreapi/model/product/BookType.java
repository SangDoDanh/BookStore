package com.luvina.bookstoreapi.model.product;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
public class BookType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "is_remove")
    private Boolean isRemove;

    @ManyToOne
    @JoinColumn(name = "book_id", referencedColumnName = "id")
//    @JsonBackReference
    private Book book;

    @ManyToOne
    @JoinColumn(name = "type_id", referencedColumnName = "id")
    @JsonBackReference
    private Type type;
}
