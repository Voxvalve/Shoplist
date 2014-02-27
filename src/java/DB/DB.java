package DB;

import DB.model.Item;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rene
 */
public class DB {
    
    public String serverName;
    public String dbName;
    public String port;
    public String userName;
    public String passWord;
    
    private Connection connection;
    private Statement stmt;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    public DB(String serverName,String dbName,String port,String userName,String passWord)
    {
        this.serverName = serverName;
        this.port = port;
        this.dbName = dbName;
        this.userName = userName;
        this.passWord = passWord;
    }
     
    public void setConnection() throws Exception
    {        
        Class.forName("com.mysql.jdbc.Driver");
        try
        {
            String url = "jdbc:mysql://" + serverName + ":" + port + "/" + dbName;
            System.err.println(url);
            connection = DriverManager.getConnection(url,userName,passWord);      
        }
        catch(Exception e)
        {
            System.err.println(e.getMessage());
        }
    }
    
    public void disConnect()
    {
        try
        {
            connection.close();
        }
        catch (Exception e)
        {
            System.err.println(e.getMessage());
        }
    }
    
    public List<Item> getAllItems() throws Exception {
        List<Item> list = new ArrayList<Item>();
        stmt= connection.createStatement();
        rs=stmt.executeQuery("SELECT * FROM items");
        while (rs.next())
        {
            list.add(new Item(rs.getInt("id"), rs.getString("itemName"), rs.getString("numItem"), rs.getString("gotItem")));
        }
        return list;
        
        
    }
}
