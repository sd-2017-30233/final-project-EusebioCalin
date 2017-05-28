package uni.dao.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import uni.dao.CartDAO;
import uni.model.Cart;

import javax.sql.DataSource;


@Repository
public class DefaultCartDAO implements CartDAO{

    private JdbcTemplate jdbcTemplate;

    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    @Override
    public void addCart(Cart c){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "insert into cart (created, idAccount) values (?,?)";
        jdbcTemplate.update(SQL,c.getCreationDate(), c.getIdAccount());
    }


}
