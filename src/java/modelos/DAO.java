
// Interface DAO

package modelos;

import java.sql.SQLException;
import java.util.List;


public interface DAO<E> {
    
    public void save(E entity) throws SQLException;

    public void update(E entity) throws SQLException;

    public void delete(int id) throws SQLException;

    public E getById(int id) throws SQLException;

    public List<E> getAll() throws SQLException;
    
}
