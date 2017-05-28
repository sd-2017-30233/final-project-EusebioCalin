package uni.dao.mappers;


import org.springframework.jdbc.core.RowMapper;
import uni.model.Item;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by catal on 5/20/2017.
 */
public class ItemRowMapper implements RowMapper<Item> {

    public Item mapRow(ResultSet rs, int rowNum) throws SQLException {

        Item i = new Item();

        i.setId(rs.getInt(1));
        i.setName(rs.getString(2));
        i.setQuantity(rs.getInt(3));
        i.setPrice(rs.getFloat(4));
        i.setDescription(rs.getString(5));
        i.setCategory((rs.getString(6)));
        i.setPicture((rs.getString(7)));

        return i;
    }

}
