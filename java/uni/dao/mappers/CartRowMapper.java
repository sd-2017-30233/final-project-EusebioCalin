package uni.dao.mappers;

import org.springframework.jdbc.core.RowMapper;
import uni.model.Cart;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by catal on 5/21/2017.
 */
public class CartRowMapper implements RowMapper<Cart> {

    public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {

        Cart c = new Cart();

        c.setId(rs.getInt(1));
        c.setCreationDate(rs.getDate(2));
        c.setIdItem(rs.getInt(3));

        return c;

    }

}
