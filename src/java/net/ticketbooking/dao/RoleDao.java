package net.ticketbooking.dao;

import net.ticketbooking.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDao extends JpaRepository<Role, Long>{
}
