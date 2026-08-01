# 📜 Flutter ListView.builder()

Flutter-এর **ListView.builder()** সম্পর্কে সহজ, বিস্তারিত এবং প্রফেশনাল নোট।

---

# 📖 পরিচিতি

**ListView.builder()** হলো Flutter-এর একটি **Lazy Loading List Widget**, যা শুধুমাত্র স্ক্রিনে দৃশ্যমান (Visible) Item-গুলো তৈরি (Build) করে।

সাধারণ `ListView()`-এর মতো এটি শুরুতেই সব Item তৈরি করে না। বরং ব্যবহারকারী Scroll করার সময় প্রয়োজন অনুযায়ী নতুন Item তৈরি করে।

এই কারণে `ListView.builder()` বড় List-এর জন্য অনেক বেশি **Fast**, **Memory Efficient** এবং **Performance Friendly**।

---

# 🎯 কেন ListView.builder() ব্যবহার করা হয়?

✅ বড় List Efficientভাবে দেখাতে।

✅ Memory Usage কমাতে।

✅ Performance বাড়াতে।

✅ Dynamic Data প্রদর্শন করতে।

✅ API বা Database থেকে আসা Data দেখাতে।

---

# ⚙️ Constructor

```dart
ListView.builder(
  itemCount: itemCount,
  itemBuilder: (context, index) {
    return Widget();
  },
)
```

---

# 🏗️ এটি কীভাবে কাজ করে?

ধরো তোমার কাছে **১০,০০০টি Product** আছে।

- `ListView()` → একসাথে ১০,০০০টি Widget তৈরি করবে।
- `ListView.builder()` → স্ক্রিনে যতগুলো Item দেখা যাচ্ছে, শুধু ততগুলো Widget তৈরি করবে।

যখন User নিচে Scroll করবে, তখন নতুন Item তৈরি হবে এবং উপরের অদৃশ্য Widget প্রয়োজনে Dispose হয়ে যাবে।

এটাকেই **Lazy Loading** বলা হয়।

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property                  | বর্ণনা                                            |
| ------------------------- | ------------------------------------------------- |
| `itemBuilder`             | প্রতিটি Item কীভাবে তৈরি হবে তা নির্ধারণ করে।     |
| `itemCount`               | মোট কতটি Item থাকবে।                              |
| `scrollDirection`         | List Vertical নাকি Horizontal হবে।                |
| `physics`                 | Scroll Behavior নিয়ন্ত্রণ করে।                   |
| `padding`                 | List-এর চারপাশে Padding দেয়।                     |
| `reverse`                 | List উল্টোভাবে প্রদর্শন করে।                      |
| `controller`              | Scroll Controller সংযুক্ত করে।                    |
| `shrinkWrap`              | Parent অনুযায়ী List-এর Size নির্ধারণ করে।        |
| `primary`                 | Primary Scroll View হবে কিনা।                     |
| `cacheExtent`             | Screen-এর বাইরে কতটুকু Item আগে থেকেই Build করবে। |
| `keyboardDismissBehavior` | Keyboard Scroll করলে Hide হবে কিনা।               |
| `clipBehavior`            | Child Widget Clip করবে কিনা।                      |
| `prototypeItem`           | প্রতিটি Item-এর Size অনুমান করতে সাহায্য করে।     |
| `itemExtent`              | প্রতিটি Item-এর Fixed Height নির্ধারণ করে।        |

---

# 💻 Basic Example

```dart
ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text("Item ${index + 1}"),
    );
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
    "Nafis",
    "Rifat",
    "Mim",
    "Sadia",
    "Jannat",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView.builder"),
        ),
        body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Text(students[index]),
                subtitle: const Text("Flutter Student"),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
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
① Rahim        >

② Karim        >

③ Hasan        >

④ Sakib        >

...
```

User Scroll করলে নতুন Item দেখা যাবে।

---

# 🎯 কোথায় ব্যবহার হয়?

- Product List
- Chat List
- Contact List
- News Feed
- Notification List
- Student List
- Employee List
- Order History
- Transaction History
- Settings Menu

---

# 🏢 Real Project-এ কোথায় ব্যবহার হয়?

## ১. E-commerce Application

হাজার হাজার Product প্রদর্শনের জন্য।

---

## ২. WhatsApp / Messenger

Chat List দেখানোর জন্য।

---

## ৩. Facebook / Instagram

News Feed প্রদর্শনের জন্য।

---

## ৪. Gmail

Email List দেখানোর জন্য।

---

## ৫. Banking App

Transaction History দেখানোর জন্য।

---

## ৬. Food Delivery App

