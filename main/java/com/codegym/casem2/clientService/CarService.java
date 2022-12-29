package com.codegym.casem2.clientService;

import com.codegym.casem2.DAO.CarDAO;
import com.codegym.casem2.modal.Car;

import java.util.List;

public class CarService {
    public static List<Car> getAllCar() {
        return CarDAO.getAllCar();
    }

    public static Car findByCarID(int ID) {
        return CarDAO.findByCarID(ID);
    }

    public static boolean saveCar(Car car) {
        return CarDAO.saveCar(car);
    }

    public static void edit(Car car) {
        CarDAO.editCar(car);
    }

    public static void delete(int Id){
        CarDAO.deleteCar(Id);
    }


}
