package uni.dao.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import uni.dao.OrdersDAO;
import uni.model.Orders;

import javax.sql.DataSource;

@Repository
public class DefaultOrdersDAO implements OrdersDAO {
    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    private JdbcTemplate jdbcTemplate;

    @Override
    public void addOrder(Orders o)
    {
        jdbcTemplate = new JdbcTemplate(dataSource);
      //  String SQL = "insert into orders (ordered, shipped, address, total, idItem) values (?,?,?,?,?)";
      //  jdbcTemplate.update(SQL, p.getPaid(), p.getTotal(), p.getDetails(), p.getIdOrder());
    }
}
