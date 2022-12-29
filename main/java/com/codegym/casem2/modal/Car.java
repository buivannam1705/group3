package com.codegym.casem2.modal;

public class Car {
    private String nameCar;
    private int carID;
    private String classify;
    private String carCompany;
    private Double price;

    public Car() {
    }

    public Car(String nameCar, int carID, String classify, String carCompany, Double price) {
        this.nameCar = nameCar;
        this.carID = carID;
        this.classify = classify;
        this.carCompany = carCompany;
        this.price = price;
    }

    public String getNameCar() {
        return nameCar;
    }

    public void setNameCar(String nameCar) {
        this.nameCar = nameCar;
    }

    public int getCarID() {
        return carID;
    }

    public void setCarID(int carID) {
        this.carID = carID;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getCarCompany() {
        return carCompany;
    }

    public void setCarCompany(String carCompany) {
        this.carCompany = carCompany;
    }


    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}
