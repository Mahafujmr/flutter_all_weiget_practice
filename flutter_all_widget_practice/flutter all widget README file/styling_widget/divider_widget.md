# ➖ Flutter Divider Widget

Flutter-এর **Divider Widget** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**Divider Widget** হলো Flutter-এর একটি **Material Design Widget** যা দুটি Widget বা Section-এর মধ্যে একটি **Horizontal Line (অনুভূমিক রেখা)** তৈরি করে।

এটি মূলত UI-এর বিভিন্ন অংশকে আলাদা (Separate) করে আরও পরিষ্কার (Clean) এবং Professional দেখানোর জন্য ব্যবহার করা হয়।

যখন একটি Screen-এ অনেকগুলো তথ্য থাকে, তখন Divider ব্যবহার করলে প্রতিটি Section সহজে বোঝা যায় এবং User Experience (UX) আরও উন্নত হয়।

---

# 🎯 কেন Divider Widget ব্যবহার করা হয়?

✅ UI-এর বিভিন্ন Section আলাদা করতে।

✅ Layout আরও পরিষ্কার ও গোছানো করতে।

✅ Material Design অনুসরণ করতে।

✅ Readability বাড়াতে।

✅ Professional User Interface তৈরি করতে।

---

# ⚙️ Constructor

```dart
Divider(
  height: 16,
  thickness: 2,
  color: Colors.grey,
)
```

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property    | বর্ণনা                                                                      |
| ----------- | --------------------------------------------------------------------------- |
| `height`    | Divider-এর জন্য মোট Vertical Space নির্ধারণ করে। এটি Line-এর Thickness নয়। |
| `thickness` | Divider Line কত মোটা হবে তা নির্ধারণ করে।                                   |
| `color`     | Divider Line-এর রঙ নির্ধারণ করে।                                            |
| `indent`    | Divider-এর বাম দিক থেকে কতটুকু ফাঁকা থাকবে।                                 |
| `endIndent` | Divider-এর ডান দিক থেকে কতটুকু ফাঁকা থাকবে।                                 |
| `radius`    | Divider-এর Corner Radius নির্ধারণ করে (Flutter-এর নতুন ভার্সনে উপলব্ধ)।     |

---

# 📌 Property বুঝে নেওয়া

## height

`height` পুরো Divider Widget-এর উচ্চতা নির্ধারণ করে।

উদাহরণ:

```dart
Divider(
  height: 40,
)
```

এখানে Line পাতলাই থাকবে, কিন্তু Divider-এর উপরে এবং নিচে বেশি Space থাকবে।

---

## thickness

Line কতটা মোটা হবে তা নির্ধারণ করে।

```dart
Divider(
  thickness: 3,
)
```

---

## color

Divider-এর রঙ পরিবর্তন করতে ব্যবহৃত হয়।

```dart
Divider(
  color: Colors.red,
)
```

---

## indent

Divider-এর বাম পাশে Margin তৈরি করে।

```dart
Divider(
  indent: 20,
)
```

---

## endIndent

Divider-এর ডান পাশে Margin তৈরি করে।

```dart
Divider(
  endIndent: 20,
)
```

---

## radius

Divider-এর Corner Rounded করতে ব্যবহৃত হয়।

```dart
Divider(
  radius: BorderRadius.circular(10),
)
```

---

# 💻 Basic Example

```dart
Divider()
```

---

# 💻 Styled Example

```dart
Divider(
  height: 30,
  thickness: 2,
  color: Colors.blue,
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
          title: const Text('Divider Widget'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [

              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Divider(
                thickness: 2,
                color: Colors.blue,
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text("MD. Tuhin Hossain"),
              ),

              Divider(),

              ListTile(
                leading: Icon(Icons.email),
                title: Text("example@gmail.com"),
              ),
            ],
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
Profile
────────────────────────

👤 MD. Tuhin Hossain

────────────────────────

📧 example@gmail.com
```

Divider প্রতিটি Section-কে আলাদা করে UI-কে আরও পরিষ্কার করে।

---

# 🎯 কোথায় ব্যবহার হয়?

- ListTile-এর মাঝে
- Settings Screen
- Profile Screen
- Dashboard
- Drawer Menu
- Notification Screen
- Chat Application
- E-commerce App
- News Application
- Banking Application

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. Settings Screen

প্রতিটি Setting Option আলাদা করতে।

---

## ২. Profile Screen

User Information Section আলাদা করতে।

---

