public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
      println(lines[i] + " IS a palindrome.");
    else
      println(lines[i] + " is NOT a palindrome.");
  }
}
public boolean palindrome(String word)
{
	String s = new String();
	for(int i = 0; i < word.length(); i++)
		if(Character.isLetter(word.charAt(i)))
			s = s + word.substring(i,i+1);
	if(s.toLowerCase().equals(reverse(word)))
		return true;
	else
		return false;
}
public String reverse(String str)
{
    String rStr = new String();
    for(int i = str.length()-1; i >= 0; i--)
    	if(Character.isLetter(str.charAt(i)))
    		rStr = rStr + str.substring(i,i+1);
    return rStr.toLowerCase();
}


