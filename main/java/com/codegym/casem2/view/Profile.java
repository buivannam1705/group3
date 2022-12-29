package com.codegym.casem2.view;

import com.codegym.casem2.clientService.ClientServiceliml;
import com.codegym.casem2.modal.Client;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/profile")
public class Profile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        ClientServiceliml clientServiceliml = new ClientServiceliml();
        Client client = clientServiceliml.getAll().get(clientServiceliml.findIndexByEmail(email));

        req.setAttribute("client",client);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/html5/profile.jsp");
        dispatcher.forward(req,resp);
    }
}
