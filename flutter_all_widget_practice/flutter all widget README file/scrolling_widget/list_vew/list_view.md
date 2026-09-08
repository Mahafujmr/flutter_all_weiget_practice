# 📋 Flutter ListView Widget — Professional README Note (বাংলা)

---

## ListView Widget কী?

`ListView` হলো Flutter-এর একটি **Scrollable Widget**, যার মাধ্যমে একাধিক Widget-কে **Vertical** অথবা **Horizontal** দিক দিয়ে তালিকা (List) আকারে দেখানো যায়।

যখন Screen-এর Content একটি নির্দিষ্ট উচ্চতা বা প্রস্থের বেশি হয়ে যায়, তখন `ListView` স্বয়ংক্রিয়ভাবে Scroll করার সুবিধা প্রদান করে।

Flutter Application-এ **News Feed, Chat List, Contact List, Product List, Settings Page, Notification Screen, Comment Section** ইত্যাদি তৈরিতে `ListView` সবচেয়ে বেশি ব্যবহৃত হয়।

---

### কেন ListView ব্যবহার করা হয়?

যদি অনেকগুলো Widget একসাথে দেখাতে হয় এবং Screen-এর সীমার বাইরে চলে যায়, তাহলে সাধারণ `Column` Overflow Error দেখাবে।

এই সমস্যার সমাধান করার জন্য `ListView` ব্যবহার করা হয়।

### উদাহরণ

❌ Column

```
Column(
  children: [
    Text("Item 1"),
    Text("Item 2"),
    ...
    Text("Item 100"),
  ],
)
```

Result:

```
Bottom Overflowed by XX Pixels
```

---

✅ ListView

```
ListView(
  children: [
    Text("Item 1"),
    Text("Item 2"),
    ...
    Text("Item 100"),
  ],
)
```

Result:

```
Smooth Scrolling List
```

---

### ListView-এর বৈশিষ্ট্য

* Scrollable Widget
* Vertical ও Horizontal উভয় Direction Support করে
* Lazy Loading Support করে (Builder Version)
* Memory Efficient
* Dynamic Data Support করে
* Performance অনেক ভালো
* Large Data Handle করতে পারে

---

### ListView Constructor সমূহ

Flutter-এ মোট কয়েক ধরনের ListView Constructor রয়েছে।

## ১. ListView()

সব Widget আগে থেকেই তৈরি থাকে।

```
ListView(
  children: [],
)
```

### ব্যবহার করুন যখন

* Item সংখ্যা কম
* Static UI
* Fixed Widget

---

## ২. ListView.builder()

সবচেয়ে বেশি ব্যবহৃত Constructor।

Widget আগে থেকে তৈরি হয় না।

যখন যতটুকু Screen-এ দরকার হয় তখন ততটুকু Widget তৈরি হয়।

```
ListView.builder(
  itemCount: 100,
  itemBuilder: (context,index){
    return ListTile();
  },
)
```

### সুবিধা

* Fast
* Memory কম ব্যবহার করে
* Large Data-এর জন্য Best

---

## ৩. ListView.separated()

দুইটি Item-এর মাঝে Divider বা Space যোগ করার জন্য।

```
ListView.separated(
  itemBuilder: ...
  separatorBuilder: ...
  itemCount: ...
)
```

### ব্যবহার

* Chat Screen
* Contact List
* Product List

---

## ৪. ListView.custom()

যখন নিজের Sliver Delegate ব্যবহার করতে হবে।

Advanced ক্ষেত্রে ব্যবহার করা হয়।

---

### ListView Constructor Comparison

| Constructor          | ব্যবহার              |
| -------------------- | -------------------- |
| ListView()           | ছোট Static List      |
| ListView.builder()   | বড় Dynamic List     |
| ListView.separated() | Divider সহ List      |
| ListView.custom()    | Advanced Custom List |

---

### গুরুত্বপূর্ণ Properties

---

## children

List-এর Widget গুলো রাখে।

```
children: [
 Text("A"),
 Text("B"),
]
```

