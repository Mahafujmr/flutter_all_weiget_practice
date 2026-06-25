# 🎨 Flutter RichText Widget

Flutter-এর **RichText Widget** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**RichText Widget** Flutter-এর একটি বিশেষ Widget যা একটি Text-এর মধ্যে একাধিক Style ব্যবহার করার সুযোগ দেয়।

সাধারণ `Text Widget`-এ পুরো Text-এর জন্য একটি Style প্রয়োগ করা যায়, কিন্তু `RichText` ব্যবহার করলে একই Text-এর বিভিন্ন অংশে ভিন্ন ভিন্ন Style ব্যবহার করা যায়।

উদাহরণ:

* একটি শব্দ Bold
* একটি শব্দ Red Color
* একটি শব্দ Underline
* একটি শব্দ Clickable

এই ধরনের কাজের জন্য RichText ব্যবহার করা হয়।

---

# 🎯 কেন RichText ব্যবহার করা হয়?

✅ একটি Text-এর মধ্যে একাধিক Style ব্যবহার করতে।

✅ Highlight Text দেখাতে।

✅ Clickable Text তৈরি করতে।

✅ Terms & Conditions Link তৈরি করতে।

✅ Stylish Text UI তৈরি করতে।

---

# ⚙️ Constructor

```dart
RichText(
  text: TextSpan(
    children: [],
  ),
)
```

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property     | বর্ণনা                      |
| ------------ | --------------------------- |
| `text`       | TextSpan প্রদান করে         |
| `textAlign`  | Text Alignment নির্ধারণ করে |
| `maxLines`   | সর্বোচ্চ কত লাইন দেখাবে     |
| `overflow`   | Overflow হলে কী হবে         |
| `softWrap`   | Text Wrap হবে কিনা          |
| `textScaler` | Text Scale নির্ধারণ করে     |

---

# 📝 TextSpan কী?

**TextSpan** হলো RichText-এর মূল অংশ।

এখানে আমরা Text-এর প্রতিটি অংশের জন্য আলাদা Style দিতে পারি।

```dart
TextSpan(
  text: 'Hello',
  style: TextStyle(
    color: Colors.red,
  ),
)
```

---

# 💻 Basic Example

```dart
RichText(
  text: TextSpan(
    text: 'Hello ',
    style: TextStyle(
      color: Colors.black,
    ),
    children: [
      TextSpan(
        text: 'Flutter',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
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
        body: Center(
          child: RichText(
            text: TextSpan(
              text: 'Welcome to ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
              children: [
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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

```text
Welcome to Flutter
```

* "Welcome to" → কালো রঙ
* "Flutter" → নীল এবং Bold

---

# 🎯 কোথায় ব্যবহার হয়?

* Terms & Conditions Text
* Login Screen
* Registration Screen
* Hyperlink Text
* Highlighted Text
* Article UI
* News App
* Chat Application
* Profile Screen

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. Login Screen

```text
Don't have an account? Sign Up
```

এখানে "Sign Up" আলাদা Style পায়।

---

## ২. Terms & Conditions

```text
I agree to Terms & Conditions
```

"Terms & Conditions" Link হিসেবে দেখানো হয়।

---

## ৩. E-commerce App

Offer Text Highlight করার জন্য।

```text
50% OFF Today
```

---

## ৪. News Application

Headline-এর একটি অংশ Highlight করার জন্য।

---

## ৫. Social Media App

Mention এবং Hashtag Highlight করতে।

---

# 🔄 RichText vs Text

| RichText                 | Text                    |
| ------------------------ | ----------------------- |
| Multiple Style Support   | Single Style            |
| TextSpan ব্যবহার করে     | সরাসরি Text ব্যবহার করে |
| Complex UI তৈরি করা যায় | Simple Text-এর জন্য     |
| Clickable Text করা যায়  | সীমিত                   |

---

# 🔗 RichText এবং TextSpan সম্পর্ক

* RichText হলো Parent Widget।
* TextSpan হলো Child Data Structure।
* RichText ছাড়া TextSpan কাজ করে না।

---

# 💡 Tips

✅ Multiple Style দরকার হলে RichText ব্যবহার করো।

✅ Link তৈরি করতে RichText খুব উপকারী।

✅ Article এবং News UI-তে ব্যবহার করো।

✅ ছোট Text-এর জন্য সাধারণ Text Widget ব্যবহার করো।

---

# ⚠️ সাধারণ ভুল

❌ RichText-এর ভিতরে সরাসরি String দেওয়া।

❌ TextSpan ব্যবহার না করা।

❌ অপ্রয়োজনীয়ভাবে RichText ব্যবহার করা।

❌ Simple Text-এর জন্য RichText ব্যবহার করা।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. RichText Widget কী?

একটি Text-এর মধ্যে একাধিক Style ব্যবহার করার Widget।

---

### ২. TextSpan কী?

Text-এর বিভিন্ন অংশের Style নির্ধারণ করার Object।

---

### ৩. RichText কোথায় ব্যবহার হয়?

Terms & Conditions, Hyperlink, Highlighted Text ইত্যাদিতে।

---

### ৪. RichText এবং Text-এর মধ্যে পার্থক্য কী?

Text শুধুমাত্র একটি Style সমর্থন করে, কিন্তু RichText একাধিক Style সমর্থন করে।

---

# 🚀 Quick Revision

✅ Multiple Text Style

✅ TextSpan ব্যবহার করে

✅ Link তৈরি করা যায়

✅ Highlight করা যায়

✅ Login Screen-এ ব্যবহৃত হয়

✅ Terms & Conditions-এ ব্যবহৃত হয়

---

# 🏁 সারসংক্ষেপ

**RichText Widget** Flutter-এর একটি অত্যন্ত গুরুত্বপূর্ণ Widget যা একটি Text-এর মধ্যে একাধিক Style ব্যবহার করার সুযোগ দেয়।

যখন একই Text-এর বিভিন্ন অংশকে ভিন্নভাবে দেখাতে হয়, তখন RichText ব্যবহার করা হয়।

---

### 👨‍💻 লেখক

**Md Tuhin Hossain**

Flutter Widget Learning Series 🚀
