all: build run

build:
	javac --release 8 ReplaceDB/Main.java
	javac --release 8 ReplaceDB/Windows.java
	jar cfme Import\ Thresholds\ Gen\ 1/ReplaceDB.jar Manifest.txt ReplaceDB.Main ReplaceDB/Main.class
	jar cfme Import\ Thresholds\ Gen\ 1/Windows.jar Manifest.txt ReplaceDB.Windows ReplaceDB/Windows.class

run:
	cd Import\ Thresholds\ Gen\ 1 && java -jar ReplaceDB.jar

test:
	javac ReplaceDB/Windows.java
	java -cp . ReplaceDB.Windows