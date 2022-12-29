package com.codegym.casem2.controller;

import com.codegym.casem2.clientService.ClientServiceliml;
import com.codegym.casem2.modal.Client;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/checkLogin")
public class checkLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ClientServiceliml clientServiceliml = new ClientServiceliml();
        String email = req.getParameter("name");
        String password = req.getParameter("password");
        clientServiceliml.getAll();
        Client client = clientServiceliml.findByEmail(email,password);


        if (client!=null) {
            HttpSession session = req.getSession();
            session.setAttribute("client",client);
            resp.sendRedirect("/carHome");
        } else  {
            resp.sendRedirect("/login");
        }
    }
}
