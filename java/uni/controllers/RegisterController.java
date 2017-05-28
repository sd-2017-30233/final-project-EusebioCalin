package uni.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import uni.model.Account;
import uni.model.Cart;
import uni.model.Customer;
import uni.model.User;
import uni.services.UserService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


@Controller
public class RegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/registerAccount", method = RequestMethod.GET)
    public ModelAndView register(@RequestParam(value = "name") String name,
                                 @RequestParam(value = "username") String username,
                                 @RequestParam(value = "password1") String password1,
                                 @RequestParam(value = "password2") String password2,
                                 @RequestParam(value = "email") String email,
                                 @RequestParam(value = "phone") String phone,
                                 @RequestParam(value = "address") String address){

        ModelAndView modelAndView;

        if(userService.usernameExists(username)){
            modelAndView = new ModelAndView("login");
            modelAndView.addObject("registerMessage","Username already exists!");
            return modelAndView;
        }

        if(!password1.equals(password2)){
            modelAndView = new ModelAndView("login");
            modelAndView.addObject("registerMessage","Password do no match!");
            return modelAndView;
        }

        /*if(!EmailValidator.getInstance().isValid(email)){
            modelAndView = new ModelAndView("login");
            modelAndView.addObject("registerMessage","Invalid email address!");
            return modelAndView;
        }*/

        if(userService.emailExists(email)){
            modelAndView = new ModelAndView("login");
            modelAndView.addObject("registerMessage","Email already exists!");
            return modelAndView;
        }

        modelAndView = new ModelAndView("login");
        modelAndView.addObject("registerMessage","User successfully registered!");

        Account account = new Account();
        account.setBillingAddress(address);
        userService.getAccountDAO().addAccount(account);

        int accountId = userService.getAccountDAO().getMaxId();

        Customer customer = new Customer();
        customer.setName(name);
        customer.setAddress(address);
        customer.setPhone(phone);
        customer.setEmail(email);
        customer.setIdAccount(accountId);

        userService.getCustomerDAO().addCustomer(customer);

        int cusomerId = userService.getCustomerDAO().getMaxId();

        User user = new User();

        user.setUsername(username);
        user.setPassword(password1);
        user.setEnabled(1);
        user.setIdCustomer(cusomerId);

        userService.getUserDAO().addUser(user);
        userService.getUserDAO().addUserRoles(username);

        Cart cart = new Cart();

        java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());

        cart.setCreationDate(date);
        cart.setIdAccount(accountId);

        System.out.println(date);

        userService.getCartDAO().addCart(cart);



        return modelAndView;



    }


}
