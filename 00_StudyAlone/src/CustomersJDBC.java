import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class CustomersJDBC {
	public static void main(String[] args) throws SQLException {
		
		Scanner k = new Scanner(System.in);
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String sql = "insert into customers values(customers_seq.nextval, ?, ?, ?, ?, ?, ?)";
		Connection con = DriverManager.getConnection(url,"js","js");
		
		int num = 0;
		while(true) {
			System.out.println("1. insert 2. quit");
			num = k.nextInt();
			if(num == 1) {
				System.out.println("customer_name : ");
				String customer_name = k.next();
				
				System.out.println("contact_name : ");
				String contact_name = k.next();
				
				System.out.println("address : ");
				String address = k.next();
				
				System.out.println("city : ");
				String city = k.next();
				
				System.out.println("postalcode : ");
				String postalcode = k.next();
				
				System.out.println("country : ");
				String country = k.next();

				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, customer_name);
				pstmt.setString(2, contact_name);
				pstmt.setString(3, address);
				pstmt.setString(4, city);
				pstmt.setString(5, postalcode);
				pstmt.setString(6, country);
				
				if(pstmt.executeUpdate() >= 1) {
					System.out.println("등록 성공");
				}else {
					System.out.println("등록 실패");
				}
				
			}else {
				System.out.println("over");
				break;
			}
		}
		
		
		
		
		
		
		
	}
}
