import java.io.File;
import java.util.Calendar;

public aspect Looger {
	public aspect Log {

	    File file = new File("log.txt");
	    Calendar cal = Calendar.getInstance();
	 
	    pointcut success() : call(* create*(..) );
	    after() : success() {
	    	System.out.println("**** User created ****");
	    }
	}


	public aspect Logger {

	    pointcut success() : call(* create*(..) );
	    after() : success() {
	    
	    	System.out.println("**** User created ****");
	    }
	    
	}

}


