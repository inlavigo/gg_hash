import 'dart:convert';

import 'package:gg_hash/gg_hash.dart';

void main() {
  /// Print an example of the FNV-1 hash function.
  print(fnv1(['a', 'b', 'c'])); // 6619819810309098008

  /// Add hashes to a JSON object.
  final hashedJson = hashJson({
    'a': 1,
    'b': 2,
    'c': {'d': 3, 'e': 4},
  });

  // Print the JSON object with the added hashes.
  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  print(encoder.convert(hashedJson));
}
