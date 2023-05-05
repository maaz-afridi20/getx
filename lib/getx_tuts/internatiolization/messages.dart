import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        // here en is the english and us the country
        // we can also give many other titles like instead of hello we can
        // give many other things like to change the language.
        'en_US': {
          'hello': 'Hello',
          'fkkk': 'fuck',
        },
        // hi = hindi and in = india
        'hi_IN': {
          'hello': 'नमस्ते',
        },
        // fr = france and FR = french
        'fr_FR': {
          'hello': 'Bonjour',
        },
        'ur_PK': {
          'hello': 'ہیلو',
        }
      };
}
