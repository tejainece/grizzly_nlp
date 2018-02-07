/// Interface for [Tokenizer]
abstract class Tokenizer {
  /// Extracts tokens from [text]
  List<String> tokenize(String text);
}

/// Tokenize a string using the space character as a delimiter.
///
/// Example:
///
///     final tokenizer = new SpaceTokenizer();
///     tokenizer.tokenize('Jaguar is a batteries included server framework');
class SpaceTokenizer implements Tokenizer {
  const SpaceTokenizer();

  List<String> tokenize(String text) => text.split(' ');
}

class LineTokenizer implements Tokenizer {
  final bool keepBlankLines;

  const LineTokenizer({this.keepBlankLines: true});

  List<String> tokenize(String text) {
    final ret = text.split('\n');

    if (keepBlankLines) ret.removeWhere((s) => s.isEmpty);

    return ret;
  }
}

List<String> lineTokenize(String text, {bool keepBlankLines: true}) =>
    new LineTokenizer(keepBlankLines: keepBlankLines).tokenize(text);

class WhitespaceTokenizer implements Tokenizer {
  List<String> tokenize(String text) => text.split(new RegExp(r'\s+'));
}

class PunctuationTokenizer implements Tokenizer {
  List<String> tokenize(String text) => text.split(new RegExp(r'(\s+|[^\d\w]+)+'));
}