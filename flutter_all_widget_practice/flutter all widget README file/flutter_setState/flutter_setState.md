# Flutter `setState()` – Complete Professional Note

> **বিষয়:** Flutter Local State Management
> **লেভেল:** Beginner → Intermediate
> **Widget Type:** StatefulWidget

---

# সূচিপত্র

* setState() কী?
* State কী?
* কেন setState() ব্যবহার করা হয়?
* setState() কীভাবে কাজ করে?
* Syntax
* Lifecycle
* কখন ব্যবহার করা হয়?
* কখন ব্যবহার করা উচিত নয়?
* Real Project Example
* সুবিধা
* অসুবিধা
* Best Practices
* Common Mistakes
* Interview Questions
* Summary

---

# ১। State কী?

Flutter-এ **State** বলতে এমন ডেটাকে বোঝায় যেটি অ্যাপ চলাকালীন সময়ে পরিবর্তিত হতে পারে।

### উদাহরণ

* Counter Value
* Password Visibility
* Favorite Button
* Checkbox Value
* Cart Quantity
* Loading State

---

# ২। setState() কী?

`setState()` হলো StatefulWidget-এর একটি Method।

এটি Flutter-কে জানায় যে Widget-এর State পরিবর্তন হয়েছে এবং UI পুনরায় Build করতে হবে।

```dart
setState(() {
   // state change
});
```

---

# ৩। কেন setState() ব্যবহার করা হয়?

Flutter-এ শুধুমাত্র Variable-এর মান পরিবর্তন করলে UI আপডেট হয় না।

```dart
count++;
```

এখানে Variable-এর মান পরিবর্তন হবে কিন্তু UI পরিবর্তন হবে না।

UI আপডেট করার জন্য Flutter-কে জানাতে হয়।

```dart
setState(() {
   count++;
});
```

এখন Flutter Widget-টি পুনরায় Build করবে এবং UI আপডেট হবে।

---

# ৪। setState() কীভাবে কাজ করে?

```text
User Action
     ↓
State Change
     ↓
setState()
     ↓
build() Method Call
     ↓
UI Rebuild
```

---

# ৫। Syntax

```dart
setState(() {
   variable = newValue;
});
```

উদাহরণ:

```dart
setState(() {
   count++;
});
```

---

# ৬। Widget Lifecycle

```text
createState()
      ↓
initState()
      ↓
build()
      ↓
setState()
      ↓
build()
      ↓
dispose()
```

যখনই `setState()` কল করা হয়, Flutter পুনরায় `build()` Method চালায়।

---

# ৭। কখন setState() ব্যবহার করা হয়?

✅ Counter App

✅ Password Show/Hide

✅ Favorite Button

✅ Checkbox

✅ Radio Button

✅ Toggle Button

✅ Cart Quantity

✅ Form Validation

✅ Theme Switch

---

# ৮। কখন setState() ব্যবহার করা উচিত নয়?

নিচের পরিস্থিতিতে setState ব্যবহার করা ভালো নয়:

* বড় Application
* Multiple Screen State
* Global State Management
* Complex Business Logic
* Shared Data

এক্ষেত্রে ব্যবহার করা হয়:

* GetX
* Provider
* Riverpod
* Bloc

---

# ৯। Counter Example

```dart
class _HomePageState extends State<HomePage> {

  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$count"),
      ),
      floatingActionButton:
          FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

---

# ১০। Real Project Example

## Password Visibility

```dart
bool isHidden = true;

