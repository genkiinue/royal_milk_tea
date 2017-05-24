package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class HistoryDao {
	private Connection connection = null;

	public HistoryDao() throws ClassNotFoundException, SQLException {
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


	public ArrayList<HistoryBean> getHistoryAll() throws SQLException {

		PreparedStatement pstatement = null;
		ResultSet rs = null;
		ArrayList<HistoryBean> empBean = null;
		try {
			// SQLを保持するPreparedStatementオブジェクトの生成
			String sql = "UPDATE stok SET quantity = ? WHERE item_id = ?";
			pstatement = connection.prepareStatement(sql);
			// INパラメータの設定

	


			// SQLの発行
			// 抽出結果が格納されたResultSetオブジェクトを取得
			rs = pstatement.executeUpdate();
			// 列名を指定してResultSetオブジェクトから値を取得







