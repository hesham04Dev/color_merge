library color_merge;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Extension to add color merging functionality to [Color].
extension ColorMergeExtension on Color {
  /// Merges the current color with the given [otherColor].
  ///
  /// The resulting color simulates layering the current color on top of
  /// [otherColor], blending their RGB values based on the opacity of the
  /// current color (`this.opacity`).
  ///
  /// The resulting color is fully opaque (`alpha = 255`).
  ///
  /// ### Example
  /// ```dart
  /// final baseColor = Colors.white;
  /// final overlayColor = Colors.green.withOpacity(0.2);
  /// final mergedColor = overlayColor.merge(baseColor);
  /// ```
  ///
  /// In the above example, `mergedColor` will represent the visual blending
  /// of `Colors.green` (with 20% opacity) over `Colors.white`.
  Color merge(Color otherColor) {
    if (opacity == 1 && kDebugMode == true) {
      print("Color Merge: the first Color should have opacity less than 1 ");
    }
    return Color.fromARGB(
      255, // Force full opacity for the resulting color.
      ((red * opacity) + (otherColor.red * (1 - opacity))).toInt(),
      ((green * opacity) + (otherColor.green * (1 - opacity))).toInt(),
      ((blue * opacity) + (otherColor.blue * (1 - opacity))).toInt(),
    );
  }

  /// Merges the current color with white.
  ///
  /// The resulting color simulates layering the current color on top of
  /// `Colors.white`, blending their RGB values based on the opacity of the
  /// current color (`this.opacity`).
  ///
  /// This is a shorthand for calling `merge(Colors.white)`.
  ///
  /// ### Example
  /// ```dart
  /// final overlayColor = Colors.green.withOpacity(0.2);
  /// final mergedColor = overlayColor.whiteMerge();
  /// ```
  ///
  /// In the above example, `mergedColor` will represent the visual blending
  /// of `Colors.green` (with 20% opacity) over `Colors.white`.
  Color whiteMerge() {
    var otherColor = Colors.white;
    return merge(otherColor);
  }

  /// Merges the current color with black.
  ///
  /// The resulting color simulates layering the current color on top of
  /// `Colors.black`, blending their RGB values based on the opacity of the
  /// current color (`this.opacity`).
  ///
  /// This is a shorthand for calling `merge(Colors.black)`.
  ///
  /// ### Example
  /// ```dart
  /// final overlayColor = Colors.green.withOpacity(0.2);
  /// final mergedColor = overlayColor.blackMerge();
  /// ```
  ///
  /// In the above example, `mergedColor` will represent the visual blending
  /// of `Colors.green` (with 20% opacity) over `Colors.black`.
  Color blackMerge() {
    var otherColor = Colors.black;
    return merge(otherColor);
  }
}
