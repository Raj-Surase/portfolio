import 'dart:async';

import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int activeIndex = 0; // Initial active tab index
  int previousIndex = 0; // Track the previous index for direction of animation

  initialise(BuildContext context) {
    initController();
  }

  void initController() {}

  void setActiveTab(int index) {
    int direction =
        index > activeIndex ? 1 : -1; // Determine animation direction
    int steps = (index - activeIndex).abs(); // Number of steps required

    for (int i = 1; i <= steps; i++) {
      // Animate through each tab with delay
      Timer(Duration(milliseconds: 200 * i), () {
        activeIndex += direction;
        notifyListeners();
      });
    }

    // Finalize the index after the animation completes
    Timer(Duration(milliseconds: 200 * (steps + 1)), () {
      activeIndex = index;
      notifyListeners();
    });
  }
}
