package uni.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import uni.model.Account;
import uni.model.Item;
import uni.model.Orders;
import uni.model.Payment;
import uni.services.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/user/{param}", method = RequestMethod.GET)
    public ModelAndView videoCardList(@PathVariable("param") String param)
    {
        ModelAndView modelAndView = new ModelAndView(param);
        List<Item> items = userService.getItemsByParam(param);
        modelAndView.addObject("itemList",items);
        return modelAndView;
    }

    @RequestMapping(value="/user/shopping_cart", method = RequestMethod.GET)
    public ModelAndView shoppingCart()
    {
        ModelAndView modelAndView = new ModelAndView("shopping_cart");

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object usernameObj = authentication.getName();
        String username = usernameObj.toString();
        //System.out.println(username.toString());

        List<Item> items = userService.getShoppingCartItems(username);
        modelAndView.addObject("itemList",items);
        return modelAndView;
    }

    @RequestMapping(value="/user/add_to_cart", method = RequestMethod.GET)
    public ModelAndView addToCart(HttpServletRequest request)
    {
        System.out.println("aici!!");
        ModelAndView modelAndView = new ModelAndView("redirect:/user/shopping_cart");
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object usernameObj = authentication.getName();
        String username = usernameObj.toString();
        String[] id= request.getParameterValues("idItem");
        int idItem = Integer.parseInt(id[0]);
        userService.addItemToCart(idItem, username);

        List<Item> items = userService.getShoppingCartItems(username);
        modelAndView.addObject("itemList",items);
        return modelAndView;
    }

    @RequestMapping(value="/user/delete_from_cart", method = RequestMethod.GET)
    public ModelAndView deleteToCart(HttpServletRequest request)
    {
       // System.out.println("aici!!");
        ModelAndView modelAndView = new ModelAndView("redirect:/user/shopping_cart");
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object usernameObj = authentication.getName();
        String username = usernameObj.toString();
        String[] id= request.getParameterValues("idDelete");
        int idItem = Integer.parseInt(id[0]);
        userService.deleteFromCart(idItem,username);

        List<Item> items = userService.getShoppingCartItems(username);
        modelAndView.addObject("itemList",items);
        return modelAndView;
    }

    @RequestMapping(value="/user/videocard_details", method = RequestMethod.GET)
    public ModelAndView videocardDetails (@RequestParam("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("videocard_details");
        Item item = userService.getItemById(id);
        modelAndView.addObject("item",item);
        return modelAndView;
    }

    @RequestMapping(value="/user/processor_details", method = RequestMethod.GET)
    public ModelAndView processorDetails (@RequestParam("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("processor_details");
        Item item = userService.getItemById(id);
        modelAndView.addObject("item",item);
        return modelAndView;
    }
    @RequestMapping(value="/user/motherboard_details", method = RequestMethod.GET)
    public ModelAndView motherboardDetails (@RequestParam("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("motherboard_details");
        Item item = userService.getItemById(id);
        modelAndView.addObject("item",item);
        return modelAndView;
    }
    @RequestMapping(value="/user/memorymodules_details", method = RequestMethod.GET)
    public ModelAndView memoryDetails (@RequestParam("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("memorymodules_details");
        Item item = userService.getItemById(id);
        modelAndView.addObject("item",item);
        return modelAndView;
    }

    @RequestMapping(value="/user/search", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(value = "searchString") String searchString,
                               HttpServletRequest request){

        ModelAndView modelAndView = new ModelAndView("searchResult");

        System.out.println(searchString);

        String[] options = request.getParameterValues("option");
        System.out.println(options[0]);

        if(options[0].equals("all")) {
            List<Item> foundItems = userService.getItemsByName(searchString);
            modelAndView.addObject("itemList",foundItems);
            return  modelAndView;
        }
        else{
            List<Item> items = userService.getItemsByName(searchString);
            List<Item> foundItems = items.stream()
                    .filter(i -> i.getCategory().contains(options[0].toLowerCase()))
                    .collect(Collectors.toList());

            System.out.println("SIZE: " + foundItems.size());

            if(foundItems.size() == 0){
                modelAndView.addObject("message","No results found!");
                return modelAndView;
            }
            else{
                modelAndView.addObject("itemList",foundItems);
                return  modelAndView;
            }
        }
    }
    @RequestMapping(value="/user/place_order", method = RequestMethod.GET)
    public ModelAndView placeOrder ( HttpServletRequest request)
    {
        String[] options = request.getParameterValues("option");
        String option = options[0];
        ModelAndView modelAndView = new ModelAndView("place_order_"+option);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object usernameObj = authentication.getName();
        String username = usernameObj.toString();

        Account account = userService.getAccountDAO().getAccountByUsername(username);

        Orders order = new Orders();
        order.setAddress(account.getBillingAddress());
        //userService.getOrdersDAO().addOrder(order);

        Payment payment = new Payment();
       // userService.getPaymentDAO().addPayment(payment);



        return modelAndView;
    }
    @RequestMapping(value="/user/finish_credit", method = RequestMethod.GET)
    public ModelAndView finishOrderCreditCard(@RequestParam(value = "cardNumber") String cardNumber,
                                 @RequestParam(value = "ownerName") String ownerName,
                                 @RequestParam(value = "cvv") String cvv,
                                 @RequestParam(value = "expirationDate") String expirationDate,
                                              HttpServletRequest request) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object usernameObj = authentication.getName();
        String username = usernameObj.toString();

        ModelAndView modelAndView = new ModelAndView("payment_done");

        String mesaj =userService.doPayment("creditCard", username);

        modelAndView.addObject("mesaj",mesaj);
        return  modelAndView;

    }
    @RequestMapping(value="/user/finish_curier", method = RequestMethod.GET)
    public ModelAndView finishOrderCurier(@RequestParam(value = "name") String name,
                                          @RequestParam(value = "phone") String phone,
                                          @RequestParam(value = "address") String address,
                                          HttpServletRequest request)
    {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object usernameObj = authentication.getName();
        String username = usernameObj.toString();

        ModelAndView modelAndView = new ModelAndView("payment_done");

        String mesaj = userService.doPayment("curier",username);

        modelAndView.addObject("mesaj",mesaj);
        return  modelAndView;
    }


}
