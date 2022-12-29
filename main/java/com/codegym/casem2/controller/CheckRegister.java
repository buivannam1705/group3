package com.codegym.casem2.controller;

import com.codegym.casem2.clientService.ClientServiceliml;
import com.codegym.casem2.modal.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/createUser")
public class CheckRegister extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ClientServiceliml clientServiceliml = new ClientServiceliml();
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        int phoneNumber = Integer.parseInt(req.getParameter("phoneNumber"));
        String password = req.getParameter("password");

        int check = clientServiceliml.findIndexByEmail(email);
        if (check==-1) {
            clientServiceliml.save(new Client(firstName,lastName,email,phoneNumber,password));
            resp.sendRedirect("/login");
        } else {
            resp.sendRedirect("/register");
        }

    }
}
