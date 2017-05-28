package uni.dao.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import uni.dao.mappers.AccountRowMapper;
import uni.dao.mappers.ItemRowMapper;
import uni.model.Account;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class DefaultAccountDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    @Qualifier("dataSource")
    private DataSource dataSource;

    public void addAccount(Account a){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "insert into account (billingAddress) values (?)";
        jdbcTemplate.update(SQL, a.getBillingAddress());
    }

    public List<Account> getAllAccounts(){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "select * from account;";
        return jdbcTemplate.query(SQL,new AccountRowMapper());
    }

    public int getMaxId(){
        jdbcTemplate = new JdbcTemplate(dataSource);
        String SQL = "select max(id) from account;";
        return jdbcTemplate.queryForObject(SQL,Integer.class);
    }

    public Account getAccountByUsername(String user)
    {
        jdbcTemplate = new JdbcTemplate(dataSource);
        String sql1 = "Select * from account a " +
                " inner join customer cc on a.id=cc.idAccount " +
                " inner join users u on u.idCustomer=cc.id " +
                " where u.username='"+user+"'" ;

        Account account = jdbcTemplate.queryForObject(sql1,new AccountRowMapper());
        return account;
    }

}
