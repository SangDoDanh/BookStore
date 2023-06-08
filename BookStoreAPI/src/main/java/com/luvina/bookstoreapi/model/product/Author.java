package com.luvina.bookstoreapi.model.product;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@NoArgsConstructor
@Entity
public class Author {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
    private String name;
    private String email;
    private String phone;
    private String descriptionAuthor;

    @OneToMany(mappedBy = "author")
    @JsonBackReference
    private Set<Book> books;


    @Column(name = "is_remove")
    private Boolean isRemove;
}
