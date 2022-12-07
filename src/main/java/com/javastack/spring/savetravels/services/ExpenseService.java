package com.javastack.spring.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.javastack.spring.savetravels.models.Expenses;
import com.javastack.spring.savetravels.repositories.SaveTravelsRepository;

@Service
public class ExpenseService {

		private final SaveTravelsRepository expenseRepo;
		
		public ExpenseService(SaveTravelsRepository expenseRepo) {
			this.expenseRepo = expenseRepo;
		}
		
		//Returns all expenses
		public List<Expenses> allExpenses(){
			return expenseRepo.findAll();
		}
		//creates an expense
		public Expenses createExpense(Expenses expense) {
			return expenseRepo.save(expense);
		}
		//gets one expense
		public Expenses findExpense(Long id) {
			Optional<Expenses> optionalExpense = expenseRepo.findById(id);
			if(optionalExpense.isPresent()) {
				return optionalExpense.get();
			}
			else {
				return optionalExpense.orElse(null);
			}
		}
	    //updates an expense
	    public Expenses updateExpense(Expenses expense) {
	    	return expenseRepo.save(expense);
	    }
	    //deletes an expense
	    public void deleteExepense(Long id) {
	    	expenseRepo.deleteById(id);
	    }
}
