package ReplaceDB;

import java.util.concurrent.TimeUnit;
import java.io.File;

public class Main {
	public static void main(String[] args) throws Exception {

		/**
		*
		* Step 1: Find the location of tkStrike DB
		* Step 2: Delete the tkStrike DB
		* Step 3: Open tkStrike
		* Step 4: Wait 25 seconds for tkStrike to open and reload the DB
		* Step 5: Kill tkStrike
		* Step 6: Wait 3 seconds for tkStrike to quit
		* Step 7: Run the Subcategory sql script in the file location with H2
		* Step 8: Run the Default_Category sql script in the file location with H2
		* Step 9: Run the Default_Gap sql script in the file location with H2
		* Step 10: Open tkStrikeGen1
		*
		**/

		// if (getOperatingSystem().contains("Mac")) {
		// 	ProcessHandle
		// 		.allProcesses()
		// 		.filter(p -> p.info().commandLine().map(c -> c.contains("tkStrikeGen1")).orElse(false))
		// 		.findFirst()
		// 			.ifPresent(ProcessHandle::destroy);
		// 	TimeUnit.SECONDS.sleep(3);
		// 	new File("//Users//" + username() + "//.tkStrike//db//tkStrike30.mv.db").delete();
		// 	executeCommand("open //Applications//tkStrikeGen1.app");
		// 	TimeUnit.SECONDS.sleep(25);
		// 	ProcessHandle
		// 		.allProcesses()
		// 		.filter(p -> p.info().commandLine().map(c -> c.contains("tkStrikeGen1")).orElse(false))
		// 		.findFirst()
		// 			.ifPresent(ProcessHandle::destroy);
		// 	TimeUnit.SECONDS.sleep(3);
		// 	String h2 = "/Applications/tkStrikeGen1.app/Contents/Java/lib/h2-1.4.199.jar";
		// 	String h2Command = "org.h2.tools.RunScript";
		// 	Runtime runtime = Runtime.getRuntime();
		// 	String[] subcategory = { "java", "-cp", h2, h2Command, "-url", "jdbc:h2:/Users/" + username()
		// 			+ "/.tkStrike/db/tkStrike30", "-user", "SA", "-script", directory() + "/Subcategory.sql" };
		// 	String[] thresholds = { "java", "-cp", h2, h2Command, "-url", "jdbc:h2:/Users/" + username()
		// 			+ "/.tkStrike/db/tkStrike30", "-user", "SA", "-script",
		// 			directory() + "/Default_Category_Thresholds.sql" };
		// 	String[] gap = { "java", "-cp", h2, h2Command, "-url", "jdbc:h2:/Users/" + username()
		// 			+ "/.tkStrike/db/tkStrike30", "-user", "SA", "-script", directory() + "/Default_Gap.sql" };
		// 	TimeUnit.SECONDS.sleep(3);
		// 	runtime.exec(subcategory);
		// 	TimeUnit.SECONDS.sleep(1);
		// 	runtime.exec(thresholds);
		// 	TimeUnit.SECONDS.sleep(1);
		// 	runtime.exec(gap);
		// 	TimeUnit.SECONDS.sleep(1);
		// 	executeCommand("open //Applications//tkStrikeGen1.app");
		// } else if (getOperatingSystem().contains("Windows")) {
		// 	Runtime.getRuntime().exec("taskkill /F /IM tkStrikeGen1.exe");
		// 	TimeUnit.SECONDS.sleep(3);
		// 	new File("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen1\\app\\db\\tkStrike30.mv.db").delete();
		// 	executeCommand("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen1\\tkStrikeGen1.exe");
		// } else {
		// 	System.out.println("YOU'VE DONE FUCKED UP, GO FUCK YOURSELF, I'M NOT MAKING THIS WORK FOR FUCKING UBUNTU/SOLARIS");
		// }

		// Kill tkStrike if it is running
		Runtime.getRuntime().exec("taskkill /F /IM tkStrikeGen1.exe");
		// Pause the system for 3 seconds to finish the task kill
		TimeUnit.SECONDS.sleep(3);
		// Delete the bad tkStrike DB
		new File("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen1\\app\\db\\tkStrike30.mv.db").delete();
		// Open tkStrike to reload an original copy of the DB
		executeCommand("C:\\Users\\" + username() + "\\AppData\\Local\\tkStrikeGen1\\tkStrikeGen1.exe");
	}

	// Return the operating system type, we only care about Windows
	// private static String getOperatingSystem() {
	// 	String os = System.getProperty("os.name");
	// 	return os;
	// }

	// Return the username of the system and solve for spaces
	private static String username() {
		String username = System.getProperty("user.name");
		// if (getOperatingSystem().contains("Mac")) {
		// 	username.replace(" ", "\\ ");
		// } else if (getOperatingSystem().contains("Windows")) {
		// 	username.replace(" ", "^ ");
		// }
		return username;
	}

	// private static String directory() {
	// 	String directory = System.getProperty("user.dir");
	// 	if (getOperatingSystem().contains("Mac")) {
	// 		directory.replace(" ", "\\ ");
	// 	} else if (getOperatingSystem().contains("Windows")) {
	// 		directory.replace(" ", "^ ");
	// 	}
	// 	return directory;
	// }

	// Execute commands better and more cleanly
	private static void executeCommand(String command) {
		try {
			Runtime.getRuntime().exec(command);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}