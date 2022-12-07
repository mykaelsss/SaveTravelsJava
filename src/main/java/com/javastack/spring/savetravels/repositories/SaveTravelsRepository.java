package com.javastack.spring.savetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.javastack.spring.savetravels.models.Expenses;

@Repository
public interface SaveTravelsRepository extends CrudRepository<Expenses, Long> {
	List<Expenses> findAll();
}
