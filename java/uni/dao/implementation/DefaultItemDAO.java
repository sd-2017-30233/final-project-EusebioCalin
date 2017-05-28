package uni.dao.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import uni.dao.ItemDAO;
import uni.dao.mappers.ItemRowMapper;
import uni.model.Item;

import javax.sql.DataSource;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;


@Repository
public class DefaultItemDAO implements ItemDAO{

    private JdbcTemplate jdbcTemplate;

    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    public List<Item> getAllItems(){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "select * from item;";
        return jdbcTemplate.query(SQL,new ItemRowMapper());
    }

    public List<Item> getItemsByParam(String param) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        String sql = "select * from item where category='"+param+"'";
        return jdbcTemplate.query(sql, new ItemRowMapper());
    }

    public Item getItemById(int id)
    {
        jdbcTemplate = new JdbcTemplate(dataSource);
        String sql = "select * from item where id='"+id+"'";
        return jdbcTemplate.queryForObject(sql, new ItemRowMapper());
    }

    public List<Item> getShoppingCartItems(String username) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        String sql = "Select *" +
                " from item i " +
                " inner join cart c on c.idItem=i.id " +
                " inner join account a on a.id=c.idAccount " +
                " inner join customer cc on cc.idAccount=a.id " +
                " inner join users u on u.idCustomer = cc.id"+
                " where u.username = '" + username + "';";

        return jdbcTemplate.query(sql, new ItemRowMapper());
        //return jdbcTemplate.query(sql,new Ite)
    }

    public boolean addItemToCart(int idItem, String username)
    {
        jdbcTemplate = new JdbcTemplate(dataSource);
        Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        String sql1 = "Select a.id from account a " +
                " inner join customer cc on a.id=cc.idAccount " +
                " inner join users u on u.idCustomer=cc.id " +
                " where u.username='"+username+"'" ;

        int idAccount = jdbcTemplate.queryForObject(sql1, Integer.class);

        String sql2 ="insert into cart "+
                " (created,idAccount, idItem) values (?,?,?)";

        jdbcTemplate.update(sql2,null,idAccount,idItem);
        return false;
    }

    public boolean deleteFromCart(int idItem, String username)
    {
        jdbcTemplate = new JdbcTemplate(dataSource);
        Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        String sql1 = "Select a.id from account a " +
                " inner join customer cc on a.id=cc.idAccount " +
                " inner join users u on u.idCustomer=cc.id " +
                " where u.username='"+username+"'" ;

        int idAccount = jdbcTemplate.queryForObject(sql1, Integer.class);

        String sql2 =
                "delete from cart " +
                "where idItem = ? and idAccount =? "+
                "limit 1";

        jdbcTemplate.update(sql2,idItem,idAccount);
        return false;
    }

    public void deleteItemsFromCart( String username)
    {
        jdbcTemplate = new JdbcTemplate(dataSource);
       // Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        String sql1 = "Select a.id from account a " +
                " inner join customer cc on a.id=cc.idAccount " +
                " inner join users u on u.idCustomer=cc.id " +
                " where u.username='"+username+"'" ;

        int idAccount = jdbcTemplate.queryForObject(sql1, Integer.class);

        String sql2 =
                "delete from cart " +
                        "where idAccount =? and created is null";
        jdbcTemplate.update(sql2,idAccount);

    }


}
