/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces1;

import java.awt.HeadlessException;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author davidvazquezcervantes
 */
import java.awt.HeadlessException;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Ganaderia {
     public static final String URL = "jdbc:mysql://localhost:3308/bd_ganaderos"; //Direccion, puerto y nombre de la Base de Datos
    public static final String USERNAME = "root"; //Usuario de Acceso a MySQL
    public static final String PASSWORD = ""; //Password del usuario
public static com.mysql.jdbc.Connection getConection() {
    
        com.mysql.jdbc.Connection cone = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cone = (com.mysql.jdbc.Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);

        } catch (HeadlessException | ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return cone;
    }    
}

