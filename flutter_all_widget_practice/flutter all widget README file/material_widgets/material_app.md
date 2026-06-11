# 📱 MaterialApp Widget - সহজ বাংলা গাইড

---

## 🤔 MaterialApp কি?

**MaterialApp** হলো Flutter এর একটি বিশেষ widget যা দিয়ে আমরা একটি সম্পূর্ণ mobile app তৈরি করি।

**সহজ কথায়:** 
- তুমি যখন Flutter এ একটা app বানাবে, সবার আগে `MaterialApp` লাগবে
- এটা app এর "মূল ঘর" এর মতো
- এর ভিতরে তোমার সব pages থাকবে

---

## 💡 MaterialApp কেন দরকার?

MaterialApp ব্যবহার করলে তুমি পাবে:

✅ সুন্দর **Material Design** (Google এর design)  
✅ **Navigation** - এক page থেকে আরেক page যাওয়া  
✅ **Theme** - পুরো app এর color একসাথে change করা  
✅ **Dark Mode** - রাতের জন্য dark theme  
✅ Ready-made **widgets** - Button, Card, AppBar ইত্যাদি

---

## 🔧 MaterialApp এর Properties (বিস্তারিত)

### 📌 ১. title
**কি কাজ করে:** App এর নাম দেওয়া (task manager এ দেখা যায়)

```dart
MaterialApp(
  title: 'আমার অ্যাপ',
)
```

---

### 🐛 ২. debugShowCheckedModeBanner
**কি কাজ করে:** ডান কোণায় "DEBUG" লেখা banner লুকানো

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,  // false = banner থাকবে না
)
```

> **টিপস:** সবসময় `false` করে দাও, তাহলে app সুন্দর দেখাবে

---

### 🎨 ৩. theme
**কি কাজ করে:** App এর রঙ, font, design ঠিক করা (Light Mode এর জন্য)

```dart
MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,  // মূল রঙ নীল
  ),
)
```

**আরো example:**
```dart
theme: ThemeData(
  primarySwatch: Colors.purple,    // বেগুনি রঙ
  brightness: Brightness.light,    // হালকা মোড
)
```

---

### 🌙 ৪. darkTheme
**কি কাজ করে:** Dark mode এর জন্য আলাদা design

```dart
MaterialApp(
  darkTheme: ThemeData.dark(),  // Dark mode theme
)
```

---

### 🔄 ৫. themeMode
**কি কাজ করে:** কোন theme ব্যবহার হবে সেটা বলে দেওয়া

```dart
MaterialApp(
  themeMode: ThemeMode.system,  // Phone এর setting অনুযায়ী
)
```

**Options:**
- `ThemeMode.light` - শুধু light mode
- `ThemeMode.dark` - শুধু dark mode
- `ThemeMode.system` - phone এর setting অনুযায়ী automatic

---

### 🏠 ৬. home
**কি কাজ করে:** App খোলার পর প্রথম কোন page দেখাবে

```dart
MaterialApp(
  home: HomePage(),  // HomePage প্রথমে দেখাবে
)
```

---

### 🗺️ ৭. routes
**কি কাজ করে:** App এর সব pages এক জায়গায় লিখে রাখা

```dart
MaterialApp(
  routes: {
    '/': (context) => HomePage(),
    '/profile': (context) => ProfilePage(),
    '/settings': (context) => SettingsPage(),
  },
)
```

**ব্যবহার করতে হলে:**
```dart
Navigator.pushNamed(context, '/profile');  // Profile page এ যাবে
```

---

### 🎬 ৮. initialRoute
**কি কাজ করে:** App শুরু হলে কোন route দিয়ে শুরু হবে

```dart
MaterialApp(
  initialRoute: '/',  // '/' মানে হোম পেজ
  routes: {
    '/': (context) => HomePage(),
  },
)
```

---

### 🌍 ৯. locale
**কি কাজ করে:** App কোন ভাষায় চলবে (বাংলা, English ইত্যাদি)

```dart
MaterialApp(
  locale: Locale('bn', 'BD'),  // বাংলা (বাংলাদেশ)
)
```

---

### 🌐 ১০. supportedLocales
**কি কাজ করে:** App যেসব ভাষা support করে তার list

```dart
MaterialApp(
  supportedLocales: [
    Locale('en', 'US'),  // English
    Locale('bn', 'BD'),  // বাংলা
  ],
)
```

---

### 🎨 ১১. color
**কি কাজ করে:** Task manager এ app এর color

```dart
MaterialApp(
  color: Colors.blue,
)
```

---

## 📊 Properties এর সংক্ষিপ্ত তালিকা

### 🔵 Basic Properties (সবসময় লাগবে)

| Property | কি করে | কখন লাগবে | Example |
|----------|---------|-----------|---------|
| **title** | App এর নাম দেওয়া | প্রতিটি app এ | `title: 'My App'` |
| **debugShowCheckedModeBanner** | Debug banner লুকানো | সবসময় false করো | `debugShowCheckedModeBanner: false` |
| **home** | প্রথম কোন page দেখাবে | Simple app এ | `home: HomePage()` |

---

### 🎨 Theme Properties (Design এর জন্য)

| Property | কি করে | কখন লাগবে | Example |
|----------|---------|-----------|---------|
| **theme** | Light mode এর design | App সুন্দর করতে | `theme: ThemeData(primarySwatch: Colors.blue)` |
| **darkTheme** | Dark mode এর design | Dark mode চাইলে | `darkTheme: ThemeData.dark()` |
| **themeMode** | কোন theme চলবে | Theme switch করতে | `themeMode: ThemeMode.system` |
| **color** | Task manager এ color | Brand color set করতে | `color: Colors.blue` |

---

### 🗺️ Navigation Properties (পেজ change এর জন্য)

| Property | কি করে | কখন লাগবে | Example |
|----------|---------|-----------|---------|
| **routes** | সব pages একসাথে define | Multi-page app এ | `routes: {'/': (context) => HomePage()}` |
| **initialRoute** | শুরুর route | Routes use করলে | `initialRoute: '/'` |

---

### 🌍 Language Properties (ভাষার জন্য)

| Property | কি করে | কখন লাগবে | Example |
|----------|---------|-----------|---------|
| **locale** | App কোন ভাষায় চলবে | Multi-language করতে | `locale: Locale('bn', 'BD')` |
| **supportedLocales** | যেসব ভাষা support করে | Multi-language করতে | `supportedLocales: [Locale('en'), Locale('bn')]` |

---

## 🎯 সহজ Example

### Example 1: একদম Basic App

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'আমার প্রথম অ্যাপ',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('হোম পেজ'),
      ),
      body: Center(
        child: Text(
          'Hello Flutter!',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
```

