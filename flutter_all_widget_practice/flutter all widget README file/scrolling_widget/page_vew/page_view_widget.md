অবশ্যই। তোমার আগের Widget Notes-এর একই **Professional + সহজে শেখার মতো Markdown format**-এ `PageView` দিলাম। এখানে basic থেকে advanced concept, সব গুরুত্বপূর্ণ property, `PageController`, horizontal/vertical scrolling, indicator, real project use case এবং interview questions রাখা হয়েছে।

# 📄 Flutter PageView Widget

Flutter-এর **PageView Widget** সম্পর্কে সহজ, বিস্তারিত এবং Professional নোট।

---

# 📖 পরিচিতি

**PageView** হলো Flutter-এর একটি গুরুত্বপূর্ণ **Scrollable Widget**, যা একাধিক Page-কে এমনভাবে প্রদর্শন করে যেখানে সাধারণত একটি সময়ে একটি Page দেখা যায় এবং User **Swipe** করে পরবর্তী বা পূর্ববর্তী Page-এ যেতে পারে।

সহজভাবে বললে:

> **PageView ব্যবহার করে Swipeable Page তৈরি করা হয়।**

যেমন:

```text
┌──────────────────────────┐
│                          │
│       Page 1             │
│                          │
│          ● ○ ○           │
└──────────────────────────┘

        Swipe →

┌──────────────────────────┐
│                          │
│       Page 2             │
│                          │
│          ○ ● ○           │
└──────────────────────────┘
```

---

# 🎯 কেন PageView ব্যবহার করা হয়?

✅ একাধিক Page Swipe করে দেখাতে।

✅ Onboarding Screen তৈরি করতে।

✅ Image বা Banner Carousel তৈরি করতে।

✅ App-এর বিভিন্ন Section Swipe করে দেখাতে।

✅ Horizontal বা Vertical Page Navigation তৈরি করতে।

✅ User Experience আরও Interactive করতে।

---

# ⚙️ Constructor

```dart
PageView(
  children: [
    Widget(),
    Widget(),
    Widget(),
  ],
)
```

Dynamic বা অনেকগুলো Page-এর জন্য:

```dart
PageView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return Widget();
  },
)
```

---

# 🏗️ PageView-এর প্রধান ধরন

PageView সাধারণত ৩ভাবে ব্যবহার করা যায়:

### 1. `PageView()`

ছোট এবং Static সংখ্যক Page-এর জন্য।

### 2. `PageView.builder()`

Dynamic Data বা অনেক Page-এর জন্য।

### 3. `PageView.custom()`

Advanced এবং Custom Page Layout-এর জন্য।

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property                 | বর্ণনা                                             |
| ------------------------ | -------------------------------------------------- |
| `children`               | PageView-এর ভিতরের Page-গুলো নির্ধারণ করে          |
| `controller`             | Page-এর Position এবং Navigation Control করে        |
| `scrollDirection`        | Page Horizontal নাকি Vertical হবে তা নির্ধারণ করে  |
| `reverse`                | Scroll Direction উল্টে দেয়                        |
| `physics`                | Scroll-এর আচরণ নিয়ন্ত্রণ করে                      |
| `pageSnapping`           | Scroll করার সময় Page-এ Snap করবে কিনা             |
| `onPageChanged`          | Page পরিবর্তন হলে Callback দেয়                    |
| `allowImplicitScrolling` | কাছাকাছি Page আগে থেকে প্রস্তুত রাখতে সাহায্য করে  |
| `padEnds`                | Scrollable Content-এর শুরু/শেষে Padding রাখবে কিনা |
| `clipBehavior`           | Child-এর বাইরে আঁকা অংশ Clip করবে কিনা             |
| `dragStartBehavior`      | Drag শুরু হওয়ার আচরণ নির্ধারণ করে                 |
| `hitTestBehavior`        | Pointer Event কীভাবে Handle হবে তা নির্ধারণ করে    |
| `scrollBehavior`         | Scroll-এর Default Behavior পরিবর্তন করতে           |
| `restorationId`          | Scroll Position Restore করার জন্য ID               |

