# 🃏 Flutter Card Widget

Flutter-এর **Card Widget** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**Card Widget** হলো Flutter-এর একটি **Material Design Widget** যা তথ্যকে একটি সুন্দর, আলাদা এবং আকর্ষণীয় Container-এর মধ্যে প্রদর্শন করতে ব্যবহৃত হয়।

Card সাধারণত একটি ছোট Information Panel হিসেবে কাজ করে যেখানে Image, Text, Icon, Button অথবা অন্য যেকোনো Widget রাখা যায়।

Flutter-এ Card Widget ব্যবহার করলে UI আরও পরিষ্কার (Clean), সুন্দর (Modern) এবং Professional দেখায়।

---

# 🎯 কেন Card Widget ব্যবহার করা হয়?

✅ তথ্য সুন্দরভাবে উপস্থাপন করতে।

✅ Material Design অনুসরণ করতে।

✅ Content-কে আলাদা Section হিসেবে দেখাতে।

✅ UI-কে আরও Professional করতে।

✅ Image, Text, Button একসাথে সাজাতে।

---

# ⚙️ Constructor

```dart
Card(
  child: Widget(),
)
```

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property             | বর্ণনা                                                                         |
| -------------------- | ------------------------------------------------------------------------------ |
| `child`              | Card-এর ভিতরের Widget                                                          |
| `color`              | Card-এর Background Color নির্ধারণ করে                                          |
| `shadowColor`        | Shadow-এর রঙ নির্ধারণ করে                                                      |
| `elevation`          | Shadow-এর গভীরতা নির্ধারণ করে                                                  |
| `shape`              | Card-এর Shape নির্ধারণ করে                                                     |
| `margin`             | Card-এর বাইরের ফাঁকা জায়গা                                                    |
| `clipBehavior`       | Child Widget কীভাবে Clip হবে                                                   |
| `borderOnForeground` | Border সামনে থাকবে নাকি পিছনে থাকবে                                            |
| `semanticContainer`  | Accessibility-এর জন্য Card-কে একটি Semantic Container হিসেবে বিবেচনা করবে কিনা |
| `surfaceTintColor`   | Material 3 অনুযায়ী Card-এর Surface Tint Color নির্ধারণ করে                    |

---

# 💻 Basic Example

```dart
Card(
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text(
      'Hello Flutter',
    ),
  ),
)
```

---

# 💻 Styled Card Example

```dart
Card(
  elevation: 8,
  color: Colors.white,
  shadowColor: Colors.black45,
  margin: EdgeInsets.all(16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  child: Padding(
    padding: EdgeInsets.all(20),
    child: Text(
      'Flutter Card Widget',
    ),
  ),
)
```

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
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: Center(
          child: Card(
            elevation: 8,
            color: Colors.white,
            shadowColor: Colors.grey,
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'MD. Tuhin Hossain',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                  ),
                ],
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

উপরের উদাহরণে একটি সুন্দর Material Card দেখা যাবে যেখানে—

- Icon থাকবে।
- Name থাকবে।
- Designation থাকবে।
- Rounded Corner থাকবে।
- Shadow থাকবে।

---

# 🎯 কোথায় ব্যবহার হয়?

- Profile Card
- Product Card
- News Card
- Blog Card
- User Information Card
- Payment Card
- Dashboard Card
- Contact Card
- Settings Option
- Statistics Card

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. E-commerce Application

Product Image, Name, Price এবং Rating দেখানোর জন্য।

---

## ২. Food Delivery App

Restaurant Card দেখানোর জন্য।

---

## ৩. Banking Application

Debit Card, Credit Card অথবা Account Information দেখানোর জন্য।

---

## ৪. Dashboard

Sales Report, Revenue, Analytics Card দেখানোর জন্য।

---

## ৫. News Application

প্রতিটি News একটি Card-এর মাধ্যমে প্রদর্শন করা হয়।

---

## ৬. Social Media Application

User Profile, Post Preview এবং Friend Suggestion দেখানোর জন্য।

