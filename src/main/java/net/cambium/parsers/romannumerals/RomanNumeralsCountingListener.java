package net.cambium.parsers.romannumerals;

import net.cambium.parsers.romannumerals.RomanNumeralsParser.HundredsContext;
import net.cambium.parsers.romannumerals.RomanNumeralsParser.OnesContext;
import net.cambium.parsers.romannumerals.RomanNumeralsParser.TensContext;
import net.cambium.parsers.romannumerals.RomanNumeralsParser.ThousandsContext;

public class RomanNumeralsCountingListener extends RomanNumeralsBaseListener {
  private int value = 0;
  
  public int getValue() {
    return value;
  }

  @Override
  public void exitOnes(OnesContext ctx) {
    String text = ctx.getText();
    if(text.equals("I"))    value += 1; else
    if(text.equals("II"))   value += 2; else
    if(text.equals("III"))  value += 3; else
    if(text.equals("IV"))   value += 4; else
    if(text.equals("V"))    value += 5; else
    if(text.equals("VI"))   value += 6; else
    if(text.equals("VII"))  value += 7; else
    if(text.equals("VIII")) value += 8; else
    if(text.equals("IX"))   value += 9; 
  }

  @Override
  public void exitTens(TensContext ctx) {
    String text = ctx.getText();
    if(text.equals("X"))    value += 10; else
    if(text.equals("XX"))   value += 20; else
    if(text.equals("XXX"))  value += 30; else
    if(text.equals("XL"))   value += 40; else
    if(text.equals("L"))    value += 50; else
    if(text.equals("LX"))   value += 60; else
    if(text.equals("LXX"))  value += 70; else
    if(text.equals("LXXX")) value += 80; else
    if(text.equals("XC"))   value += 90;
  }

  @Override
  public void exitHundreds(HundredsContext ctx) {
    String text = ctx.getText();
    if(text.equals("C"))    value += 100; else
    if(text.equals("CC"))   value += 200; else
    if(text.equals("CCC"))  value += 300; else
    if(text.equals("CD"))   value += 400; else
    if(text.equals("D"))    value += 500; else
    if(text.equals("DC"))   value += 600; else
    if(text.equals("DCC"))  value += 700; else
    if(text.equals("DCCC")) value += 800; else
    if(text.equals("CM"))   value += 900;
  }
  
  @Override
  public void exitThousands(ThousandsContext ctx) {
    String text = ctx.getText();
    value += 1000 * text.length(); 
  }

}
