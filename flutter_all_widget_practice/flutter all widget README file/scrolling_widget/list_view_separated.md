# 📑 Flutter ListView.separated()

Flutter-এর **ListView.separated()** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**ListView.separated()** হলো Flutter-এর একটি **Scrollable List Widget** যা প্রতিটি List Item-এর মাঝে স্বয়ংক্রিয়ভাবে **Separator Widget** (যেমন `Divider`, `SizedBox` ইত্যাদি) যোগ করার সুবিধা দেয়।

যেখানে `ListView.builder()` শুধুমাত্র List Item তৈরি করে, সেখানে `ListView.separated()` প্রতিটি Item-এর পাশাপাশি তাদের মাঝখানে একটি Separator-ও তৈরি করে।

এটি বিশেষভাবে **Settings Screen**, **Chat List**, **Contact List**, **Notification List** এবং **Menu Screen**-এর মতো UI তৈরিতে খুবই কার্যকর।

---

# 🎯 কেন ListView.separated() ব্যবহার করা হয়?

✅ প্রতিটি Item-এর মাঝে Divider বা Space যোগ করতে।

✅ Cleaner এবং Professional UI তৈরি করতে।

✅ Manual Divider লেখার প্রয়োজন কমাতে।

✅ বড় List-এর জন্য ভালো Performance পেতে।

✅ Code আরও Readable এবং Maintainable করতে।

---

# ⚙️ Constructor

```dart
ListView.separated(
  itemCount: itemCount,
  itemBuilder: (context, index) {
    return Widget();
  },
  separatorBuilder: (context, index) {
    return Divider();
  },
)
```

---

# 🏗️ এটি কীভাবে কাজ করে?

`ListView.separated()` মূলত দুটি Builder ব্যবহার করে—

* **itemBuilder** → প্রতিটি List Item তৈরি করে।
* **separatorBuilder** → প্রতিটি Item-এর মাঝখানে Separator তৈরি করে।

> Separator শুধুমাত্র Item-এর মাঝখানে যোগ হয়, List-এর শুরু বা শেষে নয়।

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property                  | বর্ণনা                                            |
| ------------------------- | ------------------------------------------------- |
| `itemBuilder`             | প্রতিটি List Item তৈরি করে।                       |
| `separatorBuilder`        | প্রতিটি Item-এর মাঝখানে Separator তৈরি করে।       |
| `itemCount`               | মোট কতটি Item থাকবে।                              |
| `scrollDirection`         | Vertical অথবা Horizontal Scroll নির্ধারণ করে।     |
| `padding`                 | List-এর চারপাশে Padding দেয়।                     |
| `physics`                 | Scroll Behavior নিয়ন্ত্রণ করে।                   |
| `reverse`                 | List উল্টোভাবে প্রদর্শন করে।                      |
| `controller`              | Scroll Controller যুক্ত করে।                      |
| `shrinkWrap`              | Parent অনুযায়ী Height নির্ধারণ করে।              |
| `primary`                 | Primary Scroll View হবে কিনা।                     |
| `cacheExtent`             | Screen-এর বাইরে কতটুকু Item আগে থেকেই Build করবে। |
| `keyboardDismissBehavior` | Scroll করলে Keyboard Hide হবে কিনা।               |
| `clipBehavior`            | Child Widget Clip করবে কিনা।                      |

---

# 💻 Basic Example

```dart
ListView.separated(
  itemCount: 5,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text("Item ${index + 1}"),
    );
  },
  separatorBuilder: (context, index) {
    return Divider();
  },
)
```

---

# 💻 Divider-এর পরিবর্তে Space ব্যবহার

```dart
ListView.separated(
  itemCount: 10,
  itemBuilder: (context, index) {
    return Card(
      child: ListTile(
        title: Text("Student ${index + 1}"),
      ),
    );
  },
  separatorBuilder: (context, index) {
    return SizedBox(height: 15);
  },
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

  final List<String> students = const [
    "Rahim",
    "Karim",
    "Hasan",
    "Sakib",
    "Tuhin",
    "Rifat",
    "Mim",
    "Sadia",
    "Nafis",
    "Jannat",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView.separated"),
        ),
        body: ListView.separated(
          itemCount: students.length,

          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text(students[index]),
              subtitle: const Text("Flutter Student"),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          },

          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 1,
            );
          },
        ),
      ),
    );
  }
}
```

---

# 📱 Output

```text
① Rahim                     >

────────────────────────────

② Karim                     >

────────────────────────────

③ Hasan                     >

────────────────────────────

④ Sakib                     >

────────────────────────────
```

প্রতিটি Item-এর মাঝখানে একটি Divider স্বয়ংক্রিয়ভাবে যোগ হবে।

---

# 🎯 কোথায় ব্যবহার হয়?

* Settings Screen
* Profile Screen
* Contact List
* Chat List
* Notification List
* Drawer Menu
* Email Application
* Banking Application
* E-commerce Application
* Order History
* Student List

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. Settings Application

প্রতিটি Setting Option-এর মাঝে Divider দেখানোর জন্য।

---

## ২. WhatsApp / Messenger

