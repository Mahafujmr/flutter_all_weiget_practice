# 🔲 Flutter GridView.builder()

Flutter-এর **GridView.builder()** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**GridView.builder()** হলো Flutter-এর একটি গুরুত্বপূর্ণ **Scrollable Grid Widget**, যা Dynamic Data-কে **Row এবং Column আকারে Grid Layout** হিসেবে প্রদর্শন করতে ব্যবহৃত হয়।

`ListView.builder()` যেখানে Data-কে সাধারণত একটি Vertical বা Horizontal List হিসেবে দেখায়, সেখানে `GridView.builder()` Data-কে একাধিক Column-এর মাধ্যমে Grid আকারে প্রদর্শন করে।

এটি **Lazy Loading** ব্যবহার করে। অর্থাৎ প্রয়োজন অনুযায়ী Grid Item তৈরি করে, তাই বড় পরিমাণ Data প্রদর্শনের জন্য এটি Performance Friendly।

---

# 🎯 কেন GridView.builder() ব্যবহার করা হয়?

✅ Dynamic Data Grid আকারে দেখাতে।

✅ বড় সংখ্যক Item Efficientভাবে প্রদর্শন করতে।

✅ Product Grid তৈরি করতে।

✅ Image Gallery তৈরি করতে।

✅ API বা Database থেকে আসা Data প্রদর্শন করতে।

✅ Responsive Grid Layout তৈরি করতে।

---

# ⚙️ Constructor

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemCount: 20,
  itemBuilder: (context, index) {
    return Widget();
  },
)
```

---

# 🧩 GridView.builder() কীভাবে কাজ করে?

GridView.builder()-এর প্রধানত **৩টি বিষয়** বুঝতে হবে:

### ১. `gridDelegate`

Grid-এর Layout কেমন হবে তা নির্ধারণ করে।

### ২. `itemCount`

মোট কতটি Grid Item থাকবে তা নির্ধারণ করে।

### ৩. `itemBuilder`

প্রতিটি Grid Item কীভাবে তৈরি হবে তা নির্ধারণ করে।

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property                  | কাজ                                                     |
| ------------------------- | ------------------------------------------------------- |
| `gridDelegate`            | Grid-এর Column, Row, Spacing এবং Item Size নির্ধারণ করে |
| `itemBuilder`             | প্রতিটি Grid Item তৈরি করে                              |
| `itemCount`               | মোট Item সংখ্যা নির্ধারণ করে                            |
| `scrollDirection`         | Grid কোন দিকে Scroll করবে                               |
| `reverse`                 | Scroll Direction উল্টে দেয়                             |
| `controller`              | Scroll Control করার জন্য                                |
| `primary`                 | Primary Scroll View হিসেবে কাজ করবে কিনা                |
| `physics`                 | Scroll Behavior নিয়ন্ত্রণ করে                          |
| `shrinkWrap`              | Grid-এর Height/Size Content অনুযায়ী নির্ধারণ করে       |
| `padding`                 | Grid-এর চারপাশে Padding দেয়                            |
| `cacheExtent`             | Visible Area-এর বাইরে কতটুকু আগে Build করবে             |
| `keyboardDismissBehavior` | Scroll করার সময় Keyboard Hide করবে কিনা                |
| `clipBehavior`            | Grid-এর বাইরে Child আঁকা হলে Clip করবে কিনা             |

---

# ⭐ gridDelegate কী?

`gridDelegate` হলো GridView.builder()-এর সবচেয়ে গুরুত্বপূর্ণ Property।

এটি নির্ধারণ করে:

* কতটি Column থাকবে
* Item-এর Width/Height
* Row Spacing
* Column Spacing
* Aspect Ratio

সবচেয়ে বেশি ব্যবহৃত দুইটি Grid Delegate হলো:

### ১. SliverGridDelegateWithFixedCrossAxisCount

নির্দিষ্ট সংখ্যক Column তৈরি করতে ব্যবহার করা হয়।

### ২. SliverGridDelegateWithMaxCrossAxisExtent

Item-এর Maximum Width নির্ধারণ করে Responsiveভাবে Column সংখ্যা তৈরি করতে ব্যবহার করা হয়।

---

# 1️⃣ SliverGridDelegateWithFixedCrossAxisCount

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemCount: 10,
  itemBuilder: (context, index) {
    return Card(
      child: Center(
        child: Text("Item $index"),
      ),
    );
  },
)
```

এখানে:

```text
crossAxisCount: 2
```

মানে প্রতি Row-তে **২টি Column** থাকবে।

```text
┌─────────┐ ┌─────────┐
│ Item 1  │ │ Item 2  │
└─────────┘ └─────────┘

┌─────────┐ ┌─────────┐
│ Item 3  │ │ Item 4  │
└─────────┘ └─────────┘
```

---

# 🔑 FixedCrossAxisCount-এর Properties

