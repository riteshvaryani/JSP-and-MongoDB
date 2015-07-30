/**
 * 
 */
package mvc;

import java.net.UnknownHostException;
import java.util.logging.Logger;

import javax.servlet.ServletException;

import com.mongodb.MongoClient;

import java.net.*;

/**
 * @author ritesh.varyani
 *
 */
public class CheckForConnection {

	private boolean dbConnect=false;
	MongoClient mongo;
	public boolean isConnected()
	{
		return dbConnect;
	}
	
	public void makeConnection() throws UnknownHostException
	{
		try
		{
		System.out.println("@@@");
			mongo= new MongoClient();
			System.out.println("111111111111111111111111111111111111");

		}
		catch(Exception e)
		{
		
			System.out.println("%%%"+e);
		}
		if(mongo!=null)
			dbConnect=true;
	}
	
}
