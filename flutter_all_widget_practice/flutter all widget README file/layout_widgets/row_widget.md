# Flutter Row Widget - Complete Guide

Flutter এ Row Widget এর সম্পূর্ণ গাইড - Horizontal Layout তৈরির জন্য।

## 📌 Row Widget কী?

**Row** হলো Flutter এর একটি Layout Widget যা children widgets গুলোকে **horizontal (আড়াআড়ি/পাশাপাশি)** ভাবে সাজায়। এটি **left to right** দিকে widgets সাজায়।

## 🎯 কোথায় ব্যবহার হয়?

- ✅ Button গুলো পাশাপাশি সাজাতে
- ✅ Icon এবং Text একসাথে দেখাতে
- ✅ Profile image এবং name side by side রাখতে
- ✅ Navigation bar তৈরি করতে

## 🔧 Basic Syntax

```dart
Row(
  children: [
    Widget1(),
    Widget2(),
    Widget3(),
  ],
)
```

---

## 🧭 Main Axis এবং Cross Axis বুঝুন

Row widget এ **দুইটি axis** আছে:

### 📏 Main Axis (প্রধান অক্ষ)
- Row এর ক্ষেত্রে **Horizontal দিক** (←→)
- **Left থেকে Right** দিকে যায়
- `mainAxisAlignment` দিয়ে control করা হয়

### 📐 Cross Axis (আড়াআড়ি অক্ষ)
- Row এর ক্ষেত্রে **Vertical দিক** (↑↓)
- **Top থেকে Bottom** দিকে যায়
- `crossAxisAlignment` দিয়ে control করা হয়

```
        Cross Axis (↑↓)
              ↑
              |
    ←─────────┼─────────→  Main Axis (←→)
              |
              ↓
```

---

## 📝 Main Properties

### 1️⃣ mainAxisAlignment
**কাজ:** Horizontal দিকে (←→) children কিভাবে সাজবে তা নির্ধারণ করে।

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [...],
)
```

| Value | কাজ | Visual |
|-------|-----|--------|
| `start` | বাম দিক থেকে শুরু করে | `[●●●          ]` |
| `end` | ডান দিকে সাজায় | `[          ●●●]` |
| `center` | মাঝখানে রাখে | `[     ●●●     ]` |
| `spaceBetween` | প্রথম-শেষ দুই পাশে, মাঝে space | `[●      ●      ●]` |
| `spaceAround` | প্রতিটির চারপাশে সমান space | `[  ●    ●    ●  ]` |
| `spaceEvenly` | সব জায়গায় একদম সমান space | `[   ●   ●   ●   ]` |

**উদাহরণ:**
```dart
// বাম থেকে শুরু
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [Icon(Icons.home), Icon(Icons.star)],
)

// মাঝখানে
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [Icon(Icons.home), Icon(Icons.star)],
)

// সমান space সহ
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [Icon(Icons.home), Icon(Icons.star), Icon(Icons.settings)],
)
```

---

### 2️⃣ crossAxisAlignment
**কাজ:** Vertical দিকে (↑↓) children কিভাবে সাজবে তা নির্ধারণ করে।

```dart
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [...],
)
```

| Value | কাজ |
|-------|-----|
| `start` | উপরে (top) align করে |
| `end` | নিচে (bottom) align করে |
| `center` | মাঝখানে (vertical center) রাখে |
| `stretch` | পুরো height জুড়ে stretch করে |
| `baseline` | Text এর baseline অনুযায়ী align করে |

**উদাহরণ:**
```dart
// উপরে align
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(height: 50, width: 50, color: Colors.red),
    Container(height: 100, width: 50, color: Colors.blue),
  ],
)

// মাঝখানে
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(height: 50, width: 50, color: Colors.red),
    Container(height: 100, width: 50, color: Colors.blue),
  ],
)

// Stretch করে
Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Container(width: 50, color: Colors.red),  // height নেই, stretch হবে
    Container(width: 50, color: Colors.blue),
  ],
)
```

---

### 3️⃣ mainAxisSize
**কাজ:** Row কতটুকু horizontal জায়গা নেবে।

```dart
Row(
  mainAxisSize: MainAxisSize.max,
  children: [...],
)
```

| Value | কাজ |
|-------|-----|
| `max` | সম্পূর্ণ available width নেয় (Default) |
| `min` | শুধু children এর জন্য প্রয়োজনীয় width নেয় |

---

### 4️⃣ children
**কাজ:** Row এর ভিতরে যে widgets থাকবে।

```dart
Row(
  children: [
    Text('Item 1'),
    Icon(Icons.star),
    ElevatedButton(onPressed: () {}, child: Text('Click')),
  ],
)
```

---

## 🎯 Properties এর একসাথে ব্যবহার

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,  // Horizontal space
  crossAxisAlignment: CrossAxisAlignment.center,      // Vertical center
  mainAxisSize: MainAxisSize.max,                     // Full width
  children: [
    Icon(Icons.home),
    Text('Home'),
    Icon(Icons.settings),
  ],
)
```

---

## 🚨 গুরুত্বপূর্ণ বিষয়

### ⚠️ Overflow Problem
Row এ বেশি content থাকলে error হয়।

**সমাধান:**
```dart
// Expanded ব্যবহার করুন
Row(
  children: [
    Expanded(child: Text('Long text that needs space...')),
    Icon(Icons.arrow_forward),
  ],
)
```

---

## 📊 Row vs Column

| Feature | Row | Column |
|---------|-----|--------|
| Direction | Horizontal (→) | Vertical (↓) |
| Main Axis | Left → Right | Top → Bottom |
| Cross Axis | Top → Bottom | Left → Right |

---

## 💡 মনে রাখুন

- **Main Axis** = Row এর ক্ষেত্রে Horizontal (←→)
- **Cross Axis** = Row এর ক্ষেত্রে Vertical (↑↓)
- **mainAxisAlignment** = Horizontal control
- **crossAxisAlignment** = Vertical control
- Overflow এড়াতে **Expanded** ব্যবহার করুন

---

**Happy Coding! 🎉**