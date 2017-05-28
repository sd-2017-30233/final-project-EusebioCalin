package uni.model;

public class Customer {

    private int id;
    private String address;
    private String phone;
    private String email;
    private int idAccount;
    private String name;

    public Customer(){}

    public Customer(int id, String address, String phone, String email, int idAccount, String name) {
        this.id = id;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.idAccount = idAccount;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", idAccount=" + idAccount +
                '}';
    }
}
