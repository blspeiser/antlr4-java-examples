package net.cambium.parsers;

import static org.junit.Assert.*;

import org.junit.Test;

import net.cambium.parsers.json.JsonValidator;

public class JsonValidatorTest {

  @Test
  public void testJson() {
    assertTrue(JsonValidator.validate("[8, 9, 4]"));
    assertTrue(JsonValidator.validate("{}"));
    assertTrue(JsonValidator.validate("[]"));
    assertTrue(JsonValidator.validate("3"));
    assertTrue(JsonValidator.validate("\"text\""));
    assertTrue(JsonValidator.validate("{ \"key\" : \"text\" }"));
    assertFalse(JsonValidator.validate("{ \"key\" : \"text\", {3} }"));
    assertFalse(JsonValidator.validate("@!^#%*&^*#"));
  }

}
