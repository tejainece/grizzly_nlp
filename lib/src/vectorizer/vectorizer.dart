import 'package:grizzly_array/grizzly_array.dart';
import '../tokenizer/simple_tokenizer.dart';

Int1D countVectorize(List<String> documents,
    {Tokenizer tokenizer: const WordPunctuationTokenizer()}) {
  for(String doc in documents) {
    new String1D(tokenizer.tokenize(doc));
  }
  // TODO
}
