package com.luvina.bookstoreapi.service.book;

import com.luvina.bookstoreapi.model.product.Type;

import java.util.List;

public interface ITypeService {
    Type getTypeById(Long typeId);

    List<Type> getAllTypeByBookId(Long id);
}
