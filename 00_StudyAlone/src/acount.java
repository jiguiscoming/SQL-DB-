import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class acount {
	public static void main(String[] args) throws SQLException {
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String sql = "insert into acount values(acount_seq.nextval, ?, ?)";
		Scanner k = new Scanner(System.in);
		
		Connection con = DriverManager.getConnection(url,"js","js");

		while(true) {
			System.out.println("===1. sign up===");
			System.out.println("===2. quit   ===");
			int num = k.nextInt();
			
			if(num == 1) {
				System.out.println("id : ");
				String id = k.next();
				System.out.println("password : ");
				String pw = k.next();
				
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				
				if(pstmt.executeUpdate()==1) {
					System.out.println("===succeeded===\n");
				}else {
					System.out.println("===failed===\n");
				}
			}else {
				System.out.println("===okay, bye===");
				break;
			}
		}
		
//		System.out.println("id : ");
//		String id = k.next();
//		System.out.println("password : ");
//		String pw = k.next();
//		
//		PreparedStatement pstmt = con.prepareStatement(sql);
//		pstmt.setString(1, id);
//		pstmt.setString(2, pw);
//		
//		
//		if(pstmt.executeUpdate() == 1) {
//			System.out.println("===succeeded===");
//		}else {
//			System.out.println("===failed===");
//		}	
//		
		
		
		
	}
}
