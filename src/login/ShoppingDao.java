package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ShoppingDao {
	private Connection connection = null;

	public ShoppingDao() throws ClassNotFoundException, SQLException {
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

	public ArrayList<ItemBean> getItemAll() throws SQLException {

		PreparedStatement pstatement = null;
		ResultSet rs = null;
		ArrayList<ItemBean> empBean = null;
		try {
			// SQLを保持するPreparedStatementオブジェクトの生成
			String sql = "SELECT * FROM item join stok on item.item_id = stok.item_id";
			pstatement = connection.prepareStatement(sql);
			// INパラメータの設定




			// SQLの発行
			// 抽出結果が格納されたResultSetオブジェクトを取得
			rs = pstatement.executeQuery();
			// 列名を指定してResultSetオブジェクトから値を取得
			empBean = new ArrayList<>();
			while (rs.next()) {
				ItemBean bean = new ItemBean();
				bean.getItem_id(rs.getString("item_id"));
				bean.getItem_name(rs.getString("item_name"));
              bean.getPrice(rs.getString("price"));
              bean.getQuantity(rs.getInt("quantity"));

               empBean.add(bean);

			}
			// ResultSetオブジェクトの解放
			rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			// preparedstatementオブジェクトの解放
			pstatement.close();
		}
		return empBean;

	}


	public static ArrayList<login.ItemBean> getItemBean() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}


