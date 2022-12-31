package models.view_models.users;

import javax.servlet.http.Part;
import java.time.LocalDate;
import java.util.ArrayList;

public class UserCreateRequest {
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;
    private String address;
    private int gender;
    private String phone;
    private int status;
    private String username;
    private String password;
    private String email;
    private Part avatar;
    private ArrayList<Integer> roleIds;

    public ArrayList<Integer> getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(ArrayList<Integer> roleIds) {
        this.roleIds = roleIds;
    }

    public Part getAvatar() {
        return avatar;
    }

    public void setAvatar(Part avatar) {
        this.avatar = avatar;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
