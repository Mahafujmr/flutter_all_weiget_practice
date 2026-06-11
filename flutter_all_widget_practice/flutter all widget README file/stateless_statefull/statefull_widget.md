

# 📘 **Flutter Stateful Widget (Complete Guide)**

---

## **(১) Stateful Widget কী? এবং কেন শিখতে হবে?**

### 🔹 **Stateful Widget কী?**

Stateful Widget হলো এমন একটি widget যার **state (data) সময়ের সাথে change হতে পারে** এবং UI সেই অনুযায়ী update হয়।

👉 মানে:

* UI dynamic (পরিবর্তনশীল)
* user interaction বা data change হলে UI update হয়

📌 উদাহরণ:

* Counter app
* Button click করলে text change
* API data load

---

### 🔹 **কেন শিখতে হবে?**

✅ কারণ:

* Real app এর বেশিরভাগ UI **dynamic হয়**
* User interaction handle করতে লাগে
* Data change হলে UI update করতে হয়
* Form, API, animation—সবকিছুতেই প্রয়োজন

---

## 🔹 **Structure বুঝো (2টা class থাকে)**

👉 Stateful Widget = 2টি class:

1. `StatefulWidget` (Main Widget)
2. `State` (Logic + UI control)

---

### 🔹 **Syntax (Structure)**

```dart
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $count"),
            ElevatedButton(
              onPressed: increment,
              child: Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

### 🔥 **Important Concept: `setState()`**

👉 `setState()` call করলে:

* UI rebuild হয়
* নতুন data show করে

📌 Example:

```dart
setState(() {
  count++;
});
```

---

## **(২) Stateful Widget এর Properties (Table)**

### 🔹 **StatefulWidget Class Properties**

| Property        | Description (বাংলায়)         | Example            |
| --------------- | ---------------------------- | ------------------ |
| `key`           | Widget uniquely identify করে | `Key('myKey')`     |
| `createState()` | State object তৈরি করে        | `_MyWidgetState()` |

---

### 🔹 **State Class Properties & Methods**

| Property / Method | Description (বাংলায়)           | Example            |
| ----------------- | ------------------------------ | ------------------ |
| `setState()`      | UI update করার জন্য ব্যবহার হয় | `setState(() {})`  |
| `build()`         | UI তৈরি করে                    | `return Text()`    |
| `initState()`     | Widget load হওয়ার সময় run হয়   | API call           |
| `dispose()`       | Widget destroy হলে run হয়      | controller cleanup |
| `context`         | widget tree access করে         | navigation         |

---

## **(৩) মনে রাখার মতো Key Points ✅**

---

### ⭐ **Core Concept**

✔ Stateful Widget = **Dynamic UI**

✔ State change হলে UI update হয়

---

### ⭐ **setState Rule**

✔ `setState()` ছাড়া UI update হবে না

✔ শুধুমাত্র changed data setState এর ভিতরে লিখতে হয়

---

### ⭐ **Structure**

✔ 2টি class থাকে

✔ Logic থাকে State class এ

---

### ⭐ **Lifecycle Important**

✔ `initState()` → start

✔ `build()` → UI render

✔ `dispose()` → end

---

### ⭐ **Usage**

✔ Counter

✔ Form input

✔ API data show

✔ Animation

---

### ⭐ **Performance Tip**

✔ অপ্রয়োজনীয় setState avoid করো

✔ ছোট widget ভাগ করে নাও

---

### ⭐ **Shortcut মনে রাখার জন্য 🧠**

👉 Stateful = **State Change = UI Change**

---

## 🎯 **Real Life Example (Simple)**

```dart
class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String text = "Click Me";

  void changeText() {
    setState(() {
      text = "Clicked!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changeText,
      child: Text(text),
    );
  }
}
```

---

## 🧠 **Final Summary**

* Stateful Widget → Dynamic UI
* setState() → UI update করে
* 2টা class থাকে
* Real app এ খুব বেশি ব্যবহার হয়

---


# 📊 **Stateful Widget Real Project Usage (Table)**

| Use Case               | কোথায় ব্যবহার হয় (Real Project) | কেন Stateful ব্যবহার করা হয়       |
| ---------------------- | ------------------------------- | --------------------------------- |
| Counter / Click Event  | Button click counter            | value change হয় → UI update দরকার |
| Form Handling          | Login, Signup form              | input change track করতে হয়        |
| API Data Load          | Product list, user data         | data async ভাবে change হয়         |
| Loading Indicator      | Loader, progress bar            | loading state change হয়           |
| Toggle / Switch        | Dark mode, ON/OFF               | user interaction এ state change   |
| Animation              | Fade, scale animation           | frame অনুযায়ী change হয়           |
| Tab Change             | Bottom navigation/tab view      | active tab change হয়              |
| Like / Favorite Button | Heart icon toggle               | click করলে icon change হয়         |
| Timer / Clock          | Live time update                | প্রতি সেকেন্ডে state change       |
| Dropdown / Selection   | Category select                 | selected value change হয়          |

---

## 🔍 **Real Project Example Concept**

👉 ধরো তুমি একটা e-commerce app বানাচ্ছো:

* Product List → API থেকে আসছে → Stateful
* Add to Cart Button → click করলে state change

📌 Example:

```dart
class LikeButton extends StatefulWidget {
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
      ),
      onPressed: toggleLike,
    );
  }
}
```

👉 এখানে icon change হচ্ছে → তাই Stateful

---

# 🎯 **Interview Questions (Stateful Widget)**

---

## 🔹 **Basic Questions**

1. **Stateful Widget কী?**
   👉 যার state change হয় এবং UI update হয়

2. **Stateful Widget কখন ব্যবহার করা হয়?**
   👉 যখন data change হয়

3. **Stateful এবং Stateless Widget এর পার্থক্য কী?**
   👉 Stateful → dynamic
   👉 Stateless → static

---

## 🔹 **Intermediate Questions**

4. **setState() কী এবং কেন ব্যবহার করা হয়?**
   👉 UI rebuild করতে

5. **setState() না দিলে কী হবে?**
   👉 UI update হবে না

6. **Stateful Widget এ কয়টা class থাকে?**
   👉 ২টা (Widget + State)

---

## 🔹 **Advanced Questions**

7. **initState() কখন call হয়?**
   👉 widget প্রথম load হলে

8. **dispose() কেন ব্যবহার করা হয়?**
   👉 resource free করার জন্য

9. **Stateful Widget performance issue কিভাবে কমাবে?**
   👉 ছোট widget এ ভাগ করে, কম setState ব্যবহার

---

## 🔹 **Real Project Scenario Questions**

10. **Form কেন Stateful Widget হয়?**
    👉 input change track করতে হয়

11. **API data show করতে Stateful কেন লাগে?**
    👉 data async change হয়

12. **Like button Stateful কেন?**
    👉 click করলে UI change হয়

---

# 🧠 **Interview Tip (Very Important)**

👉 সবসময় বলবে:

* “Stateful Widget is used for dynamic UI”
* “setState() is used to rebuild UI”
* “Used in forms, API, user interaction”

---

## ✅ **Final Insight**

✔ Real project এ Stateful Widget খুব গুরুত্বপূর্ণ

✔ যেখানে **data change = UI change**, সেখানে এটি ব্যবহার হয়

✔ Interactive app বানাতে এটা mandatory

---


