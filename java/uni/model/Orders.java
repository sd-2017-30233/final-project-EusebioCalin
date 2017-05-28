package uni.model;

/**
 * Created by Calin on 27.05.2017.
 */
import java.sql.Date;
public class Orders {
    private int id;
    private Date ordered;
    private Date shipped;
    private String address;
    private float total;
    private int idItem;
   // private int idPayment;

    public Orders() {
    }

    public Orders(int id, Date ordered, Date shipped, String address, float total, int idItem) {
        this.id = id;
        this.ordered = ordered;
        this.shipped = shipped;
        this.address = address;
        this.total = total;
        this.idItem = idItem;
    //    this.idPayment = idPayment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getOrdered() {
        return ordered;
    }

    public void setOrdered(Date ordered) {
        this.ordered = ordered;
    }

    public Date getShipped() {
        return shipped;
    }

    public void setShipped(Date shipped) {
        this.shipped = shipped;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public int getIdItem() {
        return idItem;
    }

    public void setIdItem(int idItem) {
        this.idItem = idItem;
    }

}
