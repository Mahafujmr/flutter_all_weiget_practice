# 📐 Flutter AspectRatio Widget

Flutter-এর **AspectRatio Widget** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**AspectRatio Widget** একটি Single Child Widget যা তার Child Widget-এর **Width এবং Height-এর অনুপাত (Ratio)** ঠিক রাখে।

অর্থাৎ, স্ক্রিনের সাইজ পরিবর্তন হলেও Widget-এর অনুপাত একই থাকে।

উদাহরণস্বরূপ,

* 16:9 (ভিডিও)
* 4:3 (পুরোনো স্ক্রিন)
* 1:1 (স্কোয়ার ছবি)

AspectRatio Widget মূলত Responsive UI তৈরিতে ব্যবহার করা হয়।

---

# 🎯 কেন AspectRatio Widget ব্যবহার করা হয়?

✅ Width ও Height-এর নির্দিষ্ট অনুপাত বজায় রাখতে।

✅ Responsive UI তৈরি করতে।

✅ বিভিন্ন স্ক্রিন সাইজে একই ডিজাইন রাখতে।

✅ Image এবং Video-এর Ratio ঠিক রাখতে।

✅ Overflow সমস্যা কমাতে।

---

# ⚙️ Constructor

```dart id="ikg4dx"
AspectRatio(
  aspectRatio: 16 / 9,
  child: Widget(),
)
```

---

# 🔑 গুরুত্বপূর্ণ Property

| Property      | বর্ণনা                                  |
| ------------- | --------------------------------------- |
| `aspectRatio` | Width এবং Height-এর অনুপাত নির্ধারণ করে |
| `child`       | ভিতরের Widget                           |

---

# 🧮 Aspect Ratio কী?

Aspect Ratio হলো:

```text
Width ÷ Height
```

উদাহরণ:

| Ratio | অর্থ              |
| ----- | ----------------- |
| 1:1   | Square            |
| 4:3   | Standard Screen   |
| 16:9  | Widescreen Video  |
| 21:9  | Ultra Wide Screen |

---

# 📊 কিছু জনপ্রিয় Ratio

| Ratio | ব্যবহার             |
| ----- | ------------------- |
| 1:1   | Profile Image       |
| 4:3   | Tablet Screen       |
| 16:9  | YouTube Video       |
| 3:2   | Photo Gallery       |
| 9:16  | Mobile Shorts Video |

---

# 🎯 কোথায় ব্যবহার হয়?

* Video Player
* Image Card
* YouTube Thumbnail
* Product Card
* News Banner
* Advertisement Banner
* Photo Gallery
* Social Media Post
* Dashboard Card
* Game Screen

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. YouTube Clone App

ভিডিও Thumbnail সব সময় 16:9 Ratio-তে রাখতে।

---

## ২. E-commerce App

Product Image-এর আকার সবসময় একই রাখতে।

---

## ৩. News Application

News Banner-এর Ratio ঠিক রাখতে।

---

## ৪. OTT App (Netflix, Hoichoi)

Movie Poster এবং Thumbnail ঠিকভাবে দেখাতে।

---

## ৫. Social Media App

Instagram Post বা Facebook Post-এর Ratio বজায় রাখতে।

---

## ৬. Dashboard Application

Analytics Card-এর নির্দিষ্ট আকার বজায় রাখতে।

---

# 💡 উদাহরণ

ধরো তোমার কাছে একটি Container আছে।

যদি Screen বড় বা ছোট হয় তাহলে Container-এর Height ও Width পরিবর্তন হয়ে যেতে পারে।

কিন্তু AspectRatio ব্যবহার করলে Widget-এর অনুপাত সবসময় একই থাকবে।

---

# ⚠️ সাধারণ ভুল

❌ AspectRatio-এর ভিতরে Fixed Width এবং Height দেওয়া।

❌ ভুল Ratio ব্যবহার করা।

❌ Parent Widget-এর Constraint না বুঝে ব্যবহার করা।

❌ Expanded এবং AspectRatio একসাথে ভুলভাবে ব্যবহার করা।

---

# 🔄 AspectRatio vs Container

| AspectRatio                  | Container                 |
| ---------------------------- | ------------------------- |
| Ratio বজায় রাখে             | Width ও Height আলাদা দেয় |
| Responsive                   | Fixed Size হতে পারে       |
| Screen অনুযায়ী পরিবর্তন হয় | নির্দিষ্ট Size দিতে হয়   |
| Media Widget-এর জন্য ভালো    | General Layout-এর জন্য    |

---

# 🔗 সম্পর্কিত Widget

