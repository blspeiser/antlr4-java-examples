package net.cambium.parsers.json;

import java.util.logging.Level;
import java.util.logging.Logger;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

import net.cambium.parsers.ThrowingErrorListener;

public class JsonValidator {
  private static Logger logger = Logger.getLogger(JsonValidator.class.getSimpleName());
  
  public static boolean validate(String json) {
    try {
      CharStream input = CharStreams.fromString(json);
      JsonLexer lexer = new JsonLexer(input);
      CommonTokenStream tokens = new CommonTokenStream(lexer);
      JsonParser parser = new JsonParser(tokens);
      parser.addErrorListener(new ThrowingErrorListener());
      parser.json();
      return true;
    } catch(Exception e) {
      logger.log(Level.FINER, e.getMessage());
      return false;
    }
  }


}
