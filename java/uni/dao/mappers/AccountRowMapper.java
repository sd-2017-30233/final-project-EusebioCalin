package uni.dao.mappers;

import org.springframework.jdbc.core.RowMapper;
import uni.model.Account;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by catal on 5/21/2017.
 */
public class AccountRowMapper implements RowMapper<Account> {

    public Account mapRow(ResultSet rs, int rowNum) throws SQLException{

        Account a = new Account();

        a.setId(rs.getInt(1));
        a.setBillingAddress(rs.getString(2));
        a.setIdOrder(rs.getInt(3));
        a.setIdPayment(rs.getInt(4));

        return a;

    }

}
