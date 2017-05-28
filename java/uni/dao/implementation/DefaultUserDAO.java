package uni.dao.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import uni.model.User;

import javax.sql.DataSource;


@Repository
public class DefaultUserDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    public boolean usernameExists(String username){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "select count(*) from users where username = '" + username +"'";
        int count = jdbcTemplate.queryForObject(SQL, Integer.class);

        return count > 0;
    }

    public void addUser(User u){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "insert into users (username, password, enabled, idCustomer) values (?,?,?,?)";
        jdbcTemplate.update(SQL, u.getUsername(),u.getPassword(),u.getEnabled(),u.getIdCustomer());
    }

    public void addUserRoles(String username){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "insert into user_roles (username, role) values (?,?)";
        jdbcTemplate.update(SQL,username,"ROLE_USER");
    }

}
