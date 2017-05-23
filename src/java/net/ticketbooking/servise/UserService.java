package net.ticketbooking.servise;

import net.ticketbooking.model.User;

/**
 * Service class for {@link net.ticketbooking.model.User}
 *
 * @author Dmytro Limarenko
 * @version 1.0
 */
public interface UserService {

    void save(User user);

    User findByUsername(String username);


}