Restaurant এবং Order List প্রদর্শনের জন্য।

---

## ৭. Learning App

Course List এবং Lesson List দেখানোর জন্য।

---

# 🔄 ListView vs ListView.builder()

| ListView                 | ListView.builder()            |
| ------------------------ | ----------------------------- |
| সব Item একসাথে Build করে | প্রয়োজন অনুযায়ী Build করে   |
| ছোট List-এর জন্য ভালো    | বড় List-এর জন্য সবচেয়ে ভালো |
| বেশি Memory ব্যবহার করে  | কম Memory ব্যবহার করে         |
| Performance কম হতে পারে  | Performance অনেক ভালো         |

---

# 🔄 ListView.builder() vs ListView.separated()

| ListView.builder()         | ListView.separated()              |
| -------------------------- | --------------------------------- |
| শুধু Item তৈরি করে         | Item-এর সাথে Separator-ও তৈরি করে |
| Divider আলাদা যোগ করতে হয় | SeparatorBuilder ব্যবহার করা যায় |

---

# 💡 Best Practices

✅ বড় List-এর জন্য সবসময় `ListView.builder()` ব্যবহার করো।

✅ `itemCount` অবশ্যই নির্ধারণ করো।

✅ List Item-এর জন্য `ListTile` বা `Card` ব্যবহার করলে UI সুন্দর হয়।

✅ প্রয়োজন হলে `itemExtent` ব্যবহার করে Performance বাড়ানো যায়।

✅ Scroll Control করার জন্য `ScrollController` ব্যবহার করো।

---

# ⚠️ সাধারণ ভুল

❌ ছোট Static List-এর জন্য অপ্রয়োজনীয়ভাবে `ListView.builder()` ব্যবহার করা।

❌ `itemCount` না দেওয়া।

❌ `itemBuilder`-এর ভিতরে ভারী (Heavy) কাজ করা।

❌ Nested `ListView.builder()` ব্যবহার করে Scroll সমস্যা তৈরি করা।

❌ `Column`-এর ভিতরে `ListView.builder()` ব্যবহার করে `shrinkWrap` না দেওয়া।

---

# 🚀 Performance Tips

- হাজার হাজার Item থাকলেও `ListView.builder()` ব্যবহার করো।
- Image থাকলে Lazy Image Loading ব্যবহার করো।
- `const` Widget ব্যবহার করলে Rebuild কম হয়।
- Fixed Height Item হলে `itemExtent` ব্যবহার করো।
- API Data Pagination ব্যবহার করলে আরও ভালো Performance পাওয়া যায়।

---

# 🎤 ইন্টারভিউ প্রশ্ন

### ১. ListView.builder() কী?

এটি একটি Lazy Loading List Widget, যা শুধুমাত্র Visible Item Build করে।

---

### ২. কেন ListView.builder() ব্যবহার করা হয়?

বড় List-এর Performance এবং Memory Optimization-এর জন্য।

---

### ৩. `itemBuilder` কী?

প্রতিটি List Item কীভাবে তৈরি হবে তা নির্ধারণ করে।

---

### ৪. `itemCount` কেন ব্যবহার করা হয়?

মোট কতটি Item তৈরি হবে তা নির্ধারণ করতে।

---

### ৫. ListView() এবং ListView.builder() এর মধ্যে পার্থক্য কী?

`ListView()` সব Item একসাথে তৈরি করে, কিন্তু `ListView.builder()` প্রয়োজন অনুযায়ী Item তৈরি করে।

---

# 🚀 Quick Revision

✅ Lazy Loading

✅ Dynamic List

✅ Memory Efficient

✅ Performance Friendly

✅ API Data-এর জন্য উপযুক্ত

✅ Large List-এর জন্য Best Choice

---

# 🏁 সারসংক্ষেপ

**ListView.builder()** Flutter-এর সবচেয়ে গুরুত্বপূর্ণ List Widgetগুলোর একটি। এটি বড় পরিমাণ Data দক্ষতার সাথে প্রদর্শন করতে সাহায্য করে এবং শুধুমাত্র প্রয়োজনীয় Item তৈরি করে Performance ও Memory Usage উভয়ই উন্নত করে।

বাস্তব প্রজেক্টে **E-commerce**, **Social Media**, **Banking**, **Chat**, **News**, **Learning Platform** এবং **Dashboard**-এর মতো প্রায় সব অ্যাপেই `ListView.builder()` ব্যাপকভাবে ব্যবহৃত হয়।

---

### 👨‍💻 লেখক

**Md Tuhin Hossain**

Flutter Widget Learning Series 🚀
