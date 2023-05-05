package db;

import java.sql.*;
import java.util.ArrayList;

public class DBConnection {

    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/techorda_db", "root", "");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Items> getItems(){

        ArrayList<Items> item = new ArrayList<Items>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM items");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){

                Items items =new Items();
                items.setName(resultSet.getString("name"));
                items.setId(resultSet.getLong("id"));
                items.setDescription(resultSet.getString("description"));
                items.setPrice(resultSet.getDouble("price"));
                item.add(items);
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return item;
    }

    public static void addItems(Items item){
        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO items (name, description, price) " +
                    "VALUES (?, ?, ?)");

            statement.setString(1, item.getName());
            statement.setString(2, item.getDescription());
            statement.setDouble(3, item.getPrice());

            statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static Users getUser(String email){
        Users users = null;
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "SELECT * FROM users WHERE email = ?");
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()){
                users = new Users();
                users.setId(resultSet.getLong("id"));
                users.setEmail(resultSet.getString("email"));
                users.setFullName(resultSet.getString("full_name"));
                users.setPassword(resultSet.getString("password"));
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }

}
