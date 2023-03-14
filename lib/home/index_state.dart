import 'package:flutter_riverpod/flutter_riverpod.dart';

var navigationIndexProvider =
    StateNotifierProvider<Index, int>((ref) => Index());

class Index extends StateNotifier<int> {
  Index() : super(0);
  void set(int i) => state = i;
}
