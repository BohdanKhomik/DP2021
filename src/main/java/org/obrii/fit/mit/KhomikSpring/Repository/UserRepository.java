/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.fit.mit.KhomikSpring.Repository;

import org.obrii.fit.mit.KhomikSpring.Domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ПК
 */
@Repository
public interface UserRepository extends CrudRepository<User , Long>{

   
    
}
