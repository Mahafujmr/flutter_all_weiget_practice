# 📝 Flutter SelectableText Widget

Flutter-এর **SelectableText Widget** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**SelectableText Widget** হলো Flutter-এর একটি Text Widget যা ব্যবহারকারীকে Text Select এবং Copy করার সুবিধা দেয়।

সাধারণ `Text Widget`-এ Text কেবল দেখা যায়, কিন্তু `SelectableText`-এ ব্যবহারকারী Text Press করে Select, Copy এবং Share করতে পারে।

---

# 🎯 কেন SelectableText ব্যবহার করা হয়?

✅ Text Copy করার সুবিধা দিতে।

✅ User Experience উন্নত করতে।

✅ Important Information Select করতে।

✅ Code, Email, OTP, Link ইত্যাদি কপি করতে।

✅ Read-only Text প্রদর্শন করতে।

---

# ⚙️ Constructor

```dart
SelectableText(
  'Hello Flutter',
)
```

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property                     | বর্ণনা                        |
| ---------------------------- | ----------------------------- |
| `data`                       | প্রদর্শিত Text                |
| `style`                      | Text Style নির্ধারণ করে       |
| `textAlign`                  | Text Alignment                |
| `textDirection`              | Text-এর Direction             |
| `textScaler`                 | Text Scale নির্ধারণ করে       |
| `showCursor`                 | Cursor দেখাবে কিনা            |
| `autofocus`                  | Automatically Focus নেবে কিনা |
| `toolbarOptions`             | Copy, Select All অপশন         |
| `cursorColor`                | Cursor-এর রঙ                  |
| `cursorWidth`                | Cursor-এর Width               |
| `cursorRadius`               | Cursor-এর Radius              |
| `maxLines`                   | সর্বোচ্চ কত লাইন দেখাবে       |
| `minLines`                   | সর্বনিম্ন কত লাইন             |
| `scrollPhysics`              | Scroll Behavior               |
| `enableInteractiveSelection` | Selection Enable করবে কিনা    |
| `onTap`                      | Tap Event                     |
| `selectionHeightStyle`       | Selection Height Style        |
| `selectionWidthStyle`        | Selection Width Style         |

---

# 💻 Basic Example

```dart
SelectableText(
  'Flutter is awesome.',
)
```

---

# 💻 Styled Example

```dart
SelectableText(
  'Flutter Developer',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
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
          child: SelectableText(
            'Copy this text',
            style: TextStyle(
              fontSize: 22,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
```

---

# 📱 Output

ব্যবহারকারী Text-এর উপর Long Press করলে:

✅ Select করতে পারবে।

✅ Copy করতে পারবে।

✅ Select All করতে পারবে।

---

# 🎯 কোথায় ব্যবহার হয়?

* OTP Screen
* Referral Code
* Email Address
* Website URL
* Documentation App
* Code Viewer
* Chat Application
* Terms & Conditions
* Article Reader

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. OTP Screen

ব্যবহারকারী OTP Copy করতে পারে।

---

## ২. Referral App

Referral Code সহজে Copy করা যায়।

---

## ৩. Documentation App

Developer Documentation থেকে Code Copy করতে।

---

## ৪. Chat Application

Message Copy করার জন্য।

---

## ৫. Banking App

Account Number Copy করার জন্য।

---

## ৬. E-commerce App

Coupon Code Copy করার জন্য।

---

# 🔄 SelectableText vs Text

| SelectableText       | Text               |
| -------------------- | ------------------ |
| Text Select করা যায় | Select করা যায় না |
| Copy করা যায়        | Copy করা যায় না   |
| Interactive          | Static             |
| User Friendly        | Simple Display     |

---

# 🔄 SelectableText vs RichText

| SelectableText       | RichText            |
| -------------------- | ------------------- |
| Text Select করা যায় | Multiple Style দেয় |
| Copy করা যায়        | Copy করা যায় না    |
| Single Style         | Multiple Style      |

---

# 💡 Tips

✅ OTP, Coupon এবং Code-এর জন্য ব্যবহার করো।

✅ Read-only Data-এর জন্য উপযুক্ত।

✅ Documentation App-এ খুব কার্যকর।

✅ User Experience উন্নত করে।

---

# ⚠️ সাধারণ ভুল

❌ সাধারণ Text-এর জন্য SelectableText ব্যবহার করা।

❌ অপ্রয়োজনীয়ভাবে সব Text Selectable করা।

❌ Large Paragraph-এ Performance না চিন্তা করা।

❌ User Experience বিবেচনা না করা।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. SelectableText Widget কী?

এটি এমন একটি Text Widget যা Text Select এবং Copy করার সুবিধা দেয়।

---

### ২. Text এবং SelectableText-এর মধ্যে পার্থক্য কী?

Text শুধুমাত্র Text দেখায়, কিন্তু SelectableText Text Select এবং Copy করতে দেয়।

---

### ৩. SelectableText কোথায় ব্যবহার হয়?

OTP, Coupon, Referral Code, Email, Documentation ইত্যাদিতে।

---

### ৪. enableInteractiveSelection কী?

এটি নির্ধারণ করে Text Select করা যাবে কিনা।

---

# 🚀 Quick Revision

✅ Text Copy করা যায়।

✅ User Text Select করতে পারে।

✅ OTP Screen-এ ব্যবহৃত হয়।

✅ Coupon Code-এর জন্য উপযোগী।

✅ Documentation App-এ ব্যবহৃত হয়।

✅ User Experience উন্নত করে।

---

# 🏁 সারসংক্ষেপ

**SelectableText Widget** Flutter-এর একটি অত্যন্ত উপকারী Widget যা ব্যবহারকারীকে Text Select এবং Copy করার সুবিধা দেয়।

যখন কোনো Text User-এর Copy করার প্রয়োজন হতে পারে, তখন সাধারণ `Text Widget`-এর পরিবর্তে `SelectableText Widget` ব্যবহার করা উচিত।

---

### 👨‍💻 লেখক

**Md Tuhin Hossain**

Flutter Widget Learning Series 🚀
