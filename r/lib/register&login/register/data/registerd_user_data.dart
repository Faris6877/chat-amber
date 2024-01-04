import 'package:flutter_riverpod/flutter_riverpod.dart';

final users = StateProvider<List<Map<String, dynamic>>>((ref) => []);
