package ReplaceDB;

import java.io.File;

public class Windows {
    public static void main(String[] args) throws Exception {

        /**
         *
         * Step 1: Kill tkStrike
         * Step 2: Wait for the task to be finished
         * Step 3: Run the Subcategory SQL script in the file location with H2
         * Step 4: Wait for the task to be finished
         * Step 5: Run the Default_Category_Thresholds SQL script in the file location
         * with H2
         * Step 6: Wait for the task to be finished
         * Step 7: Run the Default_Gap SQL script in the file location with H2
         * Step 8: Wait for the task to be finished
         * Step 9: Open tkStrikeGen1
         *
         **/

        // Kill tkStrike
        exeCommand("taskkill", "/F", "/IM", "tkStrikeGen1.exe");
        // Wait for the system to finish the task kill
        Thread.sleep(3000);
        // Replace the subcategory table in the running process thread
        replaceTable("Subcategory.sql");
        // Replace the thresholds table in the running process thread
        replaceTable("Default_Category_Thresholds.sql");
        // Replace the gap table in the running process thread
        replaceTable("Default_Gap.sql");
        // Open tkStrike
        exeCommand(getWindowsAppPath());
    }

    // Replace a table using H2 Command Script
    private static void replaceTable(String scriptName) {
        try {
            String h2 = h2Version();
            String h2Command = "org.h2.tools.RunScript";
            String url = "jdbc:h2:~/AppData/Local/tkStrikeGen1/app/db/tkStrike30";
            String[] command = { "java", "-cp", h2, h2Command, "-url", url, "-user", "SA", "-script",
                    getScriptPath(scriptName) };
            Process process = new ProcessBuilder(command).start();
            process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Return the username of the system
    private static String getUsername() {
        String username = System.getProperty("user.name");
        return username;
    }

    // Return the current directory of the file
    private static String getDirectory() {
        String directory = System.getProperty("user.dir");
        return directory;
    }

    // Get the script file path
    private static String getScriptPath(String scriptName) {
        return getDirectory() + File.separator + scriptName;
    }

    // Execute commands better and more cleanly
    private static void exeCommand(String... command) {
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(command);
            processBuilder.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Get the Windows application path
    private static String getWindowsAppPath() {
        return "C:\\Users\\" + getUsername() + "\\AppData\\Local\\tkStrikeGen1\\tkStrikeGen1.exe";
    }

    // Get the H2 DB file name
    private static String h2Version() {
        String directoryPath = "C:\\Users\\" + getUsername() + "\\AppData\\Local\\tkStrikeGen1\\app\\lib\\";
        File directory = new File(directoryPath);
        File[] files = directory.listFiles();
        for (File file : files) {
            if (file.isFile() && file.getName().startsWith("h2-")) {
                String fileName = file.getName();
                return directoryPath + fileName;
            }
        }
        return null;
    }
}