Default

```
[]
```

---

## scrollDirection

Scroll কোন Direction-এ হবে।

Default

```
Axis.vertical
```

Example

```
scrollDirection: Axis.horizontal
```

Options

* Axis.vertical
* Axis.horizontal

---

## reverse

উল্টো Direction থেকে Scroll শুরু হবে।

Default

```
false
```

Example

```
reverse: true
```

---

## controller

Scroll Control করার জন্য ব্যবহৃত হয়।

```
controller: scrollController
```

ব্যবহার

* Scroll Position জানা
* Scroll To Top
* Infinite Scroll

---

## primary

Primary Scroll View হবে কিনা।

Default

```
true
```

---

## physics

Scrolling Behavior নির্ধারণ করে।

Example

```
physics: BouncingScrollPhysics()
```

Common Physics

* AlwaysScrollableScrollPhysics()
* NeverScrollableScrollPhysics()
* ClampingScrollPhysics()
* BouncingScrollPhysics()

---

## shrinkWrap

List নিজের Height অনুযায়ী Size নিবে কিনা।

Default

```
false
```

Example

```
shrinkWrap: true
```

ব্যবহার

Nested ListView-এর ক্ষেত্রে।

---

## padding

List-এর চারপাশে Space দেয়।

```
padding: EdgeInsets.all(20)
```

---

## itemCount

মোট Item সংখ্যা।

Builder Version-এ ব্যবহৃত হয়।

```
itemCount: 20
```

---

## itemBuilder

প্রতিটি Item তৈরি করে।

```
itemBuilder: (context,index){
 return ListTile();
}
```

---

## separatorBuilder

Separated Version-এ Item-এর মাঝে Widget দেয়।

```
separatorBuilder: (context,index){
 return Divider();
}
```

---

## cacheExtent

Screen-এর বাইরে কতটুকু Widget আগে থেকেই Render হবে।

Performance Optimize করতে সাহায্য করে।

```
cacheExtent: 500
```

---

## keyboardDismissBehavior

Keyboard Scroll করলে Hide হবে কিনা।

```
keyboardDismissBehavior:
ScrollViewKeyboardDismissBehavior.onDrag
```

---

## restorationId

Scroll Position Restore করতে ব্যবহৃত হয়।

```
restorationId: "home_list"
```

---

## clipBehavior

Overflow Content Clip করবে কিনা।

Default

```
Clip.hardEdge
```

---

### ScrollDirection Example

Vertical

```
ListView(
 scrollDirection: Axis.vertical,
)
```

Horizontal

```
ListView(
 scrollDirection: Axis.horizontal,
)
```

---

### ListView বনাম Column

| Feature          | ListView | Column     |
| ---------------- | -------- | ---------- |
| Scroll           | ✅        | ❌          |
| Large Data       | ✅        | ❌          |
| Performance      | High     | Low        |
| Lazy Loading     | ✅        | ❌          |
| Overflow Problem | ❌        | ✅ হতে পারে |

---

### কখন কোনটি ব্যবহার করবেন?

### ListView()

✔ Static List

✔ কম Item

---

### ListView.builder()

✔ API Data

✔ Database Data

✔ Firebase Data

✔ Large List

✔ Production App

---

### ListView.separated()

✔ Divider

✔ Gap

✔ Chat Screen

✔ Contact List

---

### ListView.custom()

✔ Custom Delegate

✔ Advanced Optimization

---

### বাস্তব Project-এ ListView-এর ব্যবহার

* 📰 News Feed
* 💬 Chat Application
* 🛒 E-commerce Product List
* 👥 Contact List
* 🔔 Notification Screen
* 📝 To-Do App
* 🎵 Music Playlist
* 📦 Order History
* ❤️ Wishlist
* 📖 Blog List
* 🎥 Video Feed
* 💳 Transaction History

---

### Performance Tips

✅ বড় List-এর জন্য সবসময় `ListView.builder()` ব্যবহার করুন।

