package uni.dao.mappers;

import org.springframework.jdbc.core.RowMapper;
import uni.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by catal on 5/21/2017.
 */
public class UserRowMapper implements RowMapper<User> {

    public User mapRow(ResultSet rs, int rowNum) throws SQLException{

        User u = new User();

        u.setUsername(rs.getString(1));
        u.setPassword(rs.getString(2));
        u.setEnabled(rs.getInt(3));

        return u;

    }

}
