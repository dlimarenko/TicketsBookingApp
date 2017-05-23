package net.ticketbooking.servise;

/**
 * Service for Security.
 *
 * @author Dmytro Limarenko
 * @version 1.0
 */

public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
