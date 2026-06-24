# 🔄 Flutter Wrap Widget

Flutter-এর **Wrap Widget** সম্পর্কে সহজ ও বিস্তারিত নোট।

---

# 📖 পরিচিতি

**Wrap Widget** হলো Flutter-এর একটি Layout Widget যা একাধিক Widget-কে অনুভূমিক (Horizontal) অথবা উল্লম্ব (Vertical)ভাবে সাজায়।

যদি একটি লাইনে পর্যাপ্ত জায়গা না থাকে, তাহলে Wrap Widget স্বয়ংক্রিয়ভাবে পরবর্তী লাইনে চলে যায়।

অর্থাৎ, এটি Responsive UI তৈরিতে খুবই গুরুত্বপূর্ণ।

---

# 🎯 কেন Wrap Widget ব্যবহার করা হয়?

✅ Responsive Layout তৈরি করতে।

✅ Overflow সমস্যা এড়াতে।

✅ একাধিক Button, Chip বা Tag প্রদর্শন করতে।

✅ স্বয়ংক্রিয়ভাবে নতুন লাইনে Widget পাঠাতে।

✅ Dynamic Data দেখানোর জন্য।

---

# ⚙️ Constructor

```dart
Wrap(
  children: [],
)
```

---

# 🔑 গুরুত্বপূর্ণ Properties

| Property             | কাজ                                |
| -------------------- | ---------------------------------- |
| `children`           | Wrap-এর ভিতরের Widget-এর তালিকা    |
| `direction`          | Widget গুলো কোন দিকে সাজানো হবে    |
| `spacing`            | Widget গুলোর মাঝের অনুভূমিক দূরত্ব |
| `runSpacing`         | একাধিক লাইনের মাঝের দূরত্ব         |
| `alignment`          | একই লাইনের Widget গুলোর অবস্থান    |
| `runAlignment`       | একাধিক লাইনের অবস্থান              |
| `crossAxisAlignment` | Vertical Alignment নির্ধারণ করে    |
| `clipBehavior`       | অতিরিক্ত অংশ কাটার নিয়ম           |

---

# 🎯 কোথায় ব্যবহার হয়?

* Category Button ডিজাইনে
* Skill Tag দেখাতে
* Filter Chip তৈরিতে
* Product Label দেখাতে
* Responsive Grid তৈরি করতে
* Dynamic Button Group তৈরিতে
* Hashtag বা Tag System তৈরিতে

---

# 🔄 Wrap এবং Row এর পার্থক্য

| Wrap                          | Row                       |
| ----------------------------- | ------------------------- |
| জায়গা কম হলে পরের লাইনে যায় | সব Widget একই লাইনে থাকে  |
| Responsive                    | Overflow হতে পারে         |
| Dynamic Data-এর জন্য ভালো     | Fixed Layout-এর জন্য ভালো |
| একাধিক লাইন সমর্থন করে        | শুধুমাত্র একটি লাইন       |

---

# 💡 বাস্তব উদাহরণ

ধরো তোমার কাছে ১০টি Category Button আছে।

যদি **Row** ব্যবহার করো তাহলে সবগুলো একই লাইনে থাকার চেষ্টা করবে এবং Overflow Error হতে পারে।

কিন্তু **Wrap** ব্যবহার করলে জায়গা শেষ হয়ে গেলে বাকি Button গুলো স্বয়ংক্রিয়ভাবে নিচের লাইনে চলে যাবে।

---

# ✅ সুবিধা

* Responsive UI তৈরি করা যায়।
* Overflow সমস্যা কমে।
* Dynamic Data সহজে দেখানো যায়।
* Layout আরও সুন্দর হয়।
* বিভিন্ন স্ক্রিন সাইজে ভালো কাজ করে।

---

# ⚠️ সাধারণ ভুল

❌ অপ্রয়োজনীয়ভাবে Row-এর পরিবর্তে Wrap ব্যবহার করা।

❌ `spacing` এবং `runSpacing` ব্যবহার না করা।

❌ খুব অল্প Widget-এর জন্য Wrap ব্যবহার করা।

---

# 🔗 সম্পর্কিত Widget

| Widget     | কাজ                    |
| ---------- | ---------------------- |
| `Row`      | অনুভূমিক Layout        |
| `Column`   | উল্লম্ব Layout         |
| `Expanded` | বাকি জায়গা দখল করে    |
| `Flexible` | Flexible Space দেয়    |
| `Flow`     | Advanced Layout তৈরিতে |

---

# 🏢 বাস্তব প্রজেক্টে ব্যবহার

* E-commerce App
* Food Delivery App
* Skill Section
* Search Filter
* Social Media Tag
* Dashboard UI
* Product Category

---

# 📝 সারসংক্ষেপ

**Wrap Widget** Flutter-এর একটি গুরুত্বপূর্ণ Layout Widget যা একাধিক Widget-কে সুন্দরভাবে সাজায় এবং জায়গা না থাকলে স্বয়ংক্রিয়ভাবে নতুন লাইনে নিয়ে যায়।

Responsive UI তৈরির জন্য এটি অত্যন্ত গুরুত্বপূর্ণ।

---

# 🚀 Quick Revision

✅ Multiple Widget সাজায়।

✅ জায়গা না থাকলে নতুন লাইনে যায়।

✅ Overflow সমস্যা কমায়।

✅ Responsive Design তৈরি করে।

✅ Button, Chip এবং Tag তৈরিতে বেশি ব্যবহৃত হয়।

---

### 👨‍💻 লেখক

**MD Tuhin Hossain**

Flutter Widget Learning Series 🚀
