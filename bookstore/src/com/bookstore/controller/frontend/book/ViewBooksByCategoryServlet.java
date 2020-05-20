package com.bookstore.controller.frontend.book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.dao.CategoryDAO;
import com.bookstore.entity.Category;
import com.bookstore.service.BookServices;

@WebServlet("/view_category")
public class ViewBooksByCategoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ViewBooksByCategoryServlet() {
	super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	CategoryDAO categoryDAO = new CategoryDAO();

	List<Category> listCategory = categoryDAO.listAll();
	request.setAttribute("listCategory", listCategory);


	BookServices bookServices = new BookServices(request, response);
	bookServices.listBooksByCategory();
    }

}