---

# 🎮 PageController কী?

**PageController** ব্যবহার করে PageView-এর Page Programmatically Control করা যায়।

এর মাধ্যমে আমরা:

* নির্দিষ্ট Page-এ যেতে পারি
* Next Page-এ যেতে পারি
* Previous Page-এ যেতে পারি
* Current Page জানতে পারি
* Page Animation করতে পারি

---

# ⚙️ PageController-এর গুরুত্বপূর্ণ Methods

| Method            | কাজ                                   |
| ----------------- | ------------------------------------- |
| `jumpToPage()`    | Animation ছাড়া নির্দিষ্ট Page-এ যায় |
| `animateToPage()` | Animation সহ নির্দিষ্ট Page-এ যায়    |
| `nextPage()`      | পরবর্তী Page-এ যায়                   |
| `previousPage()`  | আগের Page-এ যায়                      |

---

# 💻 Basic Example

```dart
PageView(
  children: [
    Container(
      color: Colors.red,
      child: Center(
        child: Text("Page 1"),
      ),
    ),

    Container(
      color: Colors.blue,
      child: Center(
        child: Text("Page 2"),
      ),
    ),

    Container(
      color: Colors.green,
      child: Center(
        child: Text("Page 3"),
      ),
    ),
  ],
)
```

এখানে User Swipe করলে:

```text
Page 1 → Page 2 → Page 3
```

এভাবে Page পরিবর্তন হবে।

---

# 💻 scrollDirection

Defaultভাবে PageView **Horizontal** Scroll করে।

```dart
PageView(
  scrollDirection: Axis.horizontal,
)
```

Vertical PageView তৈরি করতে:

```dart
PageView(
  scrollDirection: Axis.vertical,
)
```

---

# 💻 Vertical PageView Example

```dart
PageView(
  scrollDirection: Axis.vertical,
  children: [
    Center(
      child: Text("Page 1"),
    ),
    Center(
      child: Text("Page 2"),
    ),
    Center(
      child: Text("Page 3"),
    ),
  ],
)
```

এখন User Up/Down Swipe করে Page পরিবর্তন করতে পারবে।

---

# 📌 pageSnapping

`pageSnapping` নির্ধারণ করে Scroll করার সময় Page-এর উপর Snap করবে কিনা।

Default:

```dart
pageSnapping: true
```

অর্থাৎ একটি Page থেকে অন্য Page-এ সুন্দরভাবে Snap করবে।

```dart
PageView(
  pageSnapping: true,
  children: [
    ...
  ],
)
```

---

# 📌 onPageChanged

Page পরিবর্তন হলে `onPageChanged` Callback ব্যবহার করা হয়।

```dart
PageView(
  onPageChanged: (index) {
    print("Current Page: $index");
  },
  children: [
    Text("Page 1"),
    Text("Page 2"),
    Text("Page 3"),
  ],
)
```

এখানে:

```text
Page 1 → index 0
Page 2 → index 1
Page 3 → index 2
```

---

# 💻 Page Indicator তৈরি করা

`onPageChanged` ব্যবহার করে Current Page Track করা যায়।

```dart
int currentPage = 0;
```

তারপর:

```dart
PageView(
  onPageChanged: (index) {
    setState(() {
      currentPage = index;
    });
  },
)
```

এর মাধ্যমে নিচে Indicator দেখানো যায়:

```text
● ○ ○

○ ● ○

○ ○ ●
```

---

# 💻 PageController Example

```dart
final PageController pageController = PageController();
```

Next Page:

```dart
pageController.nextPage(
  duration: Duration(milliseconds: 300),
  curve: Curves.easeInOut,
);
```

Previous Page:

```dart
pageController.previousPage(
  duration: Duration(milliseconds: 300),
  curve: Curves.easeInOut,
);
```

নির্দিষ্ট Page:

