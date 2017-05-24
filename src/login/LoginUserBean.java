package login;

public class LoginUserBean {
private String id;
private String pass;

//引数がないpublicなコンストラクタ
public  LoginUserBean(){
	id = "";
	pass = "";
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
}
