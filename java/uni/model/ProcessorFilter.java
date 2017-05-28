package uni.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Calin on 27.05.2017.
 */
public class ProcessorFilter implements Filter {
    public List<Item> meetCriteria(List<Item> items)
    {
        List<Item> processors = new ArrayList<>();
        for (Item item : items) {
            if(item.getCategory().equals("processors")){
                processors.add(item);
            }
        }
        return processors;
    }
}