```dart
pageController.animateToPage(
  2,
  duration: Duration(milliseconds: 300),
  curve: Curves.easeInOut,
);
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
      debugShowCheckedModeBanner: false,
      home: const PageViewScreen(),
    );
  }
}

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {

  final PageController _pageController = PageController();

  int currentPage = 0;

  final List<String> pages = [
    "Welcome to Flutter",
    "Learn Flutter Widgets",
    "Build Real Projects",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView"),
      ),

      body: Column(
        children: [

          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: pages.length,

              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },

              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    pages[index],
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              pages.length,
              (index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  width: currentPage == index ? 20 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? Colors.blue
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: currentPage < pages.length - 1
                ? () {
                    _pageController.nextPage(
                      duration: const Duration(
                        milliseconds: 300,
                      ),
                      curve: Curves.easeInOut,
                    );
                  }
                : null,
            child: const Text("Next"),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
```

---

# 🎯 PageView.builder()

যখন Page-এর সংখ্যা Dynamic হয় তখন `PageView.builder()` ব্যবহার করা হয়।

```dart
PageView.builder(
  itemCount: 10,

  itemBuilder: (context, index) {
    return Center(
      child: Text(
        "Page ${index + 1}",
      ),
    );
  },
)
```

এটি `ListView.builder()`-এর মতো Lazy Building Concept ব্যবহার করে।

---

# 🔄 PageView vs PageView.builder()

| PageView                    | PageView.builder()               |
| --------------------------- | -------------------------------- |
| Static Page-এর জন্য         | Dynamic Page-এর জন্য             |
| `children` ব্যবহার করে      | `itemBuilder` ব্যবহার করে        |
| ছোট সংখ্যক Page-এর জন্য     | বড়/Dynamic Data-এর জন্য         |
| সব Child আগে Define করা হয় | প্রয়োজন অনুযায়ী Page Build হয় |

---

# 🔄 PageView vs ListView

| PageView                    | ListView                   |
| --------------------------- | -------------------------- |
| Page-by-Page Navigation     | Continuous List            |
| সাধারণত একটি Page দেখা যায় | একাধিক Item দেখা যেতে পারে |
| Swipeable Screen            | Scrollable List            |
| Onboarding-এর জন্য ভালো     | Chat/List-এর জন্য ভালো     |

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. Onboarding Screen

App প্রথমবার Open করলে:

```text
Welcome
   ↓
Features
   ↓
Get Started
```

User Swipe করে প্রতিটি Page দেখতে পারে।

---

## ২. Image Carousel

E-commerce বা News App-এ Banner দেখাতে:

```text
Banner 1 → Banner 2 → Banner 3
```

---

## ৩. Product Image Gallery

একটি Product-এর একাধিক Image Swipe করে দেখাতে।

---

## ৪. Social Media App

Image বা Content Carousel তৈরি করতে।

---

## ৫. Profile Section

User Profile-এর বিভিন্ন Information আলাদা Page হিসেবে দেখাতে।

---

## ৬. Tutorial App

একাধিক Tutorial Step Swipe করে দেখাতে।

---

## ৭. Dashboard

Dashboard-এর বিভিন্ন Data Section Swipeable Page হিসেবে দেখাতে।

---

# 💡 Best Practices

✅ Static Page হলে `PageView()` ব্যবহার করো।

✅ Dynamic Data হলে `PageView.builder()` ব্যবহার করো।

✅ Programmatic Navigation-এর জন্য `PageController` ব্যবহার করো।

✅ Page Indicator-এর জন্য `onPageChanged` ব্যবহার করো।

✅ `PageController` ব্যবহার করলে `dispose()` করতে ভুলবে না।

✅ Image Carousel-এর ক্ষেত্রে Image Size Optimize করো।

---

# ⚠️ সাধারণ ভুল

❌ `PageController` তৈরি করে Dispose না করা।

❌ Dynamic Data-এর জন্য অপ্রয়োজনীয়ভাবে `children` ব্যবহার করা।

❌ `onPageChanged` ব্যবহার করে Current Page Track না করা।