✅ `ListView()` শুধুমাত্র ছোট Static List-এর জন্য ব্যবহার করুন।

✅ Nested `ListView` ব্যবহার করলে `shrinkWrap: true` এবং প্রয়োজনে `physics: NeverScrollableScrollPhysics()` ব্যবহার করুন।

✅ অপ্রয়োজনীয় Widget Rebuild এড়িয়ে চলুন।

✅ Scroll নিয়ন্ত্রণের প্রয়োজন হলে `ScrollController` ব্যবহার করুন।

---

### সাধারণ ভুল (Common Mistakes)

### ❌ বড় Data-এর জন্য `ListView()` ব্যবহার করা

এতে সব Item একসাথে Render হয়, ফলে Memory Usage বেড়ে যায় এবং Performance কমে যায়।

---

### ❌ Nested ListView-তে `shrinkWrap` ব্যবহার না করা

ফলাফল:

```
Vertical viewport was given unbounded height.
```

---

### ❌ `itemCount` না দেওয়া (Builder-এ)

এতে অপ্রয়োজনীয় Item তৈরি হতে পারে বা অসীম Scroll-এর সমস্যা দেখা দিতে পারে।

---

### ❌ Scroll Physics ভুলভাবে সেট করা

Nested Scroll-এর ক্ষেত্রে Scroll Conflict হতে পারে।

---

### Interview Questions

### ১. ListView কী?

Scrollable Widget যা একাধিক Widget-কে তালিকা আকারে প্রদর্শন করে।

---

### ২. ListView এবং Column-এর মধ্যে পার্থক্য কী?

`ListView` Scroll Support করে এবং বড় Data Efficiently Handle করতে পারে, কিন্তু `Column` Scroll Support করে না এবং Content বেশি হলে Overflow হতে পারে।

---

### ৩. `ListView.builder()` কেন বেশি ব্যবহৃত হয়?

কারণ এটি **Lazy Loading** ব্যবহার করে। শুধুমাত্র Screen-এ দৃশ্যমান Item-গুলো তৈরি হয়, ফলে Memory কম ব্যবহার হয় এবং Performance অনেক ভালো থাকে।

---

### ৪. `shrinkWrap` কখন ব্যবহার করবেন?

যখন `ListView` অন্য কোনো Scrollable Widget (যেমন `SingleChildScrollView` বা আরেকটি `ListView`) এর ভিতরে থাকে এবং নিজের Content অনুযায়ী Height নিতে হয়।

---

### ৫. `ListView.separated()` এর সুবিধা কী?

প্রতিটি Item-এর মাঝে সহজে `Divider`, `SizedBox` বা অন্য কোনো Separator Widget যোগ করা যায়।

---

### Best Practice

* ✔ ছোট Static List → `ListView()`
* ✔ বড় বা Dynamic Data → `ListView.builder()`
* ✔ Divider বা Gap প্রয়োজন → `ListView.separated()`
* ✔ Custom Rendering → `ListView.custom()`
* ✔ Performance-এর জন্য Lazy Loading-ভিত্তিক Constructor ব্যবহার করুন।
* ✔ Nested Scroll ব্যবহারে `shrinkWrap` ও `physics` সঠিকভাবে কনফিগার করুন।

---

### উপসংহার

`ListView` হলো Flutter-এর সবচেয়ে গুরুত্বপূর্ণ Scrollable Widget-গুলোর একটি। ছোট Static List থেকে শুরু করে হাজার হাজার Dynamic Data দক্ষতার সঙ্গে প্রদর্শনের জন্য এটি ব্যবহৃত হয়। বাস্তব প্রজেক্টে সর্বোচ্চ Performance এবং Memory Efficiency নিশ্চিত করতে সাধারণত `ListView.builder()`-ই প্রথম পছন্দ। একজন Flutter Developer হিসেবে `ListView`-এর বিভিন্ন Constructor, গুরুত্বপূর্ণ Properties এবং Performance Optimization কৌশল ভালোভাবে আয়ত্ত করা অত্যন্ত জরুরি।
