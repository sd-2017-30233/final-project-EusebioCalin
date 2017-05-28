package uni.model;


public class Account {

    private int id;
    private String billingAddress;
    private int idOrder;
    private int idPayment;

    public Account(){}

    public Account(int id, String billingAddress, int idOrder, int idPayment) {

        this.id = id;
        this.billingAddress = billingAddress;
        this.idOrder = idOrder;
        this.idPayment = idPayment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(String billingAddress) {
        this.billingAddress = billingAddress;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdPayment() {
        return idPayment;
    }

    public void setIdPayment(int idPayment) {
        this.idPayment = idPayment;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", billingAddress='" + billingAddress + '\'' +
                ", idOrder=" + idOrder +
                ", idPayment=" + idPayment +
                '}';
    }
}
