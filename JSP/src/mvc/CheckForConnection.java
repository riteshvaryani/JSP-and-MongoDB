/**
 * 
 */
package mvc;

import com.mongodb.MongoClient;

/**
 * @author ritesh.varyani
 *
 */
public class CheckForConnection {

	private boolean dbConnect = false;
	private MongoClient mongo;

	public boolean isConnected() {
		return dbConnect;
	}
	public MongoClient getClient() {
		return mongo;
	}
	public MongoClient makeConnection() {
		try {
			mongo = new MongoClient();
		} catch (Exception e) {
			return null;
		}
		dbConnect = true;
		return getClient();
	}

	public void closeConnection() {
		dbConnect = false;
		mongo = null;
	}
}
