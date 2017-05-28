package uni.model;

import java.sql.Date;


public class Cart {

    private int id;
    private Date creationDate;
    private int idItem;
    private int idAccount;

    public Cart(){}

    public Cart(int id, Date creationDate, int idItem, int idAccount) {
        this.id = id;
        this.creationDate = creationDate;
        this.idItem = idItem;
        this.idAccount = idAccount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public int getIdItem() {
        return idItem;
    }

    public void setIdItem(int idItem) {
        this.idItem = idItem;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", creationDate=" + creationDate +
                ", idItem=" + idItem +
                '}';
    }
}
