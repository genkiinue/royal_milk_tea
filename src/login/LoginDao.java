package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	private Connection connection = null;

	public LoginDao() throws ClassNotFoundException, SQLException {
		// sammpleデータベースとの接続
		String url = "jdbc:mysql://localhost:3306/sample";
		String user = "root";
		String passward = "a1pc12179";
		connection = DriverManager.getConnection(url, user, passward);
	}

	public void close() {
		try {
			// sampleデータベースとの切断
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public LoginUserBean getUserById(String id, String pass) throws SQLException {
		System.out.println("id:" + id);
		System.out.println("pass:" + pass);
		LoginUserBean bean = null;
		PreparedStatement pstatement = null;
		ResultSet rs = null;
		try {
			// SQLを保持するPreparedStatementオブジェクトの生成
			String sql = "SELECT * FROM user WHERE id= ? and pass = ?";
			pstatement = connection.prepareStatement(sql);
			// INパラメータの設定
			pstatement.setString(1, id);
			pstatement.setString(2, pass);

			System.out.println("pstatement:"+ pstatement.toString());

			// SQLの発行
			// 抽出結果が格納されたResultSetオブジェクトを取得
			rs = pstatement.executeQuery();
			// 列名を指定してResultSetオブジェクトから値を取得
			if (rs.next()) {
				bean = new LoginUserBean();
				bean.setId(rs.getString("user_id"));
				bean.setPass(rs.getString("user_pass"));

			}
			// ResultSetオブジェクトの解放
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			// preparedstatementオブジェクトの解放
			pstatement.close();
		}
		return bean;
	}
}
