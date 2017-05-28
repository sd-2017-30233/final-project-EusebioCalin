package uni.model;

import java.util.List;

/**
 * Created by Calin on 27.05.2017.
 */
public interface Filter {
    public List<Item> meetCriteria(List<Item> items);
}
