package com.luvina.bookstoreapi.model.product;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@NoArgsConstructor
@Entity
public class Type {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "is_remove")
    private Boolean isRemove;

    @OneToMany(mappedBy = "type")
    @JsonManagedReference
    private Set<BookType> bookTypes;

    private String name;
}