Chat List-এর প্রতিটি Chat আলাদা করার জন্য।

---

## ৩. Gmail

Email List-এর মাঝে Separator দেখানোর জন্য।

---

## ৪. Banking App

Transaction History আলাদা করার জন্য।

---

## ৫. E-commerce App

Order History এবং Product List আলাদা দেখানোর জন্য।

---

## ৬. Contact Application

Contact List আরও পরিষ্কারভাবে দেখানোর জন্য।

---

## ৭. Notification Screen

Notification-গুলোর মাঝে Divider যোগ করার জন্য।

---

# 🔄 ListView.builder() vs ListView.separated()

| ListView.builder()         | ListView.separated()              |
| -------------------------- | --------------------------------- |
| শুধুমাত্র Item তৈরি করে    | Item এবং Separator দুটোই তৈরি করে |
| Divider আলাদা যোগ করতে হয় | Built-in Separator Support        |
| সাধারণ List-এর জন্য        | Divider বা Space প্রয়োজন হলে     |
| Code একটু বেশি লাগে        | Code আরও পরিষ্কার হয়             |

---

# 🔄 ListView.separated() vs Column

| ListView.separated()     | Column                     |
| ------------------------ | -------------------------- |
| Scroll করা যায়          | Scroll করা যায় না         |
| Lazy Loading Support     | সব Widget একসাথে Build হয় |
| বড় List-এর জন্য উপযুক্ত | ছোট Layout-এর জন্য উপযুক্ত |

---

# 💡 Best Practices

✅ Divider-এর জন্য `separatorBuilder` ব্যবহার করো।

✅ Space দরকার হলে `SizedBox` ব্যবহার করো।

✅ Dynamic Data-এর জন্য `ListView.separated()` ব্যবহার করো।

✅ বড় List-এর জন্য `itemCount` অবশ্যই নির্ধারণ করো।

✅ List Item হিসেবে `ListTile` বা `Card` ব্যবহার করলে UI আরও সুন্দর দেখায়।

---

# ⚠️ সাধারণ ভুল

❌ `separatorBuilder`-এর ভিতরে Heavy Widget ব্যবহার করা।

❌ `itemCount` ভুল নির্ধারণ করা।

❌ Divider-এর পরিবর্তে প্রতিটি Item-এর ভিতরে Divider যোগ করা।

❌ Nested Scroll-এর সমস্যা বিবেচনা না করা।

❌ ছোট Static List-এর জন্য অপ্রয়োজনীয়ভাবে `ListView.separated()` ব্যবহার করা।

---

# 🚀 Performance Tips

* এটি `ListView.builder()`-এর মতোই Lazy Loading ব্যবহার করে।
* শুধুমাত্র Visible Item এবং Separator Build হয়।
* বড় List-এর জন্য এটি Performance Friendly।
* অপ্রয়োজনীয় Complex Separator ব্যবহার এড়িয়ে চলুন।
* প্রয়োজন হলে `const Divider()` ব্যবহার করুন।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. ListView.separated() কী?

এটি একটি Scrollable List Widget যা প্রতিটি Item-এর মাঝখানে Separator তৈরি করে।

---

### ২. `separatorBuilder` কী?

এটি প্রতিটি List Item-এর মাঝখানে কোন Widget দেখানো হবে তা নির্ধারণ করে।

---

### ৩. কখন ListView.separated() ব্যবহার করা উচিত?

যখন প্রতিটি List Item-এর মাঝে Divider, SizedBox বা অন্য Separator দরকার হয়।

---

### ৪. ListView.builder() এবং ListView.separated()-এর মধ্যে পার্থক্য কী?

`ListView.builder()` শুধুমাত্র Item তৈরি করে, কিন্তু `ListView.separated()` Item-এর পাশাপাশি Separator-ও তৈরি করে।

---

### ৫. এটি কি Lazy Loading Support করে?

হ্যাঁ। এটি `ListView.builder()`-এর মতোই Lazy Loading ব্যবহার করে।

---

# 🚀 Quick Revision

✅ Lazy Loading Support

✅ Built-in Separator

✅ Divider এবং SizedBox সহজে যোগ করা যায়

✅ বড় List-এর জন্য উপযুক্ত

✅ Settings ও Chat App-এ ব্যাপকভাবে ব্যবহৃত হয়

---

# 🏁 সারসংক্ষেপ

**ListView.separated()** Flutter-এর একটি শক্তিশালী এবং Performance Friendly List Widget, যা Dynamic List-এর প্রতিটি Item-এর মাঝে স্বয়ংক্রিয়ভাবে Separator যোগ করতে সাহায্য করে।

যদি আপনার List-এর প্রতিটি Item-এর মধ্যে **Divider**, **Spacing** অথবা অন্য কোনো Separator প্রয়োজন হয়, তাহলে `ListView.builder()`-এর পরিবর্তে `ListView.separated()` ব্যবহার করাই সবচেয়ে ভালো পদ্ধতি। এটি Code-কে আরও পরিষ্কার, Maintainable এবং Professional করে তোলে।

---

### 👨‍💻 লেখক

**MD Tuhin Hossain**

Flutter Widget Learning Series 🚀