## ৩. Drawer Menu

প্রতিটি Menu Item-এর মাঝে Separator হিসেবে।

---

## ৪. E-commerce App

Product Information এবং Description আলাদা করতে।

---

## ৫. Banking App

Transaction History আলাদা করতে।

---

## ৬. Chat Application

Chat List-এর Item আলাদা করতে।

---

## ৭. News Application

প্রতিটি News Section আলাদা করতে।

---

# 🔄 Divider vs Container

| Divider                 | Container                    |
| ----------------------- | ---------------------------- |
| Divider Line তৈরির জন্য | যেকোনো Layout তৈরির জন্য     |
| Material Design Widget  | General Purpose Widget       |
| Built-in Separator      | Manual Height/Color দিতে হয় |
| Lightweight             | তুলনামূলক বেশি Customization |

---

# 🔄 Divider vs SizedBox

| Divider               | SizedBox            |
| --------------------- | ------------------- |
| Visible Line তৈরি করে | শুধু Space তৈরি করে |
| Section আলাদা করে     | কোনো Line থাকে না   |

---

# 💡 Best Practices

✅ ListTile-এর মাঝে Divider ব্যবহার করো।

✅ অতিরিক্ত মোটা Divider ব্যবহার করো না।

✅ Theme অনুযায়ী Color ব্যবহার করো।

✅ খুব বেশি Divider ব্যবহার না করে প্রয়োজন অনুযায়ী ব্যবহার করো।

✅ Long List-এর জন্য `ListView.separated` ব্যবহার করলে আরও পরিষ্কার Code লেখা যায়।

---

# ⚠️ সাধারণ ভুল

❌ Divider-এর পরিবর্তে Container দিয়ে Line তৈরি করা।

❌ `height` এবং `thickness`-এর পার্থক্য না বোঝা।

❌ অতিরিক্ত মোটা Divider ব্যবহার করা।

❌ Theme-এর সাথে Color Match না করা।

---

# 🚀 Performance Tips

- Divider একটি Lightweight Widget, তাই Performance-এর উপর খুব কম প্রভাব ফেলে।
- অনেকগুলো Item থাকলে `ListView.separated()` ব্যবহার করা সবচেয়ে ভালো।
- অপ্রয়োজনীয় Nested Divider ব্যবহার এড়িয়ে চলুন।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. Divider Widget কী?

Divider হলো একটি Material Design Widget যা দুটি Widget বা Section-এর মধ্যে Horizontal Line তৈরি করে।

---

### ২. Divider Widget কেন ব্যবহার করা হয়?

UI-এর বিভিন্ন অংশ আলাদা এবং পরিষ্কারভাবে প্রদর্শনের জন্য।

---

### ৩. `height` এবং `thickness`-এর মধ্যে পার্থক্য কী?

- `height` → Divider Widget-এর মোট Vertical Space।
- `thickness` → Divider Line-এর পুরুত্ব।

---

### ৪. `indent` এবং `endIndent` কী কাজ করে?

Divider-এর বাম এবং ডান পাশে ফাঁকা জায়গা তৈরি করে।

---

### ৫. কোন Widget-এর সাথে Divider সবচেয়ে বেশি ব্যবহার করা হয়?

`ListTile`, `Column`, `ListView`, `Drawer` এবং `Settings Screen`-এ।

---

# 🚀 Quick Revision

✅ Material Design Widget

✅ Horizontal Line তৈরি করে

✅ Section আলাদা করতে ব্যবহৃত হয়

✅ `height` ≠ `thickness`

✅ ListTile-এর সাথে সবচেয়ে বেশি ব্যবহৃত হয়

✅ Settings, Profile এবং Dashboard-এ ব্যাপকভাবে ব্যবহৃত হয়

---

# 🏁 সারসংক্ষেপ

**Divider Widget** Flutter-এর একটি ছোট কিন্তু অত্যন্ত গুরুত্বপূর্ণ Widget। এটি UI-এর বিভিন্ন অংশকে আলাদা করে, Layout-কে আরও পরিষ্কার করে এবং User Experience উন্নত করে।

প্রায় সব ধরনের Professional Flutter Application—যেমন **Settings Screen**, **Profile Page**, **Dashboard**, **E-commerce**, **Banking**, **Chat** এবং **News Application**-এ Divider Widget ব্যবহার করা হয়।

---

### 👨‍💻 লেখক

**MD Tuhin Hossain**

Flutter Widget Learning Series 🚀
