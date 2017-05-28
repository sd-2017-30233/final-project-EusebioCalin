package uni.model;

import java.util.ArrayList;
import java.util.List;

public class VideoCardFilter implements Filter {
    public List<Item> meetCriteria(List<Item> items)
    {
        List<Item> videocards = new ArrayList<Item>();
        for (Item item : items) {
            if(item.getCategory().equals("videocards")){
                videocards.add(item);
            }
        }
        return videocards;
    }
}
