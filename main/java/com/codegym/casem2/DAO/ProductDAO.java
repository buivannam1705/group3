package com.codegym.casem2.DAO;

import com.codegym.casem2.modal.Client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    List<Client> clients = new ArrayList<>();
    public  List<Client> getAll(){

        String sql = "select * from clients";

        Connection connection = ConnectionMySQL.getConnection();

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString("lastName");
                String email = resultSet.getString("email");
                int phoneNumber = resultSet.getInt("phoneNumber");
                String password = resultSet.getString("password");
                clients.add(new Client(firstName,lastName,email,phoneNumber,password));
            }
        } catch (Exception e) {
            throw  new RuntimeException(e);
        }
        return clients;
    }

    public boolean Save(Client client) {
        String spl = "insert into clients value(?,?,?,?,?)";
        Connection connection = ConnectionMySQL.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(spl);
            preparedStatement.setString(1,client.getFirstName());
            preparedStatement.setString(2,client.getLastName());
            preparedStatement.setString(3,client.getEmail());
            preparedStatement.setInt(4,client.getPhoneNumber());
            preparedStatement.setString(5,client.getPassword());
            return preparedStatement.execute();

        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public boolean edit(Client client) {
        String spl = "update clients set firstName=?,lastName=? , phoneNumber=?,password= ?where email = ?";
        Connection connection = ConnectionMySQL.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(spl);
            preparedStatement.setString(5,client.getEmail());
            preparedStatement.setString(1,client.getFirstName());
            preparedStatement.setString(2,client.getLastName());
            preparedStatement.setInt(3,client.getPhoneNumber());
            preparedStatement.setString(4,client.getPassword());
            return preparedStatement.execute();
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public  Client findByEmail(String email,String pass) {
        String sql = "select * from clients where (email =? and password = ?)";
        Connection connection = ConnectionMySQL.getConnection();
        getAll();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,pass);

            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();

            String firstName = resultSet.getString("firstName");
            String lastName = resultSet.getString("lastName");
            int phoneNumber = resultSet.getInt("phoneNumber");
            String password =resultSet.getString("password");

            return new Client(firstName,lastName,email,phoneNumber,password);

        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public  void delete(String email) {
        String sql = "delete from clients where email="+email;
        Connection connection = ConnectionMySQL.getConnection();

        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



}
