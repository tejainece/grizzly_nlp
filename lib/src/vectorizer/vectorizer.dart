import 'package:grizzly_array/grizzly_array.dart';
import 'package:grizzly_series/grizzly_series.dart';
import '../tokenizer/simple_tokenizer.dart';

IntSeries<String> countVectorize(List<String> documents,
    {Tokenizer tokenizer: const WordPunctuationTokenizer(),
    Set<String> stopWords}) {
  for (String doc in documents) {
    final String1D tokens = new String1D(tokenizer.tokenize(doc))
      ..removeMany(new IterView(stopWords));
    tokens.valueCounts();
  }
  // TODO
}
