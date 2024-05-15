package net.cambium.parsers;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import net.cambium.parsers.romannumerals.RomanNumeralTranslator;

public class RomanNumeralsTranslatorTest {

  @Test
  public void testRomanNumeralsParsing() {
    assertEquals(  32, RomanNumeralTranslator.parse("XXXII"));
    assertEquals(1994, RomanNumeralTranslator.parse("MCMXCIV"));
    assertEquals(3050, RomanNumeralTranslator.parse("MMML"));
    assertEquals( 446, RomanNumeralTranslator.parse("CDXLVI"));
    assertEquals(  80, RomanNumeralTranslator.parse("LXXX"));
    assertEquals(   8, RomanNumeralTranslator.parse("VIII"));
    assertEquals( 774, RomanNumeralTranslator.parse("DCCLXXIV"));
    assertEquals(2000, RomanNumeralTranslator.parse("MM"));
  }
  
}
