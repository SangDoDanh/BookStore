package com.luvina.bookstoreapi.service.book.impl;

import com.luvina.bookstoreapi.model.product.Type;
import com.luvina.bookstoreapi.repository.book.ITypeRepository;
import com.luvina.bookstoreapi.service.book.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class TypeService implements ITypeService {

    @Autowired
    private ITypeRepository typeRepository;
    @Override
    public Type getTypeById(Long typeId) {
        if (typeId == null)
            return null;

        Optional<Type> type = typeRepository.findById(typeId);

        return type.orElse(null);
    }

    @Override
    public List<Type> getAllTypeByBookId(Long id) {
        if (id == null)
            return  null;
        return typeRepository.getAllTypeByBookId(id);
    }
}
