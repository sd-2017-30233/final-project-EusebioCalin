package uni.dao.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import uni.dao.PaymentDAO;
import uni.model.Payment;

import javax.sql.DataSource;


@Repository
public class DefaultPaymentDAO implements PaymentDAO {
    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    private JdbcTemplate jdbcTemplate;

    @Override
    public void addPayment(Payment p)
    {
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "insert into payment (paid, total, details, idOrder) values (?,?,?,?)";
        jdbcTemplate.update(SQL, p.getPaid(), p.getTotal(), p.getDetails(), p.getIdOrder());
    }
}