| Widget      | কাজ               |
| ----------- | ----------------- |
| `Container` | Size ও Decoration |
| `Expanded`  | বাকি জায়গা নেয়  |
| `Flexible`  | Flexible Space    |
| `FittedBox` | Child Fit করায়   |
| `SizedBox`  | Fixed Size দেয়   |

---

# ✅ সুবিধা

* Responsive Design তৈরি করে।
* Media Content সুন্দর দেখায়।
* Layout Consistency বজায় রাখে।
* বিভিন্ন Screen Size-এ ভালো কাজ করে।
* UI Professional দেখায়।

---

# ❌ অসুবিধা

* Fixed Size Layout-এ সব সময় দরকার হয় না।
* ভুল Ratio দিলে UI নষ্ট হতে পারে।
* Parent Constraint বুঝে ব্যবহার করতে হয়।

---

# 📝 ইন্টারভিউ প্রশ্ন

### ১. AspectRatio Widget কী?

AspectRatio Widget Width এবং Height-এর নির্দিষ্ট অনুপাত বজায় রাখে।

---

### ২. AspectRatio কোথায় ব্যবহার হয়?

Video Player, Image Card, Product Card, Banner ইত্যাদিতে।

---

### ৩. aspectRatio Property কী?

এটি Width এবং Height-এর Ratio নির্ধারণ করে।

---

### ৪. 16:9 Ratio বলতে কী বোঝায়?

Width 16 অংশ এবং Height 9 অংশ।

---

# 🚀 Quick Revision

✅ Width ও Height-এর Ratio ঠিক রাখে।

✅ Responsive UI তৈরি করে।

✅ Video ও Image-এর জন্য বেশি ব্যবহৃত হয়।

✅ Real Project-এ অত্যন্ত গুরুত্বপূর্ণ।

✅ শুধুমাত্র `aspectRatio` Property ব্যবহার করে।

---

# 🏁 সারসংক্ষেপ

**AspectRatio Widget** Flutter-এর একটি অত্যন্ত গুরুত্বপূর্ণ Responsive Widget।

যখন তুমি চাও যে কোনো Widget-এর Width এবং Height সবসময় একটি নির্দিষ্ট অনুপাতে থাকুক, তখন AspectRatio ব্যবহার করা হয়।

বিশেষ করে Video Player, Product Card, Banner, Thumbnail এবং Image Layout-এ এটি সবচেয়ে বেশি ব্যবহৃত হয়।

---

### 👨‍💻 লেখক

**MD Tuhin Hossain**

Flutter Widget Learning Series 🚀

# 💻 Example Code

## ১. Basic Example

```dart
AspectRatio(
  aspectRatio: 16 / 9,
  child: Container(
    color: Colors.blue,
  ),
)
```

### ব্যাখ্যা

* `16 / 9` অর্থ Width হবে 16 অংশ এবং Height হবে 9 অংশ।
* স্ক্রিন ছোট বা বড় হলেও Ratio একই থাকবে।

---

## ২. Complete Example

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AspectRatio Example'),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  '16:9 Aspect Ratio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
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

```
┌───────────────────────┐
│                       │
│    16:9 Aspect Ratio  │
│                       │
└───────────────────────┘
```

স্ক্রিন ছোট বা বড় হলেও এই Container-এর Ratio সবসময় 16:9 থাকবে।

---

# 🎥 Real Project Example ১: YouTube Thumbnail

```dart
AspectRatio(
  aspectRatio: 16 / 9,
  child: Image.network(
    imageUrl,
    fit: BoxFit.cover,
  ),
)
```

### ব্যবহার:

YouTube Video Thumbnail দেখানোর জন্য।

---

# 🛒 Real Project Example ২: Product Card

```dart
AspectRatio(
  aspectRatio: 1 / 1,
  child: Image.asset(
    'assets/product.png',
    fit: BoxFit.cover,
  ),
)
```

### ব্যবহার:

E-commerce App-এর Product Image-এর জন্য।

---

# 📰 Real Project Example ৩: News Banner

```dart
AspectRatio(
  aspectRatio: 4 / 3,
  child: Image.network(
    bannerUrl,
    fit: BoxFit.cover,
  ),
)
```

### ব্যবহার:

News Application-এর Banner Section।

---

# 💡 Interview Tip

যদি ইন্টারভিউতে জিজ্ঞেস করে:

> "আপনি AspectRatio Widget কোথায় ব্যবহার করেছেন?"

তুমি বলতে পারো:

* Video Thumbnail
* Product Image
* News Banner
* Dashboard Card
* Responsive Media Layout

---

# 🚀 Quick Revision

✅ 16:9 → Video

✅ 1:1 → Square Image

✅ 4:3 → Banner

✅ Responsive Design

✅ Media Layout

✅ Product Card

✅ Thumbnail UI
