package uni.dao.mappers;

import org.springframework.jdbc.core.RowMapper;
import uni.model.Customer;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by catal on 5/21/2017.
 */
public class CustomerRowMapper implements RowMapper<Customer>{

    public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {

        Customer c = new Customer();

        c.setId(rs.getInt(1));
        c.setAddress(rs.getString(2));
        c.setPhone(rs.getString(3));
        c.setEmail(rs.getString(4));
        c.setIdAccount(rs.getInt(5));
        c.setName(rs.getString(6));

        return c;

    }

}
