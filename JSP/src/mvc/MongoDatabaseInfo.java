package mvc;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class MongoDatabaseInfo {
	public boolean addToDatabase(String firstName, String lastName, String gender, String phone, String email,
			CheckForConnection mongoConnect, MongoClient mongo) {
		if (!mongoConnect.isConnected()) {
			return false;
		} else {
			try {
				DB db = mongo.getDB("UserInfo");
				DBCollection userInfo = db.getCollection("userInfo");
				userInfo.insert(new BasicDBObject("firstName", firstName).append("lastName", lastName)
						.append("gender",gender).append("phone", phone).append("email", email));
				System.out.println(userInfo.findOne());
				System.out.println(userInfo.getCount());
				DBCursor cursor=userInfo.find();
				while(cursor.hasNext()) {
				       System.out.println(cursor.next());
				}
			} catch (Exception e) {
				return false;
			}
		}
		return true;
	}
}