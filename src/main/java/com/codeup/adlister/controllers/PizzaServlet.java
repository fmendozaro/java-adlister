package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/WEB-INF/pizza-form.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String crustType = request.getParameter("crust_types");
        String sauceType = request.getParameter("sauce_type");
        String pizzaSize = request.getParameter("size");
        String usersAddress = request.getParameter("address");

        // This grabs all the parameters with the name of toppings and returns an array
        String[] toppings = request.getParameterValues("toppings");

        if (crustType != null && sauceType != null && pizzaSize != null && toppings != null && usersAddress != null) {

            System.out.println(crustType);
            System.out.println(sauceType);
            System.out.println(pizzaSize);
            for (int i = 0; i <= toppings.length - 1; i++) {
                System.out.println(toppings[i]);
            }
            System.out.println(usersAddress);

        } else {
            System.out.println("User did not fill in all forms.");
        }

    }

}