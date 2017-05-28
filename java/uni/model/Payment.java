package uni.model;

/**
 * Created by Calin on 27.05.2017.
 */
import java.sql.Date;
public class Payment {

    private int id;
    private Date paid;
    private float total;
    private String details;
    private int idOrder;

    public Payment() {
    }

    public Payment(int id, Date paid, float total, String details, int idOrder) {
        this.id = id;
        this.paid = paid;
        this.total = total;
        this.details = details;
        this.idOrder = idOrder;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getPaid() {
        return paid;
    }

    public void setPaid(Date paid) {
        this.paid = paid;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }
}
