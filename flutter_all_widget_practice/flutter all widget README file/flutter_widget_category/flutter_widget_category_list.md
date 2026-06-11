# 🚀 Flutter Widgets - সম্পূর্ণ বাংলা গাইড

> Flutter এর সকল গুরুত্বপূর্ণ Widgets এর বিস্তারিত ব্যাখ্যা ও উদাহরণসহ

---

## 📑 সূচিপত্র

1. [Layout Widgets - লেআউট তৈরির জন্য](#1-layout-widgets)
2. [Styling Widgets - ডিজাইন ও স্টাইলিং](#2-styling-widgets)
3. [Text Widgets - টেক্সট প্রদর্শন](#3-text-widgets)
4. [Button Widgets - ইউজার ইন্টারঅ্যাকশন](#4-button-widgets)
5. [Image & Icon Widgets - ইমেজ ও আইকন](#5-image--icon-widgets)
6. [Input Widgets - ইউজার ইনপুট](#6-input-widgets)
7. [Navigation Widgets - নেভিগেশন](#7-navigation-widgets)
8. [Animation Widgets - অ্যানিমেশন](#8-animation-widgets)
9. [Scrolling Widgets - স্ক্রলিং](#9-scrolling-widgets)
10. [Dialog & Popup Widgets - ডায়লগ ও পপআপ](#10-dialog--popup-widgets)

---

## 1. Layout Widgets

লেআউট উইজেটগুলো আপনার UI এর গঠন তৈরি করে এবং অন্যান্য উইজেটগুলোকে সাজানোর কাজ করে।

### 📦 Container

**কী কাজে লাগে:** সবচেয়ে বহুল ব্যবহৃত লেআউট উইজেট যা একটি বক্স তৈরি করে

**বৈশিষ্ট্য:**
- প্যাডিং, মার্জিন, বর্ডার যোগ করা যায়
- ব্যাকগ্রাউন্ড কালার ও ডেকোরেশন সেট করা যায়
- Width ও Height নিয়ন্ত্রণ করা যায়

**উদাহরণ:**
```dart
Container(
  width: 200,
  height: 100,
  padding: EdgeInsets.all(16),
  margin: EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: Text('Hello Flutter'),
)
```

---

### ↔️ Row

**কী কাজে লাগে:** উইজেটগুলোকে horizontal (আড়াআড়ি/পাশাপাশি) ভাবে সাজায়

**বৈশিষ্ট্য:**
- `mainAxisAlignment` - horizontal alignment নিয়ন্ত্রণ
- `crossAxisAlignment` - vertical alignment নিয়ন্ত্রণ
- Multiple children রাখা যায়

**উদাহরণ:**
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.home, size: 30),
    Text('Home', style: TextStyle(fontSize: 20)),
    Icon(Icons.arrow_forward, size: 30),
  ],
)
```

**MainAxisAlignment অপশন:**
- `start` - শুরুতে সাজাবে
- `center` - মাঝখানে সাজাবে
- `end` - শেষে সাজাবে
- `spaceBetween` - মাঝে সমান জায়গা
- `spaceAround` - চারপাশে সমান জায়গা
- `spaceEvenly` - সব জায়গায় সমান স্পেস

---

### ↕️ Column

**কী কাজে লাগে:** উইজেটগুলোকে vertical (উল্লম্ব/উপর-নিচে) ভাবে সাজায়

**বৈশিষ্ট্য:**
- `mainAxisAlignment` - vertical alignment নিয়ন্ত্রণ
- `crossAxisAlignment` - horizontal alignment নিয়ন্ত্রণ
- লিস্ট আকারে আইটেম দেখানোর জন্য পারফেক্ট

**উদাহরণ:**
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('নাম: রহিম'),
    Text('বয়স: ২৫'),
    Text('শহর: ঢাকা'),
    ElevatedButton(
      onPressed: () {},
      child: Text('সাবমিট'),
    ),
  ],
)
```

---

### 📚 Stack

**কী কাজে লাগে:** উইজেটগুলোকে একটির উপর আরেকটি রাখা (overlay)

**বৈশিষ্ট্য:**
- Z-axis এ উইজেট সাজায়
- `Positioned` দিয়ে exact position দেওয়া যায়
- Image এর উপর Text রাখার জন্য খুবই উপযোগী

**উদাহরণ:**
```dart
Stack(
  children: [
    Container(
      width: 300,
      height: 200,
      color: Colors.blue,
    ),
    Positioned(
      top: 20,
      left: 20,
      child: Text(
        'Top Left',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
    Positioned(
      bottom: 20,
      right: 20,
      child: Icon(Icons.star, color: Colors.yellow, size: 40),
    ),
  ],
)
```

---

### 📏 Expanded

**কী কাজে লাগে:** Row বা Column এর মধ্যে available space পূরণ করে

**বৈশিষ্ট্য:**
- `flex` প্রপার্টি দিয়ে ratio নির্ধারণ করা যায়
- Responsive layout তৈরিতে খুবই কার্যকর

**উদাহরণ:**
```dart
Row(
  children: [
    Expanded(
      flex: 2,
      child: Container(color: Colors.red, height: 100),
    ),
    Expanded(
      flex: 1,
      child: Container(color: Colors.blue, height: 100),
    ),
  ],
)
// এখানে red container blue এর দ্বিগুণ জায়গা নেবে
```

---

### 🔄 Wrap

**কী কাজে লাগে:** Row/Column এর মতো কিন্তু স্পেস শেষ হলে নতুন লাইনে চলে যায়

**বৈশিষ্ট্য:**
- Overflow হলে automatically নতুন লাইন তৈরি করে
- Tags, Chips দেখানোর জন্য পারফেক্ট

**উদাহরণ:**
```dart
Wrap(
  spacing: 8.0,
  runSpacing: 8.0,
  children: [
    Chip(label: Text('Flutter')),
    Chip(label: Text('Dart')),
    Chip(label: Text('Mobile')),
    Chip(label: Text('Development')),
    Chip(label: Text('Android')),
    Chip(label: Text('iOS')),
  ],
)
```

---

### 📐 Padding

**কী কাজে লাগে:** Child উইজেটের চারপাশে খালি জায়গা তৈরি করে

**উদাহরণ:**
```dart
Padding(
  padding: EdgeInsets.all(16.0),
  child: Text('Padded Text'),
)

// বিভিন্ন দিকে আলাদা padding
Padding(
  padding: EdgeInsets.only(
    left: 20,
    top: 10,
    right: 20,
    bottom: 10,
  ),
  child: Text('Custom Padding'),
)
```

---

### 🎯 Center

**কী কাজে লাগে:** Child উইজেটকে মাঝখানে রাখে

**উদাহরণ:**
```dart
Center(
  child: Text('আমি মাঝখানে আছি'),
)
```

---

### 📍 Align

**কী কাজে লাগে:** Child উইজেটকে নির্দিষ্ট position এ রাখে

**উদাহরণ:**
```dart
Align(
  alignment: Alignment.topRight,
  child: Icon(Icons.close),
)
```

**Alignment অপশন:**
- `Alignment.topLeft` - উপরে বামে
- `Alignment.topCenter` - উপরে মাঝে
- `Alignment.topRight` - উপরে ডানে
- `Alignment.centerLeft` - মাঝে বামে
- `Alignment.center` - ঠিক মাঝে
- `Alignment.centerRight` - মাঝে ডানে
- `Alignment.bottomLeft` - নিচে বামে
- `Alignment.bottomCenter` - নিচে মাঝে
- `Alignment.bottomRight` - নিচে ডানে

---

### 📏 SizedBox

**কী কাজে লাগে:** নির্দিষ্ট width/height এর বক্স বা spacing তৈরি করে

**উদাহরণ:**
```dart
// Fixed size box
SizedBox(
  width: 200,
  height: 100,
  child: ElevatedButton(
    onPressed: () {},
    child: Text('Fixed Size Button'),
  ),
)

// Spacing তৈরি করতে
Column(
  children: [
    Text('প্রথম লাইন'),
    SizedBox(height: 20), // 20 pixel vertical space
    Text('দ্বিতীয় লাইন'),
  ],
)
```

---

### 🔲 AspectRatio

**কী কাজে লাগে:** নির্দিষ্ট aspect ratio বজায় রাখে

**উদাহরণ:**
```dart
AspectRatio(
  aspectRatio: 16 / 9,
  child: Container(
    color: Colors.blue,
    child: Center(child: Text('16:9')),
  ),
)
```

---

### 📱 FractionallySizedBox

**কী কাজে লাগে:** Parent এর একটি নির্দিষ্ট অংশ জায়গা নেয়

**উদাহরণ:**
```dart
FractionallySizedBox(
  widthFactor: 0.5, // Parent width এর 50%
  heightFactor: 0.3, // Parent height এর 30%
  child: Container(color: Colors.blue),
)
```

---

## 2. Styling Widgets

ডিজাইন ও স্টাইলিং করার জন্য ব্যবহৃত উইজেটসমূহ।

### 🎴 Card

**কী কাজে লাগে:** Material Design এর card তৈরি করে (shadow সহ elevated box)

**বৈশিষ্ট্য:**
- Automatic shadow ও rounded corners
- `elevation` দিয়ে shadow এর পরিমাণ নিয়ন্ত্রণ
- List item, profile card ইত্যাদিতে ব্যবহৃত

**উদাহরণ:**
```dart
Card(
  elevation: 5,
  margin: EdgeInsets.all(10),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        Text('Card Title', 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text('এটি একটি card এর content'),
      ],
    ),
  ),
)
```

---

### ➖ Divider

**কী কাজে লাগে:** Horizontal line তৈরি করে (বিভাজক রেখা)

**উদাহরণ:**
```dart
Column(
  children: [
    Text('উপরের অংশ'),
    Divider(
      color: Colors.grey,
      thickness: 2,
      indent: 20,
      endIndent: 20,
    ),
    Text('নিচের অংশ'),
  ],
)
```

---

### ❙ VerticalDivider

**কী কাজে লাগে:** Vertical line তৈরি করে

**উদাহরণ:**
```dart
Row(
  children: [
    Text('বাম'),
    VerticalDivider(
      color: Colors.grey,
      thickness: 2,
    ),
    Text('ডান'),
  ],
)
```

---

### 👻 Opacity

**কী কাজে লাগে:** উইজেটের স্বচ্ছতা (transparency) নিয়ন্ত্রণ করে

**উদাহরণ:**
```dart
Opacity(
  opacity: 0.5, // 0.0 (সম্পূর্ণ স্বচ্ছ) থেকে 1.0 (সম্পূর্ণ অস্বচ্ছ)
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  ),
)
```

---

### ✂️ ClipRRect

**কী কাজে লাগে:** Rounded corners সহ উইজেট clip করে

**উদাহরণ:**
```dart
ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.network(
    'https://example.com/image.jpg',
    width: 200,
    height: 200,
    fit: BoxFit.cover,
  ),
)
```

---

### 🎨 DecoratedBox

**কী কাজে লাগে:** Background decoration যোগ করে

**উদাহরণ:**
```dart
DecoratedBox(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Padding(
    padding: EdgeInsets.all(20),
    child: Text('Gradient Background', 
      style: TextStyle(color: Colors.white)),
  ),
)
```

---

### 🌈 Theme

**কী কাজে লাগে:** পুরো app বা একটি অংশের theme নিয়ন্ত্রণ করে

**উদাহরণ:**
```dart
Theme(
  data: ThemeData(
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
    ),
  ),
  child: YourWidget(),
)
```

---

## 3. Text Widgets

টেক্সট প্রদর্শনের জন্য ব্যবহৃত উইজেটসমূহ।

### 📝 Text

**কী কাজে লাগে:** সাধারণ টেক্সট দেখানোর জন্য

**বৈশিষ্ট্য:**
- `style` দিয়ে font, color, size পরিবর্তন
- `textAlign` দিয়ে alignment
- `maxLines` দিয়ে লাইন সীমাবদ্ধতা

**উদাহরণ:**
```dart
Text(
  'আসসালামু আলাইকুম',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    letterSpacing: 1.5,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline,
  ),
  textAlign: TextAlign.center,
  maxLines: 2,
  overflow: TextOverflow.ellipsis, // বেশি হলে ... দেখাবে
)
```

**FontWeight অপশন:**
- `FontWeight.w100` - খুবই হালকা
- `FontWeight.w300` - হালকা
- `FontWeight.w400 / FontWeight.normal` - সাধারণ
- `FontWeight.w500` - মাঝারি
- `FontWeight.w600` - semi-bold
- `FontWeight.w700 / FontWeight.bold` - গাঢ়
- `FontWeight.w900` - খুবই গাঢ়

**TextAlign অপশন:**
- `TextAlign.left` - বামে
- `TextAlign.center` - মাঝে
- `TextAlign.right` - ডানে
- `TextAlign.justify` - উভয় পাশে সমান

---

### 🎨 RichText

**কী কাজে লাগে:** একই টেক্সটে বিভিন্ন style প্রয়োগ করা

**উদাহরণ:**
```dart
RichText(
  text: TextSpan(
    text: 'আমার নাম ',
    style: TextStyle(color: Colors.black, fontSize: 18),
    children: [
      TextSpan(
        text: 'রহিম',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          fontSize: 20,
        ),
      ),
      TextSpan(
        text: ' এবং আমি ',
      ),
      TextSpan(
        text: 'Flutter',
        style: TextStyle(
          color: Colors.orange,
          fontStyle: FontStyle.italic,
        ),
      ),
      TextSpan(
        text: ' শিখছি।',
      ),
    ],
  ),
)
```

---

### ✏️ SelectableText

**কী কাজে লাগে:** টেক্সট select ও copy করা যায়

**উদাহরণ:**
```dart
SelectableText(
  'এই টেক্সট সিলেক্ট করা যাবে এবং কপি করা যাবে',
  style: TextStyle(fontSize: 18),
  textAlign: TextAlign.justify,
  onSelectionChanged: (selection, cause) {
    print('Selected: ${selection.start} to ${selection.end}');
  },
)
```

---

## 4. Button Widgets

ইউজার ইন্টারঅ্যাকশনের জন্য বাটন উইজেটসমূহ।

### 🔵 ElevatedButton

**কী কাজে লাগে:** Raised/elevated button (shadow সহ উঁচু বাটন)

**বৈশিষ্ট্য:**
- Material Design elevated button
- `onPressed` ইভেন্ট হ্যান্ডলার
- Customizable style

**উদাহরণ:**
```dart
ElevatedButton(
  onPressed: () {
    print('বাটনে ক্লিক করা হয়েছে');
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 5,
    shadowColor: Colors.grey,
  ),
  child: Text('ক্লিক করুন', style: TextStyle(fontSize: 18)),
)

// Disabled button
ElevatedButton(
  onPressed: null, // null দিলে disabled হবে
  child: Text('Disabled'),
)

// Icon সহ
ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.send),
  label: Text('পাঠান'),
)
```

---

### 🔘 TextButton

**কী কাজে লাগে:** Flat button (shadow ছাড়া সাধারণ বাটন)

**উদাহরণ:**
```dart
TextButton(
  onPressed: () {
    print('Text Button Pressed');
  },
  style: TextButton.styleFrom(
    foregroundColor: Colors.blue,
    padding: EdgeInsets.all(15),
    textStyle: TextStyle(fontSize: 16),
  ),
  child: Text('Text Button'),
)

// Icon সহ
TextButton.icon(
  onPressed: () {},
  icon: Icon(Icons.download),
  label: Text('ডাউনলোড'),
)
```

---

### ⬜ OutlinedButton

**কী কাজে লাগে:** Border সহ বাটন (outline button)

**উদাহরণ:**
```dart
OutlinedButton(
  onPressed: () {
    print('Outlined Button Pressed');
  },
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.blue,
    side: BorderSide(color: Colors.blue, width: 2),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  child: Text('Outlined Button'),
)

// Icon সহ
OutlinedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.login),
  label: Text('লগইন'),
)
```

---

### 🔷 IconButton

**কী কাজে লাগে:** Icon সহ বাটন

**উদাহরণ:**
```dart
IconButton(
  icon: Icon(Icons.favorite, size: 30),
  color: Colors.red,
  onPressed: () {
    print('Icon Button Pressed');
  },
  tooltip: 'পছন্দ করুন', // Long press এ দেখাবে
  splashColor: Colors.red.withOpacity(0.3),
)
```

---

### 🔴 FloatingActionButton (FAB)

**কী কাজে লাগে:** Floating action button (স্ক্রিনের উপর ভাসমান বাটন)

**উদাহরণ:**
```dart
FloatingActionButton(
  onPressed: () {
    print('FAB Pressed');
  },
  backgroundColor: Colors.blue,
  child: Icon(Icons.add, color: Colors.white),
  tooltip: 'যোগ করুন',
  elevation: 8,
)

// Extended FAB (label সহ)
FloatingActionButton.extended(
  onPressed: () {},
  icon: Icon(Icons.add),
  label: Text('নতুন যোগ করুন'),
  backgroundColor: Colors.blue,
)

// Small FAB
FloatingActionButton.small(
  onPressed: () {},
  child: Icon(Icons.edit),
)
```

---

### 💧 InkWell

**কী কাজে লাগে:** যেকোনো widget কে clickable করে (ripple effect সহ)

**উদাহরণ:**
```dart
InkWell(
  onTap: () {
    print('Container Tapped');
  },
  onLongPress: () {
    print('Long Pressed');
  },
  onDoubleTap: () {
    print('Double Tapped');
  },
  splashColor: Colors.blue.withOpacity(0.3),
  borderRadius: BorderRadius.circular(10),
  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text('আমাকে ট্যাপ করুন'),
  ),
)
```

---

### 👆 GestureDetector

**কী কাজে লাগে:** সব ধরনের gesture detect করে (ripple effect ছাড়া)

**উদাহরণ:**
```dart
GestureDetector(
  onTap: () => print('Tapped'),
  onDoubleTap: () => print('Double Tapped'),
  onLongPress: () => print('Long Pressed'),
  onPanUpdate: (details) {
    print('Dragging: ${details.delta}');
  },
  onScaleUpdate: (details) {
    print('Pinch to zoom: ${details.scale}');
  },
  child: Container(
    width: 200,
    height: 100,
    color: Colors.blue,
    child: Center(child: Text('Gesture Area')),
  ),
)
```

---

## 5. Image & Icon Widgets

ইমেজ ও আইকন প্রদর্শনের জন্য উইজেটসমূহ।

### 🖼️ Image

**কী কাজে লাগে:** বিভিন্ন সোর্স থেকে ইমেজ দেখানো

**বৈশিষ্ট্য:**
- Network, asset, file, memory থেকে ইমেজ লোড
- `fit` দিয়ে size নিয়ন্ত্রণ
- Loading placeholder

**উদাহরণ:**
```dart
// Network থেকে ইমেজ
Image.network(
  'https://example.com/image.jpg',
  width: 300,
  height: 200,
  fit: BoxFit.cover,
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  },
  errorBuilder: (context, error, stackTrace) {
    return Icon(Icons.error, size: 50, color: Colors.red);
  },
)

// Asset থেকে ইমেজ
Image.asset(
  'assets/images/logo.png',
  width: 150,
  height: 150,
  fit: BoxFit.contain,
)

// File থেকে ইমেজ
Image.file(
  File('/path/to/image.jpg'),
  width: 200,
  height: 200,
)

// Memory থেকে ইমেজ
Image.memory(
  bytes,
  width: 200,
  height: 200,
)
```

**BoxFit অপশন:**
- `BoxFit.cover` - পুরো space fill করবে (crop হতে পারে)
- `BoxFit.contain` - পুরো image দেখাবে (space খালি থাকতে পারে)
- `BoxFit.fill` - stretch করে fill করবে
- `BoxFit.fitWidth` - width অনুযায়ী fit
- `BoxFit.fitHeight` - height অনুযায়ী fit
- `BoxFit.none` - original size
- `BoxFit.scaleDown` - ছোট করে fit করবে

---

### 👤 CircleAvatar

**কী কাজে লাগে:** Circular image/icon (profile picture এর জন্য)

**উদাহরণ:**
```dart
CircleAvatar(
  radius: 50,
  backgroundImage: NetworkImage('https://example.com/profile.jpg'),
  backgroundColor: Colors.blue,
)

// Text সহ
CircleAvatar(
  radius: 40,
  backgroundColor: Colors.blue,
  child: Text(
    'রহ',
    style: TextStyle(fontSize: 24, color: Colors.white),
  ),
)

// Icon সহ
CircleAvatar(
  radius: 35,
  backgroundColor: Colors.green,
  child: Icon(Icons.person, size: 40, color: Colors.white),
)
```

---

### ⭐ Icon

**কী কাজে লাগে:** Material icons প্রদর্শন

**উদাহরণ:**
```dart
Icon(
  Icons.home,
  size: 40,
  color: Colors.blue,
)

Icon(
  Icons.favorite,
  size: 30,
  color: Colors.red,
)

Icon(
  Icons.settings,
  size: 35,
  color: Colors.grey,
)
```

**কিছু জনপ্রিয় Icons:**
- `Icons.home` - হোম
- `Icons.person` - ব্যক্তি
- `Icons.favorite` - পছন্দ
- `Icons.search` - সার্চ
- `Icons.menu` - মেনু
- `Icons.settings` - সেটিংস
- `Icons.notifications` - নোটিফিকেশন
- `Icons.arrow_back` - পিছনে
- `Icons.add` - যোগ করুন
- `Icons.delete` - ডিলিট
- `Icons.edit` - এডিট
- `Icons.check` - চেক
- `Icons.close` - বন্ধ
- `Icons.email` - ইমেইল
- `Icons.phone` - ফোন

---

### 🎨 ImageIcon

**কী কাজে লাগে:** Custom image কে icon হিসেবে ব্যবহার

**উদাহরণ:**
```dart
ImageIcon(
  AssetImage('assets/icons/custom_icon.png'),
  size: 40,
  color: Colors.blue,
)
```

---

## 6. Input Widgets

ইউজার ইনপুট নেওয়ার জন্য উইজেটসমূহ।

### ⌨️ TextField

**কী কাজে লাগে:** Text input নেওয়ার জন্য

**বৈশিষ্ট্য:**
- Various keyboard types
- Input validation
- Password field
- Decoration

**উদাহরণ:**
```dart
TextField(
  decoration: InputDecoration(
    labelText: 'আপনার নাম',
    hintText: 'এখানে নাম লিখুন',
    prefixIcon: Icon(Icons.person),
    suffixIcon: Icon(Icons.clear),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    filled: true,
    fillColor: Colors.grey[200],
  ),
  keyboardType: TextInputType.text,
  textInputAction: TextInputAction.next,
  onChanged: (value) {
    print('Typed: $value');
  },
  onSubmitted: (value) {
    print('Submitted: $value');
  },
)

// Password Field
TextField(
  obscureText: true,
  decoration: InputDecoration(
    labelText: 'পাসওয়ার্ড',
    prefixIcon: Icon(Icons.lock),
    suffixIcon: Icon(Icons.visibility),
    border: OutlineInputBorder(),
  ),
)

// Controller সহ
TextEditingController _controller = TextEditingController();

TextField(
  controller: _controller,
  decoration: InputDecoration(labelText: 'ইমেইল'),
)
// Value পেতে: _controller.text
// Value সেট করতে: _controller.text = 'নতুন মান'
```

**Keyboard Types:**
- `TextInputType.text` - সাধারণ টেক্সট
- `TextInputType.number` - নাম্বার
- `TextInputType.emailAddress` - ইমেইল
- `TextInputType.phone` - ফোন নাম্বার
- `TextInputType.multiline` - মাল্টিলাইন
- `TextInputType.datetime` - তারিখ/সময়
- `TextInputType.url` - URL

---

### 📝 TextFormField

**কী কাজে লাগে:** Form এর মধ্যে validation সহ TextField

**উদাহরণ:**
```dart
final _formKey = GlobalKey<FormState>();

Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(
        decoration: InputDecoration(
          labelText: 'ইমেইল',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'ইমেইল দিন';
          }
          if (!value.contains('@')) {
            return 'সঠিক ইমেইল দিন';
          }
          return null;
        },
      ),
      SizedBox(height: 20),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'পাসওয়ার্ড',
          border: OutlineInputBorder(),
        ),
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'পাসওয়ার্ড দিন';
          }
          if (value.length < 6) {
            return 'পাসওয়ার্ড কমপক্ষে ৬ অক্ষরের হতে হবে';
          }
          return null;
        },
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            print('Form Valid');
          }
        },
        child: Text('সাবমিট'),
      ),
    ],
  ),
)
```

---

### ☑️ Checkbox

**কী কাজে লাগে:** Check/uncheck করার জন্য

**উদাহরণ:**
```dart
bool _isChecked = false;

Checkbox(
  value: _isChecked,
  onChanged: (bool? value) {
    setState(() {
      _isChecked = value!;
    });
  },
  activeColor: Colors.blue,
)

// With label
CheckboxListTile(
  title: Text('আমি শর্তাবলী মেনে নিচ্ছি'),
  subtitle: Text('সব নিয়ম পড়ে নিন'),
  value: _isChecked,
  onChanged: (bool? value) {
    setState(() {
      _isChecked = value!;
    });
  },
  controlAffinity: ListTileControlAffinity.leading,
  secondary: Icon(Icons.check_circle),
)
```

---

### 🔘 Radio

**কী কাজে লাগে:** একাধিক option থেকে একটি select করা

**উদাহরণ:**
```dart
String _selectedGender = 'male';

Column(
  children: [
    RadioListTile<String>(
      title: Text('পুরুষ'),
      value: 'male',
      groupValue: _selectedGender,
      onChanged: (String? value) {
        setState(() {
          _selectedGender = value!;
        });
      },
    ),
    RadioListTile<String>(
      title: Text('মহিলা'),
      value: 'female',
      groupValue: _selectedGender,
      onChanged: (String? value) {
        setState(() {
          _selectedGender = value!;
        });
      },
    ),
    RadioListTile<String>(
      title: Text('অন্যান্য'),
      value: 'other',
      groupValue: _selectedGender,
      onChanged: (String? value) {
        setState(() {
          _selectedGender = value!;
        });
      },
    ),
  ],
)
```

---

### 🔄 Switch

**কী কাজে লাগে:** On/Off toggle করার জন্য

**উদাহরণ:**
```dart
bool _isSwitched = false;

Switch(
  value: _isSwitched,
  onChanged: (bool value) {
    setState(() {
      _isSwitched = value;
    });
  },
  activeColor: Colors.blue,
  activeTrackColor: Colors.blue[200],
  inactiveThumbColor: Colors.grey,
  inactiveTrackColor: Colors.grey[300],
)

// With label
SwitchListTile(
  title: Text('নোটিফিকেশন চালু করুন'),
  subtitle: Text('সব নোটিফিকেশন পাবেন'),
  value: _isSwitched,
  onChanged: (bool value) {
    setState(() {
      _isSwitched = value;
    });
  },
  secondary: Icon(Icons.notifications),
)
```

---

### 📊 Slider

**কী কাজে লাগে:** Range থেকে value select করা

**উদাহরণ:**
```dart
double _currentValue = 50;

Slider(
  value: _currentValue,
  min: 0,
  max: 100,
  divisions: 10,
  label: _currentValue.round().toString(),
  onChanged: (double value) {
    setState(() {
      _currentValue = value;
    });
  },
  activeColor: Colors.blue,
  inactiveColor: Colors.grey,
)

// Range Slider (দুই মাথা)
RangeValues _currentRangeValues = RangeValues(20, 80);

RangeSlider(
  values: _currentRangeValues,
  min: 0,
  max: 100,
  divisions: 10,
  labels: RangeLabels(
    _currentRangeValues.start.round().toString(),
    _currentRangeValues.end.round().toString(),
  ),
  onChanged: (RangeValues values) {
    setState(() {
      _currentRangeValues = values;
    });
  },
)
```

---

### 📋 DropdownButton

**কী কাজে লাগে:** Dropdown menu থেকে option select করা

**উদাহরণ:**
```dart
String _selectedCity = 'ঢাকা';
List<String> _cities = ['ঢাকা', 'চট্টগ্রাম', 'সিলেট', 'রাজশাহী', 'খুলনা'];

DropdownButton<String>(
  value: _selectedCity,
  icon: Icon(Icons.arrow_drop_down),
  elevation: 16,
  style: TextStyle(color: Colors.blue, fontSize: 16),
  underline: Container(
    height: 2,
    color: Colors.blue,
  ),
  onChanged: (String? newValue) {
    setState(() {
      _selectedCity = newValue!;
    });
  },
  items: _cities.map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
)

// DropdownButtonFormField (Form এর জন্য)
DropdownButtonFormField<String>(
  value: _selectedCity,
  decoration: InputDecoration(
    labelText: 'শহর নির্বাচন করুন',
    border: OutlineInputBorder(),
  ),
  items: _cities.map((String city) {
    return DropdownMenuItem(
      value: city,
      child: Text(city),
    );
  }).toList(),
  onChanged: (String? newValue) {
    setState(() {
      _selectedCity = newValue!;
    });
  },
  validator: (value) {
    if (value == null) {
      return 'শহর নির্বাচন করুন';
    }
    return null;
  },
)
```

---

### 📅 DatePicker & TimePicker

**কী কাজে লাগে:** তারিখ ও সময় select করা

**উদাহরণ:**
```dart
// Date Picker
DateTime _selectedDate = DateTime.now();

Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: _selectedDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
  if (picked != null && picked != _selectedDate) {
    setState(() {
      _selectedDate = picked;
    });
  }
}

ElevatedButton(
  onPressed: () => _selectDate(context),
  child: Text('তারিখ নির্বাচন করুন'),
)

// Time Picker
TimeOfDay _selectedTime = TimeOfDay.now();

Future<void> _selectTime(BuildContext context) async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: _selectedTime,
  );
  if (picked != null && picked != _selectedTime) {
    setState(() {
      _selectedTime = picked;
    });
  }
}

ElevatedButton(
  onPressed: () => _selectTime(context),
  child: Text('সময় নির্বাচন করুন'),
)
```

---

## 7. Navigation Widgets

নেভিগেশনের জন্য ব্যবহৃত উইজেটসমূহ।

### 🏠 Scaffold

**কী কাজে লাগে:** Material Design এর basic layout structure

**বৈশিষ্ট্য:**
- AppBar, Body, BottomNavigationBar, FloatingActionButton
- Drawer support
- SnackBar support

**উদাহরণ:**
```dart
Scaffold(
  appBar: AppBar(
    title: Text('হোম পেজ'),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {},
      ),
    ],
  ),
  body: Center(
    child: Text('মূল কন্টেন্ট'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
  drawer: Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Text('ড্রয়ার হেডার'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('হোম'),
          onTap: () {},
        ),
      ],
    ),
  ),
  bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'হোম',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'খুঁজুন',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'প্রোফাইল',
      ),
    ],
  ),
)
```

---

### 📱 AppBar

**কী কাজে লাগে:** Top app bar তৈরি করে

**উদাহরণ:**
```dart
AppBar(
  title: Text('আমার অ্যাপ'),
  centerTitle: true,
  backgroundColor: Colors.blue,
  elevation: 5,
  leading: IconButton(
    icon: Icon(Icons.menu),
    onPressed: () {},
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {},
    ),
  ],
  bottom: TabBar(
    tabs: [
      Tab(icon: Icon(Icons.home), text: 'হোম'),
      Tab(icon: Icon(Icons.person), text: 'প্রোফাইল'),
    ],
  ),
)
```

---

### 🔽 BottomNavigationBar

**কী কাজে লাগে:** Bottom navigation তৈরি করে

**উদাহরণ:**
```dart
int _selectedIndex = 0;

BottomNavigationBar(
  currentIndex: _selectedIndex,
  onTap: (int index) {
    setState(() {
      _selectedIndex = index;
    });
  },
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.grey,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'হোম',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'খুঁজুন',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'পছন্দ',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'প্রোফাইল',
    ),
  ],
)
```

---

### 📑 TabBar & TabBarView

**কী কাজে লাগে:** Tab navigation তৈরি করে

**উদাহরণ:**
```dart
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: Text('ট্যাব নেভিগেশন'),
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home), text: 'হোম'),
          Tab(icon: Icon(Icons.star), text: 'জনপ্রিয়'),
          Tab(icon: Icon(Icons.person), text: 'প্রোফাইল'),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        Center(child: Text('হোম পেজ')),
        Center(child: Text('জনপ্রিয় পেজ')),
        Center(child: Text('প্রোফাইল পেজ')),
      ],
    ),
  ),
)
```

---

### 🔙 Navigator

**কী কাজে লাগে:** Page navigation করার জন্য

**উদাহরণ:**
```dart
// নতুন page এ যাওয়া
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);

// নামসহ route
Navigator.pushNamed(context, '/second');

// Previous page এ ফিরে যাওয়া
Navigator.pop(context);

// Data সহ ফিরে যাওয়া
Navigator.pop(context, 'ফলাফল');

// Replace current page
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);

// সব page remove করে নতুন page
Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
  (route) => false,
);
```

---

### 🚪 Drawer

**কী কাজে লাগে:** Side navigation drawer তৈরি করে

**উদাহরণ:**
```dart
Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('url'),
            ),
            SizedBox(height: 10),
            Text(
              'রহিম আহমেদ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'rahim@example.com',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('হোম'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('সেটিংস'),
        onTap: () {},
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('লগআউট'),
        onTap: () {},
      ),
    ],
  ),
)
```

---

## 8. Animation Widgets

অ্যানিমেশনের জন্য ব্যবহৃত উইজেটসমূহ।

### ✨ AnimatedContainer

**কী কাজে লাগে:** Container এর properties তে animated transition

**উদাহরণ:**
```dart
bool _isExpanded = false;

AnimatedContainer(
  duration: Duration(seconds: 1),
  curve: Curves.easeInOut,
  width: _isExpanded ? 200 : 100,
  height: _isExpanded ? 200 : 100,
  color: _isExpanded ? Colors.blue : Colors.red,
  child: Center(
    child: Text(_isExpanded ? 'বড়' : 'ছোট'),
  ),
)

// Tap করলে animate হবে
GestureDetector(
  onTap: () {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  },
  child: AnimatedContainer(...),
)
```

---

### 🎭 AnimatedOpacity

**কী কাজে লাগে:** Opacity তে animated transition

**উদাহরণ:**
```dart
bool _isVisible = true;

AnimatedOpacity(
  opacity: _isVisible ? 1.0 : 0.0,
  duration: Duration(milliseconds: 500),
  child: Container(
    width: 200,
    height: 200,
    color: Colors.blue,
    child: Center(child: Text('ফেইড ইন/আউট')),
  ),
)

// Toggle button
ElevatedButton(
  onPressed: () {
    setState(() {
      _isVisible = !_isVisible;
    });
  },
  child: Text(_isVisible ? 'লুকান' : 'দেখান'),
)
```

---

### 🔄 AnimatedCrossFade

**কী কাজে লাগে:** দুটি widget এর মধ্যে cross-fade transition

**উদাহরণ:**
```dart
bool _showFirst = true;

AnimatedCrossFade(
  duration: Duration(milliseconds: 300),
  firstChild: Container(
    width: 200,
    height: 200,
    color: Colors.blue,
    child: Center(child: Text('প্রথম')),
  ),
  secondChild: Container(
    width: 200,
    height: 200,
    color: Colors.red,
    child: Center(child: Text('দ্বিতীয়')),
  ),
  crossFadeState: _showFirst 
      ? CrossFadeState.showFirst 
      : CrossFadeState.showSecond,
)
```

---

### 📐 AnimatedAlign

**কী কাজে লাগে:** Alignment এ animated transition

**উদাহরণ:**
```dart
bool _isAlignedRight = false;

AnimatedAlign(
  duration: Duration(seconds: 1),
  curve: Curves.easeInOut,
  alignment: _isAlignedRight ? Alignment.centerRight : Alignment.centerLeft,
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  ),
)
```

---

### 🎬 Hero

**কী কাজে লাগে:** দুটি screen এর মধ্যে shared element transition

**উদাহরণ:**
```dart
// First Screen
Hero(
  tag: 'imageHero',
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondScreen()),
      );
    },
    child: Image.network(
      'https://example.com/image.jpg',
      width: 100,
      height: 100,
    ),
  ),
)

// Second Screen
Hero(
  tag: 'imageHero', // একই tag ব্যবহার করতে হবে
  child: Image.network(
    'https://example.com/image.jpg',
    width: 300,
    height: 300,
  ),
)
```

---

### 💫 AnimatedBuilder

**কী কাজে লাগে:** Custom animation তৈরি করার জন্য

**উদাহরণ:**
```dart
class _MyWidgetState extends State<MyWidget> 
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: _animation.value,
          height: _animation.value,
          color: Colors.blue,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
```

---

### 🌊 AnimatedList

**কী কাজে লাগে:** List এ animated add/remove করা

**উদাহরণ:**
```dart
final GlobalKey<AnimatedListState> _listKey = GlobalKey();
List<String> _items = ['আইটেম ১', 'আইটেম ২'];

AnimatedList(
  key: _listKey,
  initialItemCount: _items.length,
  itemBuilder: (context, index, animation) {
    return SlideTransition(
      position: animation.drive(
        Tween(begin: Offset(1, 0), end: Offset(0, 0)),
      ),
      child: ListTile(
        title: Text(_items[index]),
      ),
    );
  },
)

// নতুন item যোগ করা
void _addItem() {
  final int index = _items.length;
  _items.add('নতুন আইটেম');
  _listKey.currentState!.insertItem(index);
}

// Item remove করা
void _removeItem(int index) {
  final String item = _items[index];
  _items.removeAt(index);
  _listKey.currentState!.removeItem(
    index,
    (context, animation) => ListTile(title: Text(item)),
  );
}
```

---

## 9. Scrolling Widgets

স্ক্রলিং এর জন্য ব্যবহৃত উইজেটসমূহ।

### 📜 ListView

**কী কাজে লাগে:** Scrollable list তৈরি করে

**উদাহরণ:**
```dart
// Basic ListView
ListView(
  children: [
    ListTile(
      leading: Icon(Icons.person),
      title: Text('রহিম'),
      subtitle: Text('ডেভেলপার'),
      trailing: Icon(Icons.arrow_forward),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('করিম'),
      subtitle: Text('ডিজাইনার'),
    ),
  ],
)

// ListView.builder (বড় list এর জন্য)
ListView.builder(
  itemCount: 100,
  itemBuilder: (context, index) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('${index + 1}'),
      ),
      title: Text('আইটেম ${index + 1}'),
      onTap: () {
        print('Tapped item $index');
      },
    );
  },
)

// ListView.separated (divider সহ)
ListView.separated(
  itemCount: 50,
  separatorBuilder: (context, index) => Divider(),
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('আইটেম ${index + 1}'),
    );
  },
)
```

---

### 📱 GridView

**কী কাজে লাগে:** Grid layout তে items দেখানো

**উদাহরণ:**
```dart
// Fixed count GridView
GridView.count(
  crossAxisCount: 2, // ২ কলাম
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  padding: EdgeInsets.all(10),
  children: List.generate(20, (index) {
    return Container(
      color: Colors.blue[100 * (index % 9)],
      child: Center(
        child: Text(
          'আইটেম $index',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }),
)

// GridView.builder
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
    childAspectRatio: 1,
  ),
  itemCount: 50,
  itemBuilder: (context, index) {
    return Card(
      elevation: 3,
      child: Center(child: Text('$index')),
    );
  },
)

// GridView.extent (max width দিয়ে)
GridView.extent(
  maxCrossAxisExtent: 150,
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  children: List.generate(20, (index) {
    return Container(
      color: Colors.green,
      child: Center(child: Text('$index')),
    );
  }),
)
```

---

### 🔄 SingleChildScrollView

**কী কাজে লাগে:** যেকোনো widget কে scrollable করে

**উদাহরণ:**
```dart
SingleChildScrollView(
  child: Column(
    children: [
      Container(
        height: 200,
        color: Colors.blue,
        child: Center(child: Text('সেকশন ১')),
      ),
      Container(
        height: 200,
        color: Colors.red,
        child: Center(child: Text('সেকশন ২')),
      ),
      Container(
        height: 200,
        color: Colors.green,
        child: Center(child: Text('সেকশন ৩')),
      ),
      // আরও content...
    ],
  ),
)

// Horizontal scroll
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: List.generate(20, (index) {
      return Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.all(8),
        color: Colors.blue[100 * (index % 9)],
        child: Center(child: Text('$index')),
      );
    }),
  ),
)
```

---

### 📋 CustomScrollView & Slivers

**কী কাজে লাগে:** Advanced scrolling effects তৈরি করা

**উদাহরণ:**
```dart
CustomScrollView(
  slivers: [
    // Collapsing AppBar
    SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('আমার অ্যাপ'),
        background: Image.network(
          'https://example.com/header.jpg',
          fit: BoxFit.cover,
        ),
      ),
    ),
    
    // List
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          title: Text('আইটেম $index'),
        ),
        childCount: 20,
      ),
    ),
    
    // Grid
    SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => Container(
          color: Colors.blue,
          child: Center(child: Text('$index')),
        ),
        childCount: 10,
      ),
    ),
  ],
)
```

---

### 📄 PageView

**কী কাজে লাগে:** Page swipe করার জন্য (carousel/slider)

**উদাহরণ:**
```dart
PageView(
  children: [
    Container(
      color: Colors.blue,
      child: Center(child: Text('পেজ ১', style: TextStyle(fontSize: 30))),
    ),
    Container(
      color: Colors.red,
      child: Center(child: Text('পেজ ২', style: TextStyle(fontSize: 30))),
    ),
    Container(
      color: Colors.green,
      child: Center(child: Text('পেজ ৩', style: TextStyle(fontSize: 30))),
    ),
  ],
)

// PageView.builder (অনেক page এর জন্য)
PageView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length],
      child: Center(
        child: Text(
          'পেজ ${index + 1}',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  },
)

// Controller সহ (programmatically page change)
PageController _pageController = PageController(initialPage: 0);

PageView(
  controller: _pageController,
  children: [...],
)

// নির্দিষ্ট page এ যাওয়া
_pageController.animateToPage(
  2,
  duration: Duration(milliseconds: 300),
  curve: Curves.easeInOut,
)
```

---

### 🔄 RefreshIndicator

**কী কাজে লাগে:** Pull-to-refresh functionality

**উদাহরণ:**
```dart
RefreshIndicator(
  onRefresh: () async {
    // Data refresh করার কোড
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Update data
    });
  },
  child: ListView.builder(
    itemCount: 50,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('আইটেম $index'),
      );
    },
  ),
)
```

---

### 📍 Scrollbar

**কী কাজে লাগে:** Scrollable widget এ scrollbar যোগ করা

**উদাহরণ:**
```dart
Scrollbar(
  thickness: 8,
  radius: Radius.circular(10),
  child: ListView.builder(
    itemCount: 100,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('আইটেম $index'),
      );
    },
  ),
)
```

---

## 10. Dialog & Popup Widgets

ডায়লগ ও পপআপের জন্য ব্যবহৃত উইজেটসমূহ।

### 💬 AlertDialog

**কী কাজে লাগে:** Alert message দেখানোর জন্য

**উদাহরণ:**
```dart
// Dialog দেখানো
void _showAlertDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('সতর্কতা'),
        content: Text('আপনি কি নিশ্চিত যে আপনি এটি ডিলিট করতে চান?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Dialog বন্ধ করা
            },
            child: Text('বাতিল'),
          ),
          ElevatedButton(
            onPressed: () {
              // Delete action
              Navigator.of(context).pop();
            },
            child: Text('ডিলিট'),
          ),
        ],
      );
    },
  );
}

// Button থেকে call করা
ElevatedButton(
  onPressed: _showAlertDialog,
  child: Text('ডায়লগ দেখান'),
)
```

---

### 📝 SimpleDialog

**কী কাজে লাগে:** একাধিক option থেকে select করার dialog

**উদাহরণ:**
```dart
void _showSimpleDialog() async {
  final result = await showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text('ভাষা নির্বাচন করুন'),
        children: [
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, 'বাংলা');
            },
            child: Text('বাংলা'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, 'English');
            },
            child: Text('English'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, 'हिन्दी');
            },
            child: Text('हिन्दी'),
          ),
        ],
      );
    },
  );
  
  if (result != null) {
    print('Selected: $result');
  }
}
```

---

### 📋 BottomSheet

**কী কাজে লাগে:** নিচ থেকে উঠে আসা sheet

**উদাহরণ:**
```dart
// Modal BottomSheet
void _showModalBottomSheet() {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return Container(
        height: 300,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'অপশন নির্বাচন করুন',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('শেয়ার করুন'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('লিংক কপি করুন'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('ডাউনলোড করুন'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}

// Persistent BottomSheet (Scaffold এর মধ্যে)
Scaffold(
  body: Center(child: Text('Content')),
  bottomSheet: Container(
    height: 100,
    color: Colors.blue,
    child: Center(child: Text('Persistent Bottom Sheet')),
  ),
)
```

---

### 🔔 SnackBar

**কী কাজে লাগে:** নিচে ছোট message দেখানো

**উদাহরণ:**
```dart
void _showSnackBar() {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('এটি একটি স্ন্যাকবার মেসেজ'),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
        label: 'আনডু',
        onPressed: () {
          print('Undo pressed');
        },
      ),
      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

ElevatedButton(
  onPressed: _showSnackBar,
  child: Text('স্ন্যাকবার দেখান'),
)
```

---

### 🎯 Tooltip

**কী কাজে লাগে:** Long press করলে hint message দেখায়

**উদাহরণ:**
```dart
Tooltip(
  message: 'এটি একটি টুলটিপ',
  child: IconButton(
    icon: Icon(Icons.info),
    onPressed: () {},
  ),
)

// Custom styling
Tooltip(
  message: 'সেটিংস',
  textStyle: TextStyle(color: Colors.white),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(5),
  ),
  padding: EdgeInsets.all(10),
  child: Icon(Icons.settings),
)
```

---

### 🎨 PopupMenuButton

**কী কাজে লাগে:** Popup menu দেখানো

**উদাহরণ:**
```dart
PopupMenuButton<String>(
  icon: Icon(Icons.more_vert),
  onSelected: (String value) {
    print('Selected: $value');
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
    PopupMenuItem<String>(
      value: 'edit',
      child: Row(
        children: [
          Icon(Icons.edit, size: 20),
          SizedBox(width: 10),
          Text('এডিট'),
        ],
      ),
    ),
    PopupMenuItem<String>(
      value: 'share',
      child: Row(
        children: [
          Icon(Icons.share, size: 20),
          SizedBox(width: 10),
          Text('শেয়ার'),
        ],
      ),
    ),
    PopupMenuDivider(),
    PopupMenuItem<String>(
      value: 'delete',
      child: Row(
        children: [
          Icon(Icons.delete, size: 20, color: Colors.red),
          SizedBox(width: 10),
          Text('ডিলিট', style: TextStyle(color: Colors.red)),
        ],
      ),
    ),
  ],
)
```

---

### 📅 showDatePicker (Dialog হিসেবে)

**কী কাজে লাগে:** Date picker dialog

**উদাহরণ:**
```dart
Future<void> _selectDate() async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: Colors.blue,
            onPrimary: Colors.white,
            onSurface: Colors.black,
          ),
        ),
        child: child!,
      );
    },
  );
  
  if (picked != null) {
    print('Selected date: $picked');
  }
}
```

---

### ⏰ showTimePicker (Dialog হিসেবে)

**কী কাজে লাগে:** Time picker dialog

**উদাহরণ:**
```dart
Future<void> _selectTime() async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: Colors.blue,
          ),
        ),
        child: child!,
      );
    },
  );
  
  if (picked != null) {
    print('Selected time: ${picked.format(context)}');
  }
}
```

---

## 📚 বোনাস: অন্যান্য গুরুত্বপূর্ণ Widgets

### 🔄 FutureBuilder

**কী কাজে লাগে:** Asynchronous data handle করা

**উদাহরণ:**
```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'ডেটা লোড হয়েছে';
}

FutureBuilder<String>(
  future: fetchData(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return Center(child: CircularProgressIndicator());
    } else if (snapshot.hasError) {
      return Center(child: Text('Error: ${snapshot.error}'));
    } else if (snapshot.hasData) {
      return Center(child: Text(snapshot.data!));
    } else {
      return Center(child: Text('কোনো ডেটা নেই'));
    }
  },
)
```

---

### 🌊 StreamBuilder

**কী কাজে লাগে:** Stream data handle করা (real-time updates)

**উদাহরণ:**
```dart
Stream<int> counterStream() async* {
  int count = 0;
  while (count < 10) {
    await Future.delayed(Duration(seconds: 1));
    yield count++;
  }
}

StreamBuilder<int>(
  stream: counterStream(),
  builder: (context, snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    }
    
    if (!snapshot.hasData) {
      return CircularProgressIndicator();
    }
    
    return Text(
      'Count: ${snapshot.data}',
      style: TextStyle(fontSize: 30),
    );
  },
)
```

---

### 🎯 Placeholder

**কী কাজে লাগে:** Temporary placeholder দেখানো

**উদাহরণ:**
```dart
Placeholder(
  fallbackWidth: 200,
  fallbackHeight: 100,
  color: Colors.blue,
  strokeWidth: 2,
)
```

---

### ⏳ CircularProgressIndicator

**কী কাজে লাগে:** Loading indicator

**উদাহরণ:**
```dart
// Indeterminate (অনির্দিষ্ট)
CircularProgressIndicator(
  color: Colors.blue,
  strokeWidth: 4,
)

// Determinate (নির্দিষ্ট progress)
CircularProgressIndicator(
  value: 0.7, // 70% complete
  color: Colors.blue,
  backgroundColor: Colors.grey[300],
)

// Linear Progress Indicator
LinearProgressIndicator(
  value: 0.5, // 50%
  color: Colors.blue,
  backgroundColor: Colors.grey[300],
)
```

---

### 🔐 Visibility

**কী কাজে লাগে:** Widget দেখানো/লুকানো (conditionally)

**উদাহরণ:**
```dart
bool _isVisible = true;

Visibility(
  visible: _isVisible,
  child: Container(
    width: 200,
    height: 100,
    color: Colors.blue,
    child: Center(child: Text('দৃশ্যমান')),
  ),
)

// Replacement সহ (লুকানো অবস্থায় অন্য widget দেখাবে)
Visibility(
  visible: _isVisible,
  replacement: Text('লুকানো আছে'),
  child: Text('দেখা যাচ্ছে'),
)
```

---

### 🎲 Flexible

**কী কাজে লাগে:** Row/Column এ flexible space নেয়

**উদাহরণ:**
```dart
Row(
  children: [
    Flexible(
      flex: 1,
      child: Container(
        height: 100,
        color: Colors.red,
        child: Center(child: Text('Flex 1')),
      ),
    ),
    Flexible(
      flex: 2,
      child: Container(
        height: 100,
        color: Colors.blue,
        child: Center(child: Text('Flex 2')),
      ),
    ),
  ],
)
```

---

### 🔲 Spacer

**কী কাজে লাগে:** Row/Column এ flexible empty space

**উদাহরণ:**
```dart
Row(
  children: [
    Text('বাম'),
    Spacer(), // মাঝে সব খালি জায়গা নেবে
    Text('ডান'),
  ],
)

Row(
  children: [
    Text('১'),
    Spacer(flex: 1),
    Text('২'),
    Spacer(flex: 2),
    Text('৩'),
  ],
)
```

---

## 🎓 শেষ কথা

এই গাইডে Flutter এর সবচেয়ে গুরুত্বপূর্ণ এবং বহুল ব্যবহৃত Widgets সম্পর্কে বিস্তারিত আলোচনা করা হয়েছে। প্রতিটি Widget এর:

- ✅ কী কাজে লাগে
- ✅ মূল বৈশিষ্ট্য
- ✅ বাস্তব উদাহরণ সহ কোড
- ✅ বিভিন্ন অপশন ও প্যারামিটার

### 📖 পরবর্তী ধাপ:

1. প্রতিটি widget নিজে হাতে practice করুন
2. বিভিন্ন widget একসাথে combine করে complex UI তৈরি করুন
3. Flutter documentation পড়ুন: [flutter.dev](https://flutter.dev)
4. ছোট ছোট project তৈরি করুন

### 💡 টিপস:

- Widget tree সবসময় যতটা সম্ভব simple রাখুন
- Performance এর জন্য `const` constructor ব্যবহার করুন
- `setState()` শুধুমাত্র প্রয়োজনীয় জায়গায় ব্যবহার করুন
- Large lists এর জন্য `.builder()` constructor ব্যবহার করুন

---

**তৈরি করেছেন:** Flutter Enthusiast  
**সর্বশেষ আপডেট:** ২০২৫

**Happy Coding! 🚀**