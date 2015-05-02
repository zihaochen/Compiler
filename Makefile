all:
	cd src/ ; javac -cp "../lib/java-cup-11a-runtime.jar": -d ../bin/ **/*.java

clean:
	rm -r bin/*