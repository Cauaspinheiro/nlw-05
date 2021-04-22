import 'package:flutter/cupertino.dart';

class ChallengeController {
  final currentPageNotifier = ValueNotifier(1);

  int get currentPage => currentPageNotifier.value;
  set currentPage(value) => currentPageNotifier.value = value;
}
