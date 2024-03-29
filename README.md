# tkStrikeDBGen1
Loading the tkStrikeGen1 H2 DB with proper information

Loading the H2 Database
=======================

The structure of ``tkStrikeDBGen1`` package is like this:
```
├── CreateSQL
│   ├── README.md
│   ├── Subcategory
│   │   ├── CADET
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── CADET MIN
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── DRAGON
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── JUNIOR
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── JUNIOR MIN
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── PARA K41
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── PARA K44
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── SENIOR
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── SENIOR MIN
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── TIGER
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   ├── ULTRA
│   │   │   ├── FEMALE.txt
│   │   │   └── MALE.txt
│   │   └── YOUTH
│   │       ├── FEMALE.txt
│   │       └── MALE.txt
│   ├── app.js
│   ├── gap.txt
│   ├── order.txt
│   └── package.json
├── Import Thresholds Gen 1
│   ├── Default_Category_Thresholds.sql
│   ├── Default_Gap.sql
│   ├── Mac.jar
│   ├── ReplaceDB.jar
│   ├── Subcategory.sql
│   ├── Windows.jar
│   ├── default.bat
│   └── default.sh
├── LICENSE
├── Makefile
├── Manifest.txt
├── README.md
└── ReplaceDB
    ├── Mac.class
    ├── Mac.java
    ├── Main.class
    ├── Main.java
    ├── Windows.class
    └── Windows.java
```

Build class
-------------
To easily compile and test run the jar file using the makefile, execute the following command:

  `make`

This generates all the necesary assests and places them in the proper directory.

Compile class
-------------

For compile the main class for package, execute the follow command:

  `javac ReplaceDB/Main.java`

This generate the ``Main.class``, ``Mac.class``, and ``Windows.class`` files into ``ReplaceDB`` directory.

Run class
---------

For run the main class for package, execute the follow command:

  `java -cp . ReplaceDB.Main`

  `java -cp . ReplaceDB.Mac`

  `java -cp . ReplaceDB.Windows`

Create a JAR file
-----------------

Pack the main class for package as a JAR file, execute the follow command:

  `jar cfme Import\ Thresholds\ Gen\ 1/ReplaceDB.jar Manifest.txt ReplaceDB.Main ReplaceDB/Main.class`

  `jar cfme Import\ Thresholds\ Gen\ 1/Mac.jar Manifest.txt ReplaceDB.Mac ReplaceDB/Mac.class`

  `jar cfme Import\ Thresholds\ Gen\ 1/Windows.jar Manifest.txt ReplaceDB.Windows ReplaceDB/Windows.class`


Run a JAR file
--------------

Run the JAR file packed, execute the follow command:

  `java -jar ReplaceDB.jar`

  `java -jar Windows.jar`

Run a JS file
-------------

Run the JS file by be located in the proper directory folder and executing the following command:

  `node app.js`

Requirements
------------

Requires having Java installed on the system, the minimum requirement is Java 8 since it is packaged for released with Java 8 in mind.

You can download Java 8 from the Java website: [Java Download](https://www.java.com/en/download/).

Requires Node to be installed on the system, the minimum requirement is NodeJS v14.16 since that is what the javascript file is written with in mind.

You can download the latest version of NodeJS from the Node website: [NodeJS Download](https://nodejs.org/en/download/).

Reference
=========

- [java - How to run a JAR file - Stack Overflow](http://stackoverflow.com/questions/1238145/how-to-run-a-jar-file).

- [Setting an Application's Entry Point (The Java™ Tutorials > Deployment > Packaging Programs in JAR Files](http://docs.oracle.com/javase/tutorial/deployment/jar/appman.html).