target: Lexer.java parser.java sym.java

Lexer.java:
	java -jar JFlex.jar Lexer.flex

parser.java:
	java -jar java-cup-11a.jar -interface parser.cup

sym.java:
	java -jar java-cup-11a.jar -interface parser.cup

clean:
	rm Lexer.java parser.java sym.java
