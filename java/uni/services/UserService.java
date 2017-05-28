package uni.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uni.dao.implementation.*;
import uni.model.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by catal on 5/20/2017.
 */
@Service
public class UserService {

    @Autowired
    DefaultItemDAO itemDAO;

    @Autowired
    DefaultCustomerDAO customerDAO;

    @Autowired
    DefaultCartDAO cartDAO;

    @Autowired
    DefaultAccountDAO accountDAO;

    @Autowired
    DefaultUserDAO userDAO;

    @Autowired
    DefaultPaymentDAO paymentDAO;

    @Autowired
    DefaultOrdersDAO ordersDAO;

    @Autowired
    CreditCardPayment ccp;

    @Autowired
    CurierPayment cp;

    public DefaultPaymentDAO getPaymentDAO() {return paymentDAO;}

    public DefaultOrdersDAO getOrdersDAO() {return ordersDAO;}

    public DefaultAccountDAO getAccountDAO(){
        return accountDAO;
    }

    public DefaultCustomerDAO getCustomerDAO(){
        return customerDAO;
    }

    public DefaultUserDAO getUserDAO(){
        return userDAO;
    }

    public DefaultCartDAO getCartDAO(){
        return cartDAO;
    }

    public DefaultItemDAO getItemDAO(){
        return itemDAO;
    }

    public List<Item> getAllItems(){
        return itemDAO.getAllItems();
    }

    public List<Item> getItemsByParam(String param)
    {
        Filter videocards = new VideoCardFilter();
        Filter processors = new ProcessorFilter();
        Filter rams = new MemoryModulesFilter();
        Filter motherboards = new MotherboardsFilter();
        List<Item> items = itemDAO.getAllItems();

        switch(param)
        {
            case "videoCards":
                System.out.println(param);
                return videocards.meetCriteria(items);
            case "processors":
                System.out.println(param);
                return processors.meetCriteria(items);
            case "memoryModules":
                System.out.println(param);
                return rams.meetCriteria(items);
            case "motherboards":
                System.out.println(param);
                return motherboards.meetCriteria(items);

        }
        return null;
        //return itemDAO.getItemsByParam(param);
    }

    public String doPayment(String option, String username)
    {
        Context context;
        String result="ORDERED FAILED";
        if (option.equals("creditCard"))
        {
            context = new Context(ccp);
            context.executePayment(username);
            result="ORDER PLACED";
        }
        else if (option.equals("curier"))
        {
            context = new Context(cp);
            context.executePayment(username);
            result="ORDER PLACED";
        }
        return result;
    }

    public boolean usernameExists(String username){
        return userDAO.usernameExists(username);
    }

    public boolean emailExists(String email){
        return customerDAO.emailExists(email);
    }

    public List<Item> getShoppingCartItems (String username) {
        return itemDAO.getShoppingCartItems(username);
    }

    public boolean addItemToCart(int idItem, String username) {
        return itemDAO.addItemToCart(idItem, username);
    }

    public boolean deleteFromCart(int idItem, String username) {
        return itemDAO.deleteFromCart(idItem, username);
    }

    public void deleteItemsFromCart(String username) { itemDAO.deleteItemsFromCart(username);}

    public Item getItemById (int id) {
        return itemDAO.getItemById(id);
    }

    public List<Item> getItemsByName(String name){

        List<Item> items = itemDAO.getAllItems();

        List<Item> foundItems;

        foundItems = items.stream()
                .filter(i -> i.getName().contains(name.toLowerCase()))
                .collect(Collectors.toList());

        return foundItems;

    }
 }