setState(() {
   isHidden = !isHidden;
});
```

---

## Favorite Button

```dart
setState(() {
   isFavorite = !isFavorite;
});
```

---

## Cart Quantity

```dart
setState(() {
   quantity++;
});
```

---

## Dark Mode Toggle

```dart
setState(() {
   isDark = !isDark;
});
```

---

# ১১। setState() এর সুবিধা

### ✅ সহজে শেখা যায়

Flutter-এর সবচেয়ে সহজ State Management।

### ✅ Built-in

কোনো Package ব্যবহার করতে হয় না।

### ✅ Beginner Friendly

নতুনদের জন্য উপযুক্ত।

### ✅ দ্রুত Development

ছোট Project দ্রুত তৈরি করা যায়।

### ✅ Local State Management

একটি Widget-এর State সহজে নিয়ন্ত্রণ করা যায়।

---

# ১২। setState() এর অসুবিধা

### ❌ পুরো Widget Rebuild হয়

### ❌ বড় Project-এর জন্য উপযুক্ত নয়

### ❌ Performance Issue হতে পারে

### ❌ State Share করা কঠিন

### ❌ Code Maintain করা কঠিন

---

# ১৩। Best Practices

## ছোট State Update করুন

```dart
setState(() {
   count++;
});
```

---

## Heavy Operation করবেন না

❌ ভুল:

```dart
setState(() {
   fetchData();
});
```

---

✅ সঠিক:

```dart
var data = fetchData();

setState(() {
   result = data;
});
```

---

## বড় Widget ভাগ করুন

বড় Widget-কে ছোট ছোট Widget-এ ভাগ করলে Performance ভালো হয়।

---

## mounted Check করুন

```dart
if (mounted) {
   setState(() {});
}
```

---

# ১৪। Common Mistakes

## ১। setState() ভুলে যাওয়া

```dart
count++;
```

UI আপডেট হবে না।

---

## ২। dispose() এর পরে setState()

```text
setState() called after dispose()
```

---

## ৩। StatelessWidget-এ ব্যবহার করা

```dart
class Home extends StatelessWidget
```

এখানে setState ব্যবহার করা যায় না।

---

# ১৫। setState বনাম GetX

| বিষয়                | setState | GetX   |
| -------------------- | -------- | ------ |
| Local State          | ✅        | ✅      |
| Global State         | ❌        | ✅      |
| Large Project        | ❌        | ✅      |
| Route Management     | ❌        | ✅      |
| Dependency Injection | ❌        | ✅      |
| শেখা                 | সহজ      | মাঝারি |

---

# ১৬। Interview Questions

### প্রশ্ন ১: setState() কী?

setState() হলো একটি Method যা Flutter-কে জানায় যে Widget-এর State পরিবর্তন হয়েছে এবং UI পুনরায় Build করতে হবে।

---

### প্রশ্ন ২: setState() কোন Widget-এ ব্যবহার করা হয়?

শুধুমাত্র StatefulWidget-এ।

---

### প্রশ্ন ৩: setState() কি পুরো App Rebuild করে?

না।

শুধুমাত্র বর্তমান Widget এবং তার Child Widget গুলো Rebuild হয়।

---

### প্রশ্ন ৪: setState() কে Local State Management বলা হয় কেন?

কারণ এটি শুধুমাত্র একটি Widget-এর State নিয়ন্ত্রণ করে।

---

### প্রশ্ন ৫: বড় Project-এ setState() ব্যবহার করা উচিত কি?

না।

বড় Project-এ GetX, Provider অথবা Bloc ব্যবহার করা ভালো।

---

# ১৭। সারসংক্ষেপ

* `setState()` হলো Flutter-এর Built-in State Management।
* এটি StatefulWidget-এ ব্যবহার করা হয়।
* State পরিবর্তন হলে UI Update করে।
* ছোট Application-এর জন্য উপযুক্ত।
* বড় Project-এর জন্য GetX বা Provider ব্যবহার করা হয়।
* Flutter State Management শেখার প্রথম ধাপ হলো `setState()`।

---

# Quick Revision

✅ StatefulWidget-এ কাজ করে।

✅ UI Update করে।

✅ build() Method পুনরায় Call করে।

✅ Local State Management।

✅ ছোট Project-এর জন্য ভালো।

✅ Flutter State Management-এর ভিত্তি।
