# 📦 Flutter FractionallySizedBox Widget

Flutter-এর **FractionallySizedBox Widget** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**FractionallySizedBox** হলো Flutter-এর একটি Layout Widget যা Parent Widget-এর আকারের নির্দিষ্ট অংশ (Fraction) অনুযায়ী Child Widget-এর Width এবং Height নির্ধারণ করে।

অর্থাৎ, Child Widget Parent-এর কত শতাংশ জায়গা নেবে তা নির্ধারণ করতে এই Widget ব্যবহার করা হয়।

---

# 🎯 কেন FractionallySizedBox ব্যবহার করা হয়?

✅ Parent-এর নির্দিষ্ট অংশ দখল করতে।

✅ Responsive Layout তৈরি করতে।

✅ Screen Size অনুযায়ী Widget-এর আকার পরিবর্তন করতে।

✅ Percentage ভিত্তিক UI তৈরি করতে।

✅ Fixed Width/Height ব্যবহার না করে Flexible Layout তৈরি করতে।

---

# ⚙️ Constructor

```dart
FractionallySizedBox(
  widthFactor: 0.5,
  heightFactor: 0.3,
  child: Widget(),
)
```

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property       | বর্ণনা                               |
| -------------- | ------------------------------------ |
| `widthFactor`  | Parent Width-এর কত অংশ নেবে          |
| `heightFactor` | Parent Height-এর কত অংশ নেবে         |
| `alignment`    | Child Widget-এর অবস্থান নির্ধারণ করে |
| `child`        | ভিতরের Widget                        |

---

# 🧮 Fraction কী?

Fraction অর্থ হলো Parent Widget-এর অংশ।

| Value | অর্থ |
| ----- | ---- |
| 0.25  | ২৫%  |
| 0.50  | ৫০%  |
| 0.75  | ৭৫%  |
| 1.0   | ১০০% |

---

# 🎯 কোথায় ব্যবহার হয়?

* Responsive Button
* Progress Section
* Banner Layout
* Card Layout
* Dashboard Widget
* Bottom Sheet
* Dialog Box
* Image Section
* Percentage-based Layout

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. E-commerce App

Product Card Parent-এর 80% জায়গা নেয়।

---

## ২. Dashboard

Analytics Card Screen-এর 50% জায়গা নেয়।

---

## ৩. Login Screen

Button Screen-এর 70% Width নেয়।

---

## ৪. Banner Section

Responsive Banner তৈরি করতে।

---

## ৫. Bottom Sheet

Bottom Sheet-এর Height Parent-এর 60% রাখা।

---

# 💻 Basic Example

```dart
FractionallySizedBox(
  widthFactor: 0.5,
  child: Container(
    height: 100,
    color: Colors.blue,
  ),
)
```

### ব্যাখ্যা

এখানে Container Parent-এর Width-এর ৫০% জায়গা নেবে।

---

# 💻 Complete Example

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 200,
            color: Colors.grey.shade300,
            child: FractionallySizedBox(
              widthFactor: 0.7,
              heightFactor: 0.5,
              alignment: Alignment.center,
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    '70% Width\n50% Height',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

---

# 📱 Output

* নীল Container Parent-এর Width-এর 70% নেবে।
* Height-এর 50% নেবে।
* Center-এ অবস্থান করবে।

---

# 🔄 FractionallySizedBox vs SizedBox

| FractionallySizedBox    | SizedBox               |
| ----------------------- | ---------------------- |
| Percentage ব্যবহার করে  | Fixed Size ব্যবহার করে |
| Responsive              | Fixed Layout           |
| Parent-এর উপর নির্ভরশীল | নিজস্ব Width/Height    |
| Dynamic UI-এর জন্য ভালো | Static UI-এর জন্য ভালো |

---

# 🔄 FractionallySizedBox vs Expanded

| FractionallySizedBox      | Expanded                    |
| ------------------------- | --------------------------- |
| Percentage ভিত্তিক Size   | Remaining Space নেয়        |
| Row/Column ছাড়াও কাজ করে | Row/Column-এর ভিতরে কাজ করে |
| Responsive Width/Height   | Flexible Space              |

---

# 💡 Tips

✅ Responsive UI তৈরিতে ব্যবহার করো।

✅ widthFactor এবং heightFactor 0.0 থেকে 1.0 এর মধ্যে রাখো।

✅ Fixed Width-এর পরিবর্তে ব্যবহার করলে UI আরও Flexible হয়।

✅ Login Screen ও Dashboard-এ খুব উপকারী।

---

# ⚠️ সাধারণ ভুল

❌ widthFactor 1.5 দেওয়া।

❌ Parent-এর Constraint না বুঝে ব্যবহার করা।

❌ Fixed Width এবং Fraction একসাথে ব্যবহার করা।

❌ Alignment ব্যবহার না করা।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. FractionallySizedBox কী?

Parent Widget-এর নির্দিষ্ট অংশ অনুযায়ী Child-এর Size নির্ধারণ করে।

---

### ২. widthFactor কী?

Parent Width-এর কত শতাংশ নেওয়া হবে।

---

### ৩. heightFactor কী?

Parent Height-এর কত শতাংশ নেওয়া হবে।

---

### ৪. কোথায় ব্যবহার হয়?

Responsive Layout, Banner, Dashboard, Login Screen, Card UI ইত্যাদিতে।

---

# 🚀 Quick Revision

✅ Parent-এর Percentage অনুযায়ী Size দেয়।

✅ Responsive UI তৈরি করে।

✅ widthFactor এবং heightFactor ব্যবহার করে।

✅ Dashboard ও Banner-এ বেশি ব্যবহৃত হয়।

✅ Fixed Size-এর পরিবর্তে ব্যবহার করা যায়।

---

# 🏁 সারসংক্ষেপ

**FractionallySizedBox Widget** Flutter-এর একটি গুরুত্বপূর্ণ Responsive Widget যা Parent Widget-এর নির্দিষ্ট অংশ অনুযায়ী Child Widget-এর Width এবং Height নির্ধারণ করে।

যখন Percentage ভিত্তিক Layout প্রয়োজন হয়, তখন এটি সবচেয়ে উপকারী Widget।

---

### 👨‍💻 লেখক

**Md Tuhin Hossain**

Flutter Widget Learning Series 🚀
