import java.util.HashSet;
class WordGuess{
  String[] words = {"yes"};
  String word = words[int(random(words.length-1))];
  char[] wordHidden = new char [word.length()];
  String wordNotHidden;
  int lives = 10;
  boolean NotgameOver = true;
  
  HashSet<Character> wrongs = new HashSet<Character>();
  WordGuess(){
    //initial _ instead of words
    for (int i = 0;i<wordHidden.length;i++){
      wordHidden[i] = '_';
    }
  }
  
  void displayWord(){
    background(0);
    textSize(20);
    text("Lives: " + lives,width-50,height-550);
    textAlign(CENTER, BOTTOM);
    text("Press any key on the keyboard to guess the word",width/2,100);
    
    int increment = 0;
    for (int i = 0;i<wordHidden.length;i++){
      text(wordHidden[i],(width*1)/(word.length())+increment,height/2);
      increment += 100;
    } 
     wordNotHidden = new String(wordHidden);
    text("Wrong Letters: "+ wrongs.toString(),width/2,500);
    if(wordNotHidden.toUpperCase().equals((word).toUpperCase())){
      textSize(130);
      text("YOU WIN",width/2,height/2);
      NotgameOver = false;
    }
    if(lives <= 0){
      textSize(130);
      text("YOU LOSE",width/2,height/2);
      textSize(20);
      text("The word was "+ word,width/2,height,2);
      NotgameOver = false;
      
    }
  }

   
  void keyPressed(){
   if(NotgameOver){
    boolean inside = false;
    if(wrongs.contains(key)){
      return;
    }
    
    for(int i = 0 ;i<word.length();i++){
      if(Character.toUpperCase(key) == Character.toUpperCase(word.charAt(i))){
        inside = true;
        wordHidden[i] = key;
      }
      
      
      }
      if(!inside){
        wrongs.add(key);
        lives -= 1;
    }
  }
  }
  
}
