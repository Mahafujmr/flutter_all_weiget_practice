# 📋 Flutter ListTile Widget

Flutter-এর **ListTile Widget** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**ListTile Widget** হলো Flutter-এর একটি **Material Design Widget** যা একটি List-এর প্রতিটি Item সুন্দর, গোছানো এবং Standard Layout-এ প্রদর্শন করার জন্য ব্যবহৃত হয়।

এটি একটি **Ready-made Row Layout** যেখানে Icon, Image, Title, Subtitle এবং Trailing Widget খুব সহজেই যোগ করা যায়।

Flutter-এ Settings Page, Contact List, Chat List, Menu, Notification List এবং Profile Section তৈরিতে সবচেয়ে বেশি ব্যবহৃত Widgetগুলোর একটি হলো **ListTile**।

---

# 🎯 কেন ListTile Widget ব্যবহার করা হয়?

✅ সুন্দর ও Standard List Item তৈরি করতে।

✅ কম কোডে Professional UI তৈরি করতে।

✅ Material Design অনুসরণ করতে।

✅ Icon, Title, Subtitle এবং Trailing Widget সহজে যোগ করতে।

✅ Settings, Menu এবং Contact List তৈরি করতে।

---

# ⚙️ Constructor

```dart
ListTile(
  leading: Widget(),
  title: Widget(),
  subtitle: Widget(),
  trailing: Widget(),
)
```

---

# 🏗️ ListTile-এর Structure

```text
┌─────────────────────────────────────────────┐
│ 👤   Title                    >             │
│      Subtitle                               │
└─────────────────────────────────────────────┘
```

- **Leading** → বাম পাশের Widget
- **Title** → প্রধান লেখা
- **Subtitle** → অতিরিক্ত তথ্য
- **Trailing** → ডান পাশের Widget

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property             | বর্ণনা                                             |
| -------------------- | -------------------------------------------------- |
| `leading`            | বাম পাশে Widget (Icon, Image, Avatar ইত্যাদি)      |
| `title`              | প্রধান Text বা Widget                              |
| `subtitle`           | Title-এর নিচে অতিরিক্ত তথ্য                        |
| `trailing`           | ডান পাশে Widget (Icon, Switch, Arrow ইত্যাদি)      |
| `onTap`              | Tile-এ Tap করলে কী হবে                             |
| `onLongPress`        | Long Press Event                                   |
| `tileColor`          | Tile-এর Background Color                           |
| `selectedTileColor`  | Selected হলে Background Color                      |
| `selected`           | Tile Selected কিনা                                 |
| `enabled`            | Tile Enable/Disable করবে                           |
| `isThreeLine`        | তিন লাইনের Layout ব্যবহার করবে                     |
| `dense`              | Tile-এর Height কমিয়ে Compact করবে                 |
| `contentPadding`     | ভিতরের Padding নির্ধারণ করে                        |
| `shape`              | Tile-এর Shape ও Border নির্ধারণ করে                |
| `visualDensity`      | Tile-এর Density নিয়ন্ত্রণ করে                     |
| `horizontalTitleGap` | Leading এবং Title-এর মাঝের দূরত্ব                  |
| `minLeadingWidth`    | Leading Widget-এর Minimum Width                    |
| `minVerticalPadding` | উপরে ও নিচে Minimum Padding                        |
| `titleAlignment`     | Title-এর Vertical Alignment (নতুন Flutter Version) |
| `textColor`          | Title ও Subtitle-এর Text Color                     |
| `iconColor`          | Icon-এর Color                                      |
| `focusColor`         | Focus হলে Color                                    |
| `hoverColor`         | Mouse Hover-এর Color                               |
| `splashColor`        | Tap করলে Splash Color                              |
| `enableFeedback`     | Haptic ও Sound Feedback চালু/বন্ধ করে              |
| `mouseCursor`        | Mouse Cursor পরিবর্তন করে                          |

---

# 💻 Basic Example

```dart
ListTile(
  title: Text("Flutter"),
)
```

---

# 💻 Example with Leading & Trailing

```dart
ListTile(
  leading: Icon(Icons.person),
  title: Text("MD. Tuhin Hossain"),
  subtitle: Text("Flutter Developer"),
  trailing: Icon(Icons.arrow_forward_ios),
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListTile Widget"),
        ),
        body: ListView(
          children: [

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("MD. Tuhin Hossain"),
              subtitle: Text("Flutter Developer"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                print("Profile Clicked");
              },
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("example@gmail.com"),
              trailing: Icon(Icons.copy),
            ),

          ],
        ),
      ),
    );
  }
}
```

---

# 📱 Output