| Property           | কাজ                                 |
| ------------------ | ----------------------------------- |
| `crossAxisCount`   | প্রতি Row-তে কতটি Column থাকবে      |
| `mainAxisSpacing`  | Row-এর মধ্যে Vertical Space         |
| `crossAxisSpacing` | Column-এর মধ্যে Horizontal Space    |
| `childAspectRatio` | Item-এর Width : Height Ratio        |
| `mainAxisExtent`   | Item-এর Main Axis-এর নির্দিষ্ট Size |

---

# 2️⃣ SliverGridDelegateWithMaxCrossAxisExtent

এটি Responsive Grid তৈরির জন্য খুব উপকারী।

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
  ),
  itemCount: 20,
  itemBuilder: (context, index) {
    return Card(
      child: Center(
        child: Text("Product $index"),
      ),
    );
  },
)
```

এখানে Flutter চেষ্টা করবে প্রতিটি Item-এর Width `200`-এর বেশি না রাখতে এবং Screen-এর Width অনুযায়ী যতগুলো Column সম্ভব তৈরি করবে।

---

# 📐 childAspectRatio কী?

`childAspectRatio` Item-এর **Width এবং Height-এর Ratio** নির্ধারণ করে।

```dart
childAspectRatio: 1
```

মানে:

```text
Width = Height
```

অর্থাৎ Square Item হবে।

---

### উদাহরণ

```dart
childAspectRatio: 2
```

মানে Item তুলনামূলকভাবে বেশি Wide হবে।

```text
┌────────────────────┐
│                    │
└────────────────────┘
```

আর:

```dart
childAspectRatio: 0.7
```

দিলে Item তুলনামূলকভাবে বেশি Tall হবে।

---

# ↔️ mainAxisSpacing

দুটি Row-এর মধ্যে Vertical Space তৈরি করে।

```dart
mainAxisSpacing: 15
```

---

# ↕️ crossAxisSpacing

দুটি Column-এর মধ্যে Horizontal Space তৈরি করে।

```dart
crossAxisSpacing: 10
```

---

# 💻 Basic Example

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemCount: 10,
  itemBuilder: (context, index) {
    return Card(
      child: Center(
        child: Text(
          "Item ${index + 1}",
        ),
      ),
    );
  },
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

  final List<String> products = const [
    "Laptop",
    "Mobile",
    "Headphone",
    "Keyboard",
    "Mouse",
    "Monitor",
    "Camera",
    "Watch",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product Grid"),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: products.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Center(
                child: Text(
                  products[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
```

---

# 📱 Output

```text
┌──────────────┐  ┌──────────────┐
│    Laptop    │  │    Mobile    │
└──────────────┘  └──────────────┘

┌──────────────┐  ┌──────────────┐
│  Headphone   │  │   Keyboard   │
└──────────────┘  └──────────────┘

┌──────────────┐  ┌──────────────┐
│     Mouse    │  │    Monitor   │
└──────────────┘  └──────────────┘
```

---

# 🎯 কোথায় ব্যবহার হয়?

* E-commerce Product Grid
* Photo Gallery
* Food Menu
* Category Grid
* Dashboard
* Course Grid
* Movie Grid
* Game Grid
* Image Gallery
* Social Media Content

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. E-commerce Application

Product Image, Name, Price এবং Rating Grid আকারে দেখাতে।

```text
Product 1    Product 2

Product 3    Product 4

Product 5    Product 6
```

---

## ২. Food Delivery App

Food Item বা Restaurant Category দেখাতে।

---

## ৩. Gallery Application

ছবিগুলো Grid আকারে প্রদর্শন করতে।

---

## ৪. Learning Application

Course বা Lesson Card Grid আকারে দেখাতে।

---

## ৫. Movie Application

Movie Poster Grid আকারে দেখাতে।

---

## ৬. Dashboard

Statistics অথবা Feature Card Grid আকারে প্রদর্শন করতে।

---

# 🔄 GridView.builder() vs ListView.builder()

| GridView.builder()           | ListView.builder()         |
| ---------------------------- | -------------------------- |
| Grid Layout তৈরি করে         | List Layout তৈরি করে       |
| একাধিক Column থাকতে পারে     | সাধারণত এক Column          |
| Product Grid-এর জন্য ভালো    | Chat/List-এর জন্য ভালো     |
| Image Gallery-তে ব্যবহার হয় | Contact List-এ ব্যবহার হয় |

---

# 🔄 GridView.builder() vs GridView.count()

| GridView.builder()        | GridView.count()              |
| ------------------------- | ----------------------------- |
| Dynamic Data-এর জন্য ভালো | ছোট Static Grid-এর জন্য ভালো  |
| Lazy Loading Support      | সব Child আগে থেকেই দেওয়া হয় |
| বড় Data-এর জন্য ভালো     | ছোট Data-এর জন্য ভালো         |
| `itemBuilder` ব্যবহার করে | `children` ব্যবহার করে        |

---

# 💡 Best Practices

✅ Dynamic বা বড় Data-এর জন্য `GridView.builder()` ব্যবহার করো।

