/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mintic.edu.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ana María
 */
public class Conexion {
    private Connection con;
    private static final String URL = "jdbc:mysql://localhost:3306/proyecto";
    private static final String USER ="root";
    private static final String PASS= "mintic";
    
    public Connection getCon(){
        return con;
    }
    
    public void setCon (Connection con)    {
        this.con= con;
    }   
    
    public void conectar() throws Exception 
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection (URL, USER, PASS);
            
        }
        catch (ClassNotFoundException | SQLException e)
        {
            throw e;
        }
    }
    public void desconectar() throws Exception{
        try
        {
            if (con!=null)
            {
                if (con.isClosed()== false)
                {
                con.isClosed();
            }
        }
    }
    catch (SQLException e)
    {
        throw e;
    }
    }
        
}
