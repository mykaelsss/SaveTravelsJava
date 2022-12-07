package com.javastack.spring.savetravels.controllers;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.javastack.spring.savetravels.models.Expenses;
import com.javastack.spring.savetravels.services.ExpenseService;

@Controller
public class ExpensesController {

	private final ExpenseService expenseService;
	
	public ExpensesController(ExpenseService expenseService) {
		this.expenseService = expenseService;
	}
	
	@GetMapping("/")
	public String home(Model model) {
		ArrayList<Expenses> expenses = new ArrayList<Expenses>();
		expenses = (ArrayList<Expenses>) expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		return "home.jsp";
	}
	
	@GetMapping("/new/expense")
	public String newExpense(@ModelAttribute("expense") Expenses expense) {
		return "create.jsp";
	}
	
	@PostMapping("/add/expense")
	public String createExpense(@Valid @ModelAttribute("expense") Expenses expense, BindingResult result) {
		if(result.hasErrors()) {
			return "create.jsp";
		}
		else {
			expenseService.createExpense(expense);
			return "redirect:/";
		}
	}
	
	@GetMapping("/edit/{id}")
	public String editExpense(@PathVariable("id") Long id, Model model) {
		Expenses expense = expenseService.findExpense(id);
		model.addAttribute("expense", expense);
		return "edit.jsp";
	}
	
	@PutMapping("/push/edit/{id}")
	public String pushEdit(@Valid @ModelAttribute("expense") Expenses expense, BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		}
		else {
			expenseService.updateExpense(expense);
			return "redirect:/";
		}
	}
	
	@GetMapping("/expenses/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Expenses expense = expenseService.findExpense(id);
		model.addAttribute("expense", expense);
		return "show.jsp";
	}
	
	@DeleteMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		expenseService.deleteExepense(id);
		return "redirect:/";
	}
}