```text
👤  MD. Tuhin Hossain                 >

    Flutter Developer

──────────────────────────────

📧  Email                         📋

    example@gmail.com
```

---

# 🎯 কোথায় ব্যবহার হয়?

- Settings Screen
- Profile Screen
- Contact List
- Chat List
- Notification List
- Drawer Menu
- Email Application
- Banking Application
- E-commerce Application
- Music Player
- File Manager

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. Settings Application

প্রতিটি Setting Option প্রদর্শনের জন্য।

---

## ২. WhatsApp / Messenger

Chat List দেখানোর জন্য।

---

## ৩. Gmail

Email List প্রদর্শনের জন্য।

---

## ৪. Banking App

Transaction History দেখানোর জন্য।

---

## ৫. E-commerce App

Order History এবং Delivery Status দেখানোর জন্য।

---

## ৬. Food Delivery App

Restaurant List এবং Order List দেখানোর জন্য।

---

## ৭. Profile Screen

User Information Section তৈরি করতে।

---

# 🔄 ListTile vs Row

| ListTile             | Row                        |
| -------------------- | -------------------------- |
| Ready-made Layout    | Manual Layout              |
| Material Design      | Custom Layout              |
| Built-in Tap Support | GestureDetector লাগতে পারে |
| কম কোড               | বেশি কোড                   |

---

# 🔄 ListTile vs Card

| ListTile                  | Card                     |
| ------------------------- | ------------------------ |
| List Item                 | Information Container    |
| ছোট তথ্য দেখানোর জন্য     | বড় Content দেখানোর জন্য |
| সাধারণত ListView-এর ভিতরে | যেকোনো Layout-এ          |

---

# 💡 Best Practices

✅ `ListView`-এর সাথে ব্যবহার করো।

✅ `Divider` ব্যবহার করে List Item আলাদা করো।

✅ Profile Image-এর জন্য `CircleAvatar` ব্যবহার করো।

✅ Setting Screen-এ `Switch`, `Checkbox` বা `Icon` Trailing হিসেবে ব্যবহার করো।

✅ Card-এর ভিতরে ListTile ব্যবহার করলে UI আরও সুন্দর হয়।

---

# ⚠️ সাধারণ ভুল

❌ ListTile-এর ভিতরে অনেক বেশি Widget যোগ করা।

❌ Title খুব বড় করা।

❌ Padding না বুঝে পরিবর্তন করা।

❌ `Row` দিয়ে ListTile-এর কাজ করার চেষ্টা করা।

---

# 🚀 Performance Tips

- বড় List-এর জন্য `ListView.builder()` ব্যবহার করো।
- Static List-এর জন্য `ListView()` ব্যবহার করা যায়।
- হাজার হাজার Item থাকলে Lazy Loading ব্যবহার করো।
- অপ্রয়োজনীয় Widget Nesting এড়িয়ে চল।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. ListTile Widget কী?

ListTile হলো Material Design-এর একটি Ready-made Widget যা একটি Standard List Item তৈরি করে।

---

### ২. ListTile-এর সবচেয়ে গুরুত্বপূর্ণ Property কোনগুলো?

- leading
- title
- subtitle
- trailing
- onTap

---

### ৩. ListTile কোথায় ব্যবহার হয়?

Settings, Chat List, Profile, Contact List, Email List এবং Drawer Menu-তে।

---

### ৪. ListTile এবং Row-এর মধ্যে পার্থক্য কী?

ListTile একটি Ready-made Material Design Layout, কিন্তু Row শুধুমাত্র Horizontal Layout তৈরি করে।

---

### ৫. বড় List-এর জন্য কোন Widget ব্যবহার করা উচিত?

`ListView.builder()`

---

# 🚀 Quick Revision

✅ Material Design Widget

✅ Ready-made List Item

✅ Leading, Title, Subtitle, Trailing Support

✅ Built-in Tap Event

✅ Settings ও Chat App-এ ব্যাপক ব্যবহার

---

# 🏁 সারসংক্ষেপ

**ListTile Widget** Flutter-এর সবচেয়ে বেশি ব্যবহৃত Material Design Widgetগুলোর একটি। এটি কম কোডে সুন্দর, Standard এবং Professional List Item তৈরি করতে সাহায্য করে।

প্রায় সব ধরনের Flutter Application—যেমন **Settings**, **Chat**, **Banking**, **E-commerce**, **Email**, **Profile** এবং **Notification Screen**-এ ListTile Widget ব্যাপকভাবে ব্যবহৃত হয়।

---

### 👨‍💻 লেখক

**MD Tuhin Hossain**

Flutter Widget Learning Series 🚀
