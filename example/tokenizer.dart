import 'package:grizzly_nlp/grizzly_nlp.dart';

main() {
  final tokenizer = new SpaceTokenizer();
  print(tokenizer.tokenize('Jaguar is a batteries included server framework'));

  print(lineTokenize('''
Jaguar is a batteries included server framework.
Dart is a isomorphic language.
This sentence is
split across multiple lines.
  '''));

  {
    final tokenizer = new WhitespaceTokenizer();
    print(tokenizer.tokenize('Good muffins cost \$3.88\nin New York.  Please buy me\ntwo of them.\n\nThanks.'));
  }

  print(new WordPunctuationTokenizer().tokenize('Good muffins cost \$3.88\nin New York.  Please buy me\ntwo of them.\n\nThanks.'));
}
