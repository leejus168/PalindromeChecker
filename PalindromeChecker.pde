public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = onlyLetters(word);
  word = noSpaces(word);
  word = noCapitals(word);
  String pot = new  String("");
  for(int i = word.length()-1;i >= 0; i--){
    pot = pot + word.charAt(i);
  }
  if(pot.equals(word)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1;i >= 0; i--){
    sNew = sNew + str.charAt(i);
    }
    return sNew;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String pot = new String("");
  String can = new String("");
  for(int i = 0;i<sWord.length();i++){
    if(sWord.charAt(i) == ' '){
      pot = pot + sWord.charAt(i);
    }
    else{
      can = can + sWord.charAt(i);
    }
  }
  return can;
}
public String onlyLetters(String sString){
  String pot = new String();
  for(int i =0; i< sString.length();i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      pot = pot + sString.charAt(i);
    }
  }
  return pot;
}
