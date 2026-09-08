অবশ্যই। Onboarding example-এ `List<Map<String, dynamic>>` ব্যবহার না করে **Typed Model** ব্যবহার করলে code আরও clean, type-safe এবং professional হবে।

তোমার PageView note-এর onboarding অংশে এভাবে রাখা ভালো:

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

- নির্দিষ্ট Page-এ যেতে পারি
- Next Page-এ যেতে পারি
- Previous Page-এ যেতে পারি
- Current Page জানতে পারি
- Page Animation করতে পারি

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

# 🚀 Real Project Example: Onboarding Screen

একটি বাস্তব App-এ `PageView` সবচেয়ে বেশি ব্যবহৃত হয় **Onboarding Screen** তৈরি করতে।

একটি Professional Onboarding-এর Structure হতে পারে:

```text
App Launch
    ↓
Onboarding Page 1
    ↓
Onboarding Page 2
    ↓
Onboarding Page 3
    ↓
Get Started
    ↓
Home Screen
```

এখানে প্রতিটি Page-এর Data আলাদা রাখার জন্য আমরা একটি **Typed Model** ব্যবহার করতে পারি।

---

# 🧱 Step 1: Onboarding Model তৈরি

প্রথমে `OnboardingModel` নামে একটি Model তৈরি করি।

```dart
class OnboardingModel {
  final String title;
  final String description;
  final String image;

  const OnboardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}
```

এখানে প্রতিটি Onboarding Page-এর তিনটি Data রয়েছে:

| Property      | Type     | কাজ                 |
| ------------- | -------- | ------------------- |
| `title`       | `String` | Page-এর Title       |
| `description` | `String` | Page-এর Description |
| `image`       | `String` | Page-এর Image       |

---

# 🧱 Step 2: Typed Onboarding List তৈরি

এখন সাধারণ `Map` ব্যবহার না করে `List<OnboardingModel>` ব্যবহার করব।

```dart
final List<OnboardingModel> _pages = [
  OnboardingModel(
    title: "Learn Flutter",
    description: "Learn Flutter step by step.",
    image: "assets/images/flutter.png",
  ),

  OnboardingModel(
    title: "Build Projects",
    description: "Build real-world Flutter applications.",
    image: "assets/images/project.png",
  ),

  OnboardingModel(
    title: "Start Your Career",
    description: "Prepare yourself for a Flutter Developer career.",
    image: "assets/images/career.png",
  ),
];
```

এখানে:

```dart
List<OnboardingModel>
```

এর অর্থ হলো এই List-এর ভিতরে শুধু `OnboardingModel` Object রাখা যাবে।

এটাকেই বলা হয় **Type-Safe Data Structure**।

---

# 💡 কেন Model ব্যবহার করব?

অনেকে এভাবে Data রাখে:

```dart
final List<Map<String, dynamic>> pages = [
  {
    "title": "Learn Flutter",
    "description": "Learn Flutter step by step.",
  },
];
```

এটি কাজ করবে, কিন্তু বড় Project-এ সমস্যা হতে পারে।

Model ব্যবহার করলে:

```dart
_pages[index].title
_pages[index].description
_pages[index].image
```

এভাবে সরাসরি এবং Type-Safe ভাবে Data access করা যায়।

### Model-এর সুবিধা

✅ Type Safety

✅ Clean Code

✅ Autocomplete পাওয়া যায়

✅ ভুল Property Name-এর সম্ভাবনা কমে

✅ Large Project-এ Maintain করা সহজ

✅ Reusable Data Structure তৈরি করা যায়

---

# 🚀 Complete Runnable Onboarding Example

নিচের Example-টি সরাসরি একটি নতুন Flutter Project-এর `main.dart`-এ ব্যবহার করে Run করা যাবে।

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// --------------------------------------------------
// Onboarding Model
// --------------------------------------------------

class OnboardingModel {
  final String title;
  final String description;
  final IconData icon;

  const OnboardingModel({
    required this.title,
    required this.description,
    required this.icon,
  });
}

// --------------------------------------------------
// App
// --------------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}

