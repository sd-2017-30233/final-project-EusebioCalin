package uni.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Calin on 27.05.2017.
 */
public class MemoryModulesFilter implements Filter {

    public List<Item> meetCriteria(List<Item> items)
    {
        List<Item> rams = new ArrayList<>();
        for (Item item : items) {
            if(item.getCategory().equals("memorymodules")){
                rams.add(item);
            }
        }
        return rams;
    }
}