---

## ৭. Education Application

Course Card, Teacher Information এবং Lesson Card দেখানোর জন্য।

---

# 🔄 Card vs Container

| Card                                | Container                   |
| ----------------------------------- | --------------------------- |
| Material Design Widget              | General Purpose Widget      |
| Built-in Shadow Support             | Shadow আলাদাভাবে দিতে হয়   |
| Rounded Design সহজে করা যায়        | Decoration ব্যবহার করতে হয় |
| Information Card তৈরির জন্য উপযুক্ত | যেকোনো Layout-এর জন্য       |

---

# 🔄 Card vs ListTile

| Card                    | ListTile                                |
| ----------------------- | --------------------------------------- |
| পুরো Container          | List Item                               |
| Custom Layout           | Predefined Layout                       |
| যেকোনো Widget রাখা যায় | Title, Subtitle, Leading, Trailing থাকে |

---

# 💡 Tips

✅ Card-এর ভিতরে `Padding` ব্যবহার করো।

✅ Rounded Corner-এর জন্য `shape` ব্যবহার করো।

✅ Shadow-এর জন্য `elevation` ব্যবহার করো।

✅ ListView-এর সাথে Card ব্যবহার করলে UI আরও সুন্দর দেখায়।

✅ Card-এর ভিতরে `ListTile` ব্যবহার করলে খুব দ্রুত Professional UI তৈরি করা যায়।

---

# ⚠️ সাধারণ ভুল

❌ Padding ব্যবহার না করা।

❌ অতিরিক্ত Elevation ব্যবহার করা।

❌ Card-এর ভিতরে অনেক বেশি Widget ভরে ফেলা।

❌ Responsive Design বিবেচনা না করা।

❌ Margin ব্যবহার না করা।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. Card Widget কী?

Card Widget হলো Material Design-এর একটি Widget যা তথ্যকে একটি সুন্দর Container-এর মধ্যে প্রদর্শন করে।

---

### ২. Card Widget কেন ব্যবহার করা হয়?

Information-কে সুন্দরভাবে উপস্থাপন করতে এবং Material Design অনুসরণ করতে।

---

### ৩. Card Widget-এর সবচেয়ে গুরুত্বপূর্ণ Property কোনটি?

- child
- elevation
- color
- shape
- margin

---

### ৪. elevation কী কাজ করে?

Card-এর Shadow-এর গভীরতা নির্ধারণ করে।

---

### ৫. shape Property কী কাজ করে?

Card-এর Border Shape এবং Border Radius নির্ধারণ করে।

---

### ৬. Card এবং Container-এর মধ্যে পার্থক্য কী?

Card Material Design অনুসরণ করে এবং Built-in Shadow প্রদান করে, কিন্তু Container একটি General Purpose Widget।

---

# 🚀 Quick Revision

✅ Material Design Widget

✅ Information প্রদর্শনের জন্য ব্যবহৃত হয়

✅ Built-in Shadow Support

✅ Rounded Corner Support

✅ elevation দিয়ে Shadow নিয়ন্ত্রণ করা যায়

✅ Dashboard ও E-commerce App-এ ব্যাপকভাবে ব্যবহৃত হয়

---

# 🏁 সারসংক্ষেপ

**Card Widget** Flutter-এর অন্যতম গুরুত্বপূর্ণ Material Design Widget। এটি তথ্যকে সুন্দর, গোছানো এবং Professional উপায়ে উপস্থাপন করতে ব্যবহৃত হয়।

প্রায় সব ধরনের Flutter Application—যেমন E-commerce, Banking, Dashboard, News, Food Delivery এবং Social Media App-এ Card Widget ব্যবহৃত হয়। Card Widget ব্যবহার করলে UI আরও আধুনিক, পরিষ্কার এবং ব্যবহারকারী-বান্ধব হয়।

---

### 👨‍💻 লেখক

**MD Tuhin Hossain**

Flutter Widget Learning Series 🚀
