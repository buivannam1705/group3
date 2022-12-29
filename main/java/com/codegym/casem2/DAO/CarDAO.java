package com.codegym.casem2.DAO;

import com.codegym.casem2.modal.Car;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CarDAO {

    public static List<Car> cars = new ArrayList<>();

    public static List<Car> getAllCar() {
        String sql = "select * from cars";

        Connection connection = ConnectionMySQL.getConnection();

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                String carName = resultSet.getString("nameCar");
                int carID = resultSet.getInt("carID");
                String classify = resultSet.getString("classify");
                String carCompany = resultSet.getString("carCompany");
                double price = resultSet.getDouble("price");
                cars.add(new Car(carName,carID,classify,carCompany,price));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return cars;
    }

    public static boolean saveCar(Car car) {
        String spl = "insert into cars value(?,?,?,?,?)";
        Connection  connection = ConnectionMySQL.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(spl);
            preparedStatement.setString(1,car.getNameCar());
            preparedStatement.setInt(2,car.getCarID());
            preparedStatement.setString(3,car.getClassify());
            preparedStatement.setString(4,car.getCarCompany());
            preparedStatement.setDouble(5,car.getPrice());

            return  preparedStatement.execute();
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean editCar(Car car) {
        String sql = "update cars set nameCar=?,classify=?,carCompany=?,price=? where carID=?";
        Connection connection = ConnectionMySQL.getConnection();
        try {
            PreparedStatement preparedStatement =connection.prepareStatement(sql);
            preparedStatement.setString(1,car.getNameCar());
            preparedStatement.setString(2,car.getClassify());
            preparedStatement.setString(3,car.getCarCompany());
            preparedStatement.setDouble(4,car.getPrice());
            preparedStatement.setInt(5,car.getCarID());
            return preparedStatement.execute();
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }

    public static Car findByCarID(int id) {
        String sql = "select * from cars where carID =" +id;
        Connection connection = ConnectionMySQL.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();

            String nameCar = resultSet.getString("nameCar");
            String classify = resultSet.getString("classify");
            String carCompany = resultSet.getString("carCompany");
            double price = resultSet.getDouble("price");

            return new Car(nameCar,id,classify,carCompany,price);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public static void deleteCar(int carID) {
        String sql = "delete from cars where carID="+carID;

        Connection connection = ConnectionMySQL.getConnection();
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e){
            e.printStackTrace();
        }
    }


}
