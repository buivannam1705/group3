package com.codegym.casem2.clientService;

import com.codegym.casem2.DAO.ProductDAO;
import com.codegym.casem2.modal.Car;
import com.codegym.casem2.modal.Client;

import java.util.ArrayList;
import java.util.List;

public class ClientServiceliml {

    ProductDAO productDAO = new ProductDAO();


    public List<Client> getAll() {
        return productDAO.getAll();
    }

    public Client findByEmail(String email,String  pass){
        return productDAO.findByEmail(email,pass);
    }

    public boolean save(Client client){
        return productDAO.Save(client);
    }

    public void edit(Client client) {
        productDAO.edit(client);
    }

    public void delete(String email){
        productDAO.delete(email);
    }

    public  int findIndexByEmail(String email ){
        for (int i = 0; i < productDAO.getAll().size(); i++) {
            if (productDAO.getAll().get(i).getEmail().equals(email)){
                return i;
            }
        }
        return -1;
    }

    public int checkLogin(String email,String pass){
        for (int i = 0; i < productDAO.getAll().size(); i++) {
            if (productDAO.getAll().get(i).getEmail().equals(email) && productDAO.getAll().get(i).getPassword().equals(pass)){
                return i;
            }
        }
        return -1;
    }


}