✅ Product Grid-এর জন্য `SliverGridDelegateWithFixedCrossAxisCount` ব্যবহার করা সহজ।

✅ Responsive Layout-এর জন্য `SliverGridDelegateWithMaxCrossAxisExtent` বিবেচনা করো।

✅ `const` Widget ব্যবহার করো যেখানে সম্ভব।

✅ Image Grid হলে Image-এর Size ও Aspect Ratio ঠিক রাখো।

---

# ⚠️ সাধারণ ভুল

❌ `gridDelegate` না দেওয়া।

❌ `itemCount` ভুল দেওয়া।

❌ খুব বেশি Column ব্যবহার করে Item অতিরিক্ত ছোট করে ফেলা।

❌ `childAspectRatio` না বুঝে ব্যবহার করা।

❌ Nested GridView ব্যবহার করে Scroll সমস্যা তৈরি করা।

❌ `Column`-এর ভিতরে GridView ব্যবহার করার সময় Constraint না দেওয়া।

---

# 🚀 Performance Tips

### ১. Lazy Loading

`GridView.builder()` প্রয়োজন অনুযায়ী Item Build করে, তাই বড় Grid-এর জন্য এটি উপযোগী।

### ২. `const` ব্যবহার

যেসব Widget পরিবর্তন হয় না সেখানে `const` ব্যবহার করো।

### ৩. Image Optimization

Grid-এ অনেক Image থাকলে Image-এর Size এবং Resolution Optimize করা গুরুত্বপূর্ণ।

### ৪. Pagination

API থেকে হাজার হাজার Product একসাথে না এনে Pagination ব্যবহার করলে Performance আরও ভালো হবে।

### ৫. Fixed Item Size

সম্ভব হলে `childAspectRatio` অথবা `mainAxisExtent` ব্যবহার করে Item-এর Size predictable রাখো।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. GridView.builder() কী?

`GridView.builder()` হলো একটি Lazy Loading Grid Widget যা Dynamic Data-কে Grid Layout-এ প্রদর্শন করে।

---

### ২. GridView.builder() কেন ব্যবহার করা হয়?

বড় এবং Dynamic Data Efficientভাবে Grid আকারে দেখানোর জন্য।

---

### ৩. `gridDelegate` কী কাজ করে?

Grid-এর Structure, Column সংখ্যা, Spacing এবং Item Size নির্ধারণ করে।

---

### ৪. `crossAxisCount` কী?

প্রতিটি Row-তে কতটি Column থাকবে তা নির্ধারণ করে।

---

### ৫. `childAspectRatio` কী?

Grid Item-এর Width এবং Height-এর Ratio নির্ধারণ করে।

---

### ৬. `mainAxisSpacing` কী?

প্রতিটি Row-এর মধ্যে Vertical Space তৈরি করে।

---

### ৭. `crossAxisSpacing` কী?

প্রতিটি Column-এর মধ্যে Horizontal Space তৈরি করে।

---

### ৮. `GridView.builder()` এবং `GridView.count()`-এর পার্থক্য কী?

`GridView.builder()` Dynamic এবং বড় Data-এর জন্য Lazy Loading ব্যবহার করে, আর `GridView.count()` সাধারণত ছোট Static Grid-এর জন্য ব্যবহৃত হয়।

---

# 🚀 Quick Revision

✅ Grid Layout তৈরি করে

✅ Lazy Loading Support করে

✅ Dynamic Data-এর জন্য উপযুক্ত

✅ `gridDelegate` অত্যন্ত গুরুত্বপূর্ণ

✅ `crossAxisCount` Column সংখ্যা নির্ধারণ করে

✅ `childAspectRatio` Item-এর Shape নির্ধারণে সাহায্য করে

✅ E-commerce এবং Gallery App-এ ব্যাপকভাবে ব্যবহৃত হয়

---

# 🏁 সারসংক্ষেপ

**GridView.builder()** Flutter-এর একটি অত্যন্ত গুরুত্বপূর্ণ এবং Performance-Friendly Widget। এটি Dynamic Data-কে সুন্দর Grid Layout-এ প্রদর্শন করার জন্য ব্যবহৃত হয়।

বিশেষ করে **E-commerce Product Grid, Image Gallery, Food Menu, Course List, Movie App এবং Dashboard**-এর মতো Real Project-এ এর ব্যবহার অনেক বেশি।

`GridView.builder()` ভালোভাবে বুঝতে হলে মূলত এই বিষয়গুলো পরিষ্কারভাবে জানতে হবে:

**`gridDelegate` → `itemCount` → `itemBuilder` → `crossAxisCount` → `childAspectRatio` → `mainAxisSpacing` → `crossAxisSpacing`**

এই Conceptগুলো বুঝে গেলে Flutter-এর Grid Layout তৈরি করা অনেক সহজ হয়ে যাবে।

---

### 👨‍💻 লেখক

**Md Tuhin Hossain**

Flutter Widget Learning Series 🚀
