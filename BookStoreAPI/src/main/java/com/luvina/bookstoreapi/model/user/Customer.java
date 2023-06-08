package com.luvina.bookstoreapi.model.user;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.luvina.bookstoreapi.model.order.Orders;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@NoArgsConstructor
@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;
    private String address;
    private String phone;
    private String yearOfBirth;

    @Column(name = "is_remove")
    private Boolean isRemove;

    @OneToMany(mappedBy = "customer")
    @JsonManagedReference
    private Set<Orders> orders;
}
