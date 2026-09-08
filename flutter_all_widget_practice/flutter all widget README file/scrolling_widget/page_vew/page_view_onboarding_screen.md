অবশ্যই। তোমার `PageView` README-তে সরাসরি যোগ করার মতো একটি **runnable onboarding example** নিচে দিলাম। এটি copy-paste করে নতুন Flutter project-এ চালানো যাবে।

# 🚀 Runnable Onboarding Example

নিচের Example-এ আমরা `PageView` ব্যবহার করে একটি সম্পূর্ণ **Onboarding Screen** তৈরি করব।

এখানে থাকবে:

- ✅ Multiple Onboarding Pages
- ✅ `PageController`
- ✅ `PageView.builder()`
- ✅ Page Indicator
- ✅ Next Button
- ✅ Skip Button
- ✅ Get Started Button
- ✅ Last Page Detection
- ✅ Page Change Tracking

---

## 📱 Onboarding Flow

```text
Page 1
  ↓
Page 2
  ↓
Page 3
  ↓
Get Started
```

User চাইলে **Skip** করে সরাসরি শেষ করতে পারবে অথবা **Next** button ব্যবহার করে এক এক করে Page দেখতে পারবে।

---

## 💻 Complete Runnable Code

`lib/main.dart` ফাইলে নিচের Code-টি রাখো:

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
      title: 'Onboarding Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // PageController ব্যবহার করে PageView control করা হচ্ছে
  final PageController _pageController = PageController();

  // Current Page track করার জন্য
  int _currentPage = 0;

  // Onboarding data
  final List<Map<String, dynamic>> _pages = [
    {
      'icon': Icons.phone_android,
      'title': 'Welcome to Our App',
      'description':
          'Discover a simple and powerful way to manage everything in one place.',
    },
    {
      'icon': Icons.explore,
      'title': 'Explore Features',
      'description':
          'Explore useful features designed to make your daily tasks easier.',
    },
    {
      'icon': Icons.rocket_launch,
      'title': 'Get Started',
      'description':
          'You are all set. Start your journey and enjoy the experience.',
    },
  ];

  // Next button
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

  // Skip button
  void _skipOnboarding() {
    _pageController.animateToPage(
      _pages.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Onboarding শেষ হলে
  void _finishOnboarding() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Onboarding Completed!'),
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
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: _skipOnboarding,
                child: const Text('Skip'),
              ),
            ),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,

                // Page change হলে current page update হবে
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

                        // Icon
                        Icon(
                          page['icon'],
                          size: 120,
                          color: Colors.blue,
                        ),

                        const SizedBox(height: 40),

                        // Title
                        Text(
                          page['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Description
                        Text(
                          page['description'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1.5,
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
                  final isActive = _currentPage == index;

                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 4,
                    ),
                    width: isActive ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: isActive
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            // Next / Get Started Button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(
                    _currentPage == _pages.length - 1
                        ? 'Get Started'
                        : 'Next',
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

# 🧠 Code কীভাবে কাজ করছে?

## 1️⃣ PageController

```dart
final PageController _pageController = PageController();
```

এটি `PageView`-কে Programmatically Control করার জন্য ব্যবহার করা হয়েছে।

এর মাধ্যমে আমরা:

```text
Next Page
Previous Page
Specific Page
```

এ যেতে পারি।

---

## 2️⃣ Onboarding Data

```dart
final List<Map<String, dynamic>> _pages = [
  ...
];
```

এখানে প্রতিটি Page-এর:

- Icon
- Title
- Description

রাখা হয়েছে।

নতুন Page যোগ করতে শুধু List-এ নতুন Data যোগ করলেই হবে।

---

## 3️⃣ PageView.builder()

```dart
PageView.builder(
  controller: _pageController,
  itemCount: _pages.length,
)
```

এখানে Data অনুযায়ী Dynamic Page তৈরি হচ্ছে।

---

## 4️⃣ onPageChanged

```dart
onPageChanged: (index) {
  setState(() {
    _currentPage = index;
  });
},
```

User Swipe করে Page পরিবর্তন করলে Current Page-এর Index Update হবে।

---

## 5️⃣ Page Indicator

```text
● ○ ○
```

প্রথম Page-এ:

```text
● ○ ○
```

দ্বিতীয় Page-এ:

```text
○ ● ○
```

তৃতীয় Page-এ:

```text
○ ○ ●
```

এভাবে User বুঝতে পারে সে কোন Page-এ আছে।

---

## 6️⃣ Next Button

প্রথম দুই Page-এ Button দেখাবে:

```text
Next
```

শেষ Page-এ:

```text
Get Started
```

অর্থাৎ:

```text
Page 1 → Next
Page 2 → Next
Page 3 → Get Started
```

---

## 7️⃣ Skip Button

User যদি সব Page দেখতে না চায়, তাহলে:

```text
Skip
```

Button চাপলে সরাসরি শেষ Page-এ চলে যাবে।

---

## 8️⃣ dispose()

```dart
@override
void dispose() {
  _pageController.dispose();
  super.dispose();
}
```

`PageController` আর ব্যবহার না হলে Dispose করা গুরুত্বপূর্ণ।

এতে unnecessary resource usage কমানো যায়।

---

# 🏢 Real Project-এ কীভাবে ব্যবহার করবে?

বাস্তব Application-এ সাধারণত Page-এর Data এভাবে রাখা যায়:

```text
Onboarding Data
      ↓
PageView.builder()
      ↓
Page
      ↓
Title + Image + Description
```

উদাহরণ:

```text
┌─────────────────────────┐
│                         │
│        📱 Image         │
│                         │
│   Welcome to Our App    │
│                         │
│  Simple app description │
│                         │
│       ● ○ ○             │
│                         │
│      [ Next ]            │
└─────────────────────────┘
```

---

# 💡 Production App-এ আরও যা যোগ করা যায়

একটি Real Production App-এ চাইলে আরও যোগ করতে পারো:

- 🔹 Real Images / SVG
- 🔹 Custom Page Indicator
- 🔹 Lottie Animation
- 🔹 Skip Confirmation
- 🔹 Login / Register Navigation
- 🔹 SharedPreferences দিয়ে Onboarding Status Save
- 🔹 Responsive Design
- 🔹 Localization
- 🔹 GetX / Provider / Bloc State Management

---

# 🎯 Important Concept

এই Example থেকে বিশেষভাবে এই বিষয়গুলো ভালোভাবে বুঝে রাখো:

```text
PageView
    ↓
PageController
    ↓
PageView.builder()
    ↓
onPageChanged
    ↓
Current Page Tracking
    ↓
Page Indicator
    ↓
nextPage()
    ↓
animateToPage()
```

এগুলো বুঝতে পারলে Flutter-এ **Onboarding Screen, Carousel এবং Swipeable UI** তৈরি করা অনেক সহজ হয়ে যাবে।
