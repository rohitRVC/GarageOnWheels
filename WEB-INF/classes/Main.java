import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        DBUtil d= new DBUtil();
        ResultSet o = d.getResult("select * from test");
        
        System.out.println(o.toString());

        while(o.next()){
         System.out.println(o.toString());   
        }
    }
}
