package net.cambium.parsers.romannumerals;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

public class RomanNumeralTranslator {
  
  public static int parse(String romanNumeral) {
    try {
      CharStream input = CharStreams.fromString(romanNumeral);
      RomanNumeralsLexer lexer = new RomanNumeralsLexer(input);
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      RomanNumeralsParser parser = new RomanNumeralsParser(tokens);
      RomanNumeralsCountingListener listener = new RomanNumeralsCountingListener(); 
      parser.addParseListener(listener);
      parser.expression();
      return listener.getValue();
    } catch(Exception e) {
      throw new RuntimeException("Failed to process input: " + romanNumeral, e);
    }
  }
  
}
