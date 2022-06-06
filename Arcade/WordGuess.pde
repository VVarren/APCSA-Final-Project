class WordGuess{
  String[] words = {"yes"};
  String word = words[int(random(words.length-1))];
  String[] wordHidden = new String [words.length];
  
  
  WordGuess(){
    //initial _ instead of words
    for (int i = 0;i<words.length;i++){
      wordHidden[i] = "_";
    }
  }
  
  void displayWord(){
    int increment = 0;
    for (int i = 0;i<wordHidden.length;i++){
      text(wordHidden[i],height/2+increment,width/2+increment);
      increment += 500;
      print(1);
    } 
  }
      
  
}
