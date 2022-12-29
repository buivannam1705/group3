package com.codegym.casem2.clientService;

import com.codegym.casem2.modal.Client;

import java.util.List;

public interface ClientService {
    List<Client> findAll();


    int findIndex(String email);

    void update(int id, Client client);

    void remove(int index);



}