**এখানে কি আছে:**
- ✅ `title` - অ্যাপের নাম দেওয়া হয়েছে
- ✅ `debugShowCheckedModeBanner: false` - Debug banner লুকানো হয়েছে
- ✅ `home` - HomePage প্রথমে দেখাবে

---

### Example 2: Theme সহ App

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'থিম অ্যাপ',
      debugShowCheckedModeBanner: false,
      
      // Light Theme
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
      ),
      
      // Dark Theme
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      
      // System অনুযায়ী
      themeMode: ThemeMode.system,
      
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('থিম ডেমো'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.palette, size: 80),
            SizedBox(height: 20),
            Text(
              'Beautiful Theme!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
```

**এখানে কি আছে:**
- ✅ `theme` - বেগুনি রঙের light theme
- ✅ `darkTheme` - dark mode theme
- ✅ `themeMode` - phone এর setting অনুযায়ী automatic

---

### Example 3: Navigation সহ App

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'নেভিগেশন অ্যাপ',
      debugShowCheckedModeBanner: false,
      
      // Routes define করা
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}

// হোম পেজ
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('হোম')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // About page এ যাও
            Navigator.pushNamed(context, '/about');
          },
          child: Text('About Page এ যান'),
        ),
      ),
    );
  }
}

// About পেজ
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('এটি About Page', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // পিছনে ফিরে যাও
                Navigator.pop(context);
              },
              child: Text('ফিরে যান'),
            ),
          ],
        ),
      ),
    );
  }
}
```

**এখানে কি আছে:**
- ✅ `initialRoute` - প্রথমে '/' (home) দেখাবে
- ✅ `routes` - দুইটা page define করা (home, about)
- ✅ Navigation - button click করলে page change হবে

---

## ✨ মনে রাখার টিপস

1. ✅ প্রতিটি Flutter app এ **একটি** `MaterialApp` থাকবে (root এ)
2. ✅ সবসময় `debugShowCheckedModeBanner: false` করে দাও
3. ✅ `theme` ব্যবহার করলে পুরো app এর design consistent থাকে
4. ✅ Small app এ `home` use করো, big app এ `routes` use করো
5. ✅ Dark mode দিলে user experience ভালো হয়

---

## 🎓 আরো শিখতে

- [Flutter Official Docs](https://api.flutter.dev/flutter/material/MaterialApp-class.html)
- [Material Design Guide](https://material.io/design)

---

**🚀 Happy Coding! Flutter শেখা চালিয়ে যাও!**