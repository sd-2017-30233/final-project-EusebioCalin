package uni.model;


public class Context {
    private Strategy strategy;

    public Context(Strategy strategy){
        this.strategy = strategy;
    }

    public void executePayment(String username){
         strategy.doPayment(username);
    }
}