❌ Nested PageView-এর Scroll Conflict বিবেচনা না করা।

❌ Page-এর ভিতরে অতিরিক্ত Heavy Widget ব্যবহার করা।

---

# 🚀 Performance Tips

### ১. Dynamic Data-এর জন্য Builder ব্যবহার করো

অনেকগুলো Page থাকলে:

```dart
PageView.builder()
```

ব্যবহার করা ভালো।

### ২. Image Optimize করো

Carousel বা Gallery-তে বড় Image ব্যবহার করলে Memory Usage বাড়তে পারে।

### ৩. Controller Dispose করো

```dart
@override
void dispose() {
  _pageController.dispose();
  super.dispose();
}
```

### ৪. অপ্রয়োজনীয় Rebuild কমাও

Page Change হলে পুরো Screen অপ্রয়োজনীয়ভাবে Rebuild না করার চেষ্টা করো।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. PageView Widget কী?

PageView হলো একটি Scrollable Widget যা User-কে Swipe করে এক Page থেকে অন্য Page-এ যেতে দেয়।

---

### ২. PageView কোথায় ব্যবহার হয়?

Onboarding, Image Carousel, Product Gallery, Tutorial এবং Swipeable Dashboard-এ।

---

### ৩. PageView এবং ListView-এর মধ্যে পার্থক্য কী?

PageView Page-by-Page Navigation-এর জন্য ব্যবহৃত হয়, আর ListView সাধারণ Scrollable List-এর জন্য ব্যবহৃত হয়।

---

### ৪. PageController কী?

PageController ব্যবহার করে PageView-এর Page Programmatically Control করা যায়।

---

### ৫. `animateToPage()` কী করে?

Animation সহ নির্দিষ্ট Page-এ নিয়ে যায়।

---

### ৬. `jumpToPage()` কী করে?

কোনো Animation ছাড়াই নির্দিষ্ট Page-এ নিয়ে যায়।

---

### ৭. `onPageChanged` কী?

User বা Programmatically Page পরিবর্তন করলে এটি Callback প্রদান করে।

---

### ৮. `PageView.builder()` কখন ব্যবহার করা হয়?

Dynamic বা অনেকগুলো Page যখন Data থেকে তৈরি করতে হয় তখন `PageView.builder()` ব্যবহার করা হয়।

---

### ৯. PageView-এর Default Scroll Direction কী?

`Axis.horizontal`

---

# 🚀 Quick Revision

✅ Swipeable Page তৈরি করে।

✅ Defaultভাবে Horizontal Scroll করে।

✅ Vertical Scroll-ও করা যায়।

✅ `PageController` দিয়ে Page Control করা যায়।

✅ `onPageChanged` দিয়ে Current Page জানা যায়।

✅ `PageView.builder()` Dynamic Page-এর জন্য ব্যবহার করা হয়।

✅ Onboarding এবং Carousel-এ ব্যাপকভাবে ব্যবহৃত হয়।

---

# 🏁 সারসংক্ষেপ

**PageView Widget** Flutter-এর একটি গুরুত্বপূর্ণ Scrollable Widget, যা একাধিক Page-কে Swipeable Interface-এর মাধ্যমে প্রদর্শন করতে ব্যবহৃত হয়।

এর মাধ্যমে সহজেই:

**Onboarding → Carousel → Image Gallery → Tutorial → Swipeable Dashboard**

তৈরি করা যায়।

PageView ভালোভাবে শেখার জন্য এই Conceptগুলো অবশ্যই পরিষ্কার রাখতে হবে:

**`PageView` → `PageView.builder()` → `PageController` → `onPageChanged` → `animateToPage()` → `nextPage()` → `previousPage()` → `pageSnapping`**

এই বিষয়গুলো বুঝে গেলে Flutter-এর Swipeable UI তৈরি করা অনেক সহজ হয়ে যাবে।

---

### 👨‍💻 লেখক

**MD Tuhin Hossain**

Flutter Widget Learning Series 🚀
