class CardGenerator {
  static final CardGenerator _generator = CardGenerator._internal();

  factory CardGenerator() {
    return _generator;
  }





  CardGenerator._internal(){
    //TODO Initialization of generator class
    print("Singleton have been created");
  }
}