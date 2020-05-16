package myApplication.models;

public class User {
    private int id;
    private String name;
    private String surname;
    private String mark;
    private String model;

    public User() {
    }

    public User(int id, String name, String surname, String mark, String model) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.mark = mark;
        this.model = model;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }
}
