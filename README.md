
# <img src="https://raw.githubusercontent.com/hesham04Dev/color_merge/refs/heads/main/screenshots/logo.png" width="30px"/>  **color_merge**

A lightweight Flutter package that provides **color merging utilities** for blending colors seamlessly. It allows developers to simulate the effect of stacking colors on top of one another, ignoring opacity, and adapt colors dynamically based on the app's theme.

---

## ✨ **Features**

- 🎨 **Merge Colors**: Blend two colors to simulate stacking, producing a fully opaque result.  
- ⚪ **White Merge**: Simplified method to merge a color with white.  
- ⚫ **Black Merge**: Simplified method to merge a color with black.  

---

## 🚀 **Installation**

Add `color_merge` to your `pubspec.yaml`:

```yaml
dependencies:
  color_merge: ^1.0.0
```

Then, run:

```bash
flutter pub get
```

---

## 🛠️ **Usage**

### 🔄 Merge Two Colors
Blend two colors to simulate the effect of stacking one on top of another:

#### Traditional Way
Requires wrapping with a container to achieve the desired effect:

```dart
Container(
  width: 50,
  height: 50,
  color: Colors.white,
  child: Container(
    color: Colors.purple.withOpacity(0.5),
  ),
);
```

#### **color_merge** Way
Achieve the same effect in a simpler, cleaner way:

```dart
Container(
  width: 50,
  height: 50,
  color: Colors.purple.withOpacity(0.5).merge(Colors.white),
);
```

---

### ⚪ **White Merge** & ⚫ **Black Merge**
Easily merge colors with `Colors.white` or `Colors.black`:

```dart
final color = Colors.green.withOpacity(0.3);

// Merge with white
final whiteMerged = color.whiteMerge();

// Merge with black
final blackMerged = color.blackMerge();
```

---

## 📖 **Methods**

### 🔹 `Color.merge(Color otherColor)`
Blends the current color with another color, producing a new fully opaque color. 

#### Example:
```dart
final baseColor = Colors.white;
final overlayColor = Colors.red.withOpacity(0.5);

final result = overlayColor.merge(baseColor);
```

#### Result:
If `overlayColor` is `Colors.red.withOpacity(0.5)` and `baseColor` is `Colors.white`, the resulting color will be a fully opaque blend of the two.

> **Note**: The merging only works when the current color has an opacity less than 1.0.  

---

## 📜 **License**

This package is available under the **MIT License**. Feel free to use it in personal or commercial projects.

---

## 🤝 **Contributions**

Contributions are welcome! If you encounter any issues or have ideas for improvements, feel free to open an issue or submit a pull request.  

---

## 👤 **Author**

Developed by **Hisham**.  
Feel free to reach out for support, feedback, or collaboration!

---

## 🔗 Links

- [GitHub Repository](#https://github.com/hesham04Dev/color_merge)  
- [Pub.dev Package](#)
