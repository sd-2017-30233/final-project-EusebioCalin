package uni.dao.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import uni.dao.CustomerDAO;
import uni.model.Customer;

import javax.sql.DataSource;

@Repository
public class DefaultCustomerDAO implements CustomerDAO{

    private JdbcTemplate jdbcTemplate;

    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    public void addCustomer(Customer c){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "insert into customer (address, phone, email, idAccount, name) values (?,?,?,?,?)";
        jdbcTemplate.update(SQL,c.getAddress(),c.getPhone(),c.getEmail(),c.getIdAccount(),c.getName());
    }

    public boolean emailExists(String email){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "select count(*) from customer where email = '" + email +"'";
        int count = jdbcTemplate.queryForObject(SQL, Integer.class);

        return count > 0;
    }

    public int getMaxId(){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "select max(id) from customer;";
        return jdbcTemplate.queryForObject(SQL,Integer.class);
    }

}
