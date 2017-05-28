package uni.dao.mappers;

import org.springframework.jdbc.core.RowMapper;
import uni.model.Orders;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Calin on 27.05.2017.
 */
public class OrdersRowMapper   implements RowMapper<Orders> {

    public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {

        Orders o = new Orders();
//
//        a.setId(rs.getInt(1));
//        a.setBillingAddress(rs.getString(2));
//        a.setIdOrder(rs.getInt(3));
//        a.setIdPayment(rs.getInt(4));

        return o;

    }
}
