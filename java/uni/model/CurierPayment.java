package uni.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import uni.services.UserService;

/**
 * Created by Calin on 27.05.2017.
 */
@Controller
public class CurierPayment implements Strategy {

    @Autowired
    UserService userService ;

    @Override
    public void doPayment(String username)
    {
        userService.deleteItemsFromCart(username);
        System.out.println("in curier payment");
    }
}