// --------------------------------------------------
// Onboarding Screen
// --------------------------------------------------

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController _pageController = PageController();

  int _currentPage = 0;

  final List<OnboardingModel> _pages = const [
    OnboardingModel(
      title: "Learn Flutter",
      description:
          "Learn Flutter step by step and build beautiful applications.",
      icon: Icons.school,
    ),

    OnboardingModel(
      title: "Build Projects",
      description:
          "Practice your knowledge by building real-world projects.",
      icon: Icons.code,
    ),

    OnboardingModel(
      title: "Start Your Career",
      description:
          "Prepare yourself for your journey as a Flutter Developer.",
      icon: Icons.work,
    ),
  ];

  // --------------------------------------------------
  // Next Page
  // --------------------------------------------------

  void _nextPage() {

    if (_currentPage < _pages.length - 1) {

      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );

    } else {

      _finishOnboarding();

    }
  }

  // --------------------------------------------------
  // Skip
  // --------------------------------------------------

  void _skipOnboarding() {

    _pageController.animateToPage(
      _pages.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // --------------------------------------------------
  // Finish
  // --------------------------------------------------

  void _finishOnboarding() {

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Onboarding Completed!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            // Skip Button
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: _skipOnboarding,
                child: const Text("Skip"),
              ),
            ),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,

                onPageChanged: (index) {

                  setState(() {
                    _currentPage = index;
                  });

                },

                itemBuilder: (context, index) {

                  final page = _pages[index];

                  return Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Icon(
                          page.icon,
                          size: 120,
                        ),

                        const SizedBox(height: 40),

                        Text(
                          page.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 16),

                        Text(
                          page.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Page Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) {

                  final bool isActive =
                      _currentPage == index;

                  return AnimatedContainer(
                    duration:
                        const Duration(milliseconds: 300),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 4),
                    width: isActive ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10),
                      color: isActive
                          ? Colors.blue
                          : Colors.grey,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            // Next / Get Started Button
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(
                    _currentPage == _pages.length - 1
                        ? "Get Started"
                        : "Next",
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
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

# 🔍 Typed Model Example বুঝে নেওয়া

আমাদের Model:

```dart
class OnboardingModel {
  final String title;
  final String description;
  final IconData icon;

  const OnboardingModel({
    required this.title,
    required this.description,
    required this.icon,
  });
}
```

এরপর List:

```dart
final List<OnboardingModel> _pages = const [
  OnboardingModel(
    title: "Learn Flutter",
    description: "Learn Flutter step by step.",
    icon: Icons.school,
  ),
];
```

তারপর `PageView.builder()`:

```dart
itemBuilder: (context, index) {

  final page = _pages[index];

  return Text(page.title);
}
```

এখানে:

```text
_pages
   ↓
OnboardingModel
   ↓
_pages[index]
   ↓
page
   ↓
page.title
page.description
page.icon
```

এটাই একটি clean এবং type-safe approach।

---

# 🔄 Map vs Model

### ❌ Map-Based Approach

```dart
final List<Map<String, dynamic>> pages = [
  {
    "title": "Learn Flutter",
    "description": "Learn Flutter step by step.",
  },
];
```

Data access:

```dart
pages[index]["title"]
```

এখানে ভুল key লিখলে Runtime সমস্যা হতে পারে।

---

### ✅ Model-Based Approach

```dart
final List<OnboardingModel> pages = [
  OnboardingModel(
    title: "Learn Flutter",
    description: "Learn Flutter step by step.",
    icon: Icons.school,
  ),
];
```

Data access:

```dart
pages[index].title
```

এটি বেশি readable এবং type-safe।

---

# 🎯 `viewportFraction`

Carousel-এর মতো UI তৈরি করতে `PageController`-এ `viewportFraction` ব্যবহার করা যায়।

```dart
final PageController controller = PageController(
  viewportFraction: 0.85,
);
```

এর ফলে পাশের Page-এর কিছু অংশ দেখা যাবে।

```text
┌──────────────────────────────┐
│   ┌──────────────────────┐   │
│   │      Page 1          │   │
│   └──────────────────────┘   │
└──────────────────────────────┘
       ↑                ↑
    Previous          Next
     অংশ              অংশ
```

এটি বিশেষ করে **Carousel UI** তৈরিতে useful।

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

```text
Welcome
   ↓
Features
   ↓
Get Started
```

---

## ২. Image Carousel

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

✅ Structured Data হলে `Model` ব্যবহার করো।

✅ Programmatic Navigation-এর জন্য `PageController` ব্যবহার করো।

✅ Page Indicator-এর জন্য `onPageChanged` ব্যবহার করো।

✅ `PageController` ব্যবহার করলে `dispose()` করতে ভুলবে না।

✅ Carousel-এর জন্য `viewportFraction` ব্যবহার করতে পারো।

✅ Image Carousel-এর ক্ষেত্রে Image Size Optimize করো।

---

# ⚠️ সাধারণ ভুল

❌ `PageController` তৈরি করে Dispose না করা।

❌ Large/Dynamic Data-এর জন্য অপ্রয়োজনীয়ভাবে `children` ব্যবহার করা।

❌ Structured Data-এর জন্য সবসময় `Map<String, dynamic>` ব্যবহার করা।

❌ `onPageChanged` ব্যবহার করে Current Page Track না করা।

❌ Nested PageView-এর Scroll Conflict বিবেচনা না করা।

❌ Page-এর ভিতরে অতিরিক্ত Heavy Widget ব্যবহার করা।

---

# 🚀 Performance Tips

### ১. Dynamic Data-এর জন্য Builder ব্যবহার করো

```dart
PageView.builder()
```

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

### ৪. Model ব্যবহার করো

Structured Data-এর জন্য Model ব্যবহার করলে Code Maintain করা সহজ হয়।

### ৫. অপ্রয়োজনীয় Rebuild কমাও

Page Change হলে পুরো Screen অপ্রয়োজনীয়ভাবে Rebuild না করার চেষ্টা করো।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. PageView Widget কী?

PageView হলো একটি Scrollable Widget যা User-কে Swipe করে এক Page থেকে অন্য Page-এ যেতে দেয়।

### ২. PageView কোথায় ব্যবহার হয়?

Onboarding, Image Carousel, Product Gallery, Tutorial এবং Swipeable Dashboard-এ।

### ৩. PageView এবং ListView-এর মধ্যে পার্থক্য কী?

PageView Page-by-Page Navigation-এর জন্য ব্যবহৃত হয়, আর ListView সাধারণ Scrollable List-এর জন্য ব্যবহৃত হয়।

### ৪. PageController কী?

PageController ব্যবহার করে PageView-এর Page Programmatically Control করা যায়।

### ৫. `animateToPage()` কী করে?

Animation সহ নির্দিষ্ট Page-এ নিয়ে যায়।

### ৬. `jumpToPage()` কী করে?

কোনো Animation ছাড়াই নির্দিষ্ট Page-এ নিয়ে যায়।

### ৭. `onPageChanged` কী?

User বা Programmatically Page পরিবর্তন করলে এটি Callback প্রদান করে।

### ৮. `PageView.builder()` কখন ব্যবহার করা হয়?

Dynamic বা অনেকগুলো Page যখন Data থেকে তৈরি করতে হয় তখন `PageView.builder()` ব্যবহার করা হয়।

### ৯. PageView-এর Default Scroll Direction কী?

```dart
Axis.horizontal
```

### ১০. Onboarding Data-এর জন্য Model কেন ব্যবহার করা হয়?

Model ব্যবহার করলে Data **Type-Safe, Readable, Maintainable এবং Reusable** হয়।

---

# 🚀 Quick Revision

✅ Swipeable Page তৈরি করে।

✅ Defaultভাবে Horizontal Scroll করে।

✅ Vertical Scroll-ও করা যায়।

✅ `PageController` দিয়ে Page Control করা যায়।

✅ `onPageChanged` দিয়ে Current Page জানা যায়।

✅ `PageView.builder()` Dynamic Page-এর জন্য ব্যবহার করা হয়।

✅ `OnboardingModel` দিয়ে Structured Data রাখা যায়।

✅ `viewportFraction` দিয়ে Carousel-like UI তৈরি করা যায়।

✅ Onboarding এবং Carousel-এ ব্যাপকভাবে ব্যবহৃত হয়।

---

# 🏁 সারসংক্ষেপ

**PageView Widget** Flutter-এর একটি গুরুত্বপূর্ণ Scrollable Widget, যা একাধিক Page-কে Swipeable Interface-এর মাধ্যমে প্রদর্শন করতে ব্যবহৃত হয়।

একটি Professional Implementation-এ আমরা সাধারণত:

```text
Model
  ↓
List<OnboardingModel>
  ↓
PageView.builder()
  ↓
PageController
  ↓
onPageChanged
  ↓
Page Indicator
  ↓
Next / Skip / Get Started
```

এই Architecture ব্যবহার করতে পারি।

PageView ভালোভাবে শেখার জন্য এই Conceptগুলো পরিষ্কার রাখা গুরুত্বপূর্ণ:

**`PageView` → `PageView.builder()` → `PageController` → `OnboardingModel` → `onPageChanged` → `animateToPage()` → `nextPage()` → `previousPage()` → `viewportFraction` → `pageSnapping`**

এই বিষয়গুলো বুঝে গেলে Flutter-এর **Onboarding, Carousel এবং Swipeable UI** তৈরি করা অনেক সহজ হয়ে যাবে।

---

### 👨‍💻 লেখক

**Tuhin**

Flutter Widget Learning Series 🚀
