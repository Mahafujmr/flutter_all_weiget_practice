# Flutter Container Widget - গুরুত্বপূর্ণ টপিকস 📦

এই নোটে Flutter-এর **Container Widget** এর সবচেয়ে গুরুত্বপূর্ণ বিষয়গুলো সংক্ষেপে রাখা হয়েছে, যাতে পরে পড়াশোনা বা রেফারেন্সের জন্য ব্যবহার করতে পারো।

---

## ১. Container Widget কি?

* **Container** হলো Flutter-এর একটি **versatile layout widget**, যা **size, padding, margin, decoration, color, border, shape** ইত্যাদি control করতে দেয়।
* Container সাধারণত **child widget কে wrap** করে, layout ও styling control করার জন্য ব্যবহার করা হয়।

---

## ২. গুরুত্বপূর্ণ Properties

| Property       | ব্যাখ্যা                                                                          |
| -------------- | --------------------------------------------------------------------------------- |
| **child**      | Container-এর ভিতরের widget                                                        |
| **width**      | Container-এর width নির্ধারণ করে                                                   |
| **height**     | Container-এর height নির্ধারণ করে                                                  |
| **padding**    | ভিতরের child widget-এর সাথে space দেয়                                             |
| **margin**     | Container-এর বাইরের space control করে                                             |
| **color**      | Container-এর background color                                                     |
| **decoration** | BoxDecoration ব্যবহার করে color, border, shadow, shape, image ইত্যাদি control করে |

---

## ৩. Decoration Property & Sub-properties

### BoxDecoration Examples

| Property         | ব্যাখ্যা                              | Example                                                                          |
| ---------------- | ------------------------------------- | -------------------------------------------------------------------------------- |
| **color**        | Background color দেয়                  | `color: Colors.red`                                                              |
| **border**       | Container-এর চারপাশে border দেয়       | `border: Border.all(color: Colors.black, width: 2)`                              |
| **borderRadius** | Rounded corners দেয়                   | `borderRadius: BorderRadius.circular(10)`                                        |
| **boxShadow**    | Shadow effect দেয়                     | `boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]`                      |
| **shape**        | Shape control করে (rectangle, circle) | `shape: BoxShape.circle`                                                         |
| **image**        | Background image দেয়                  | `image: DecorationImage(image: AssetImage('assets/pic.png'), fit: BoxFit.cover)` |

---

## ৪. Use Cases

1. **Colored Box**

```dart
Container(
  width: 100,
  height: 100,
  color: Colors.red,
)
```

2. **Rounded Rectangle with Border & Shadow**

```dart
Container(
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.black, width: 2),
    borderRadius: BorderRadius.circular(12),
    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
  ),
)
```

3. **Circular Image**

```dart
Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      image: AssetImage('assets/profile.png'),
      fit: BoxFit.cover,
    ),
  ),
)
```

---
---

## ১. child

* **কী:** Container-এর ভিতরে থাকা একমাত্র widget।
* **কেন:** Container নিজে content দেখায় না, child দিয়ে দেখায়।
* **Use Case:** Text, Image, Icon বা অন্য widget display করার জন্য।

---

## ২. width

* **কী:** Container-এর horizontal size।
* **কেন:** Container-এর চওড়া নির্দিষ্ট করতে ব্যবহৃত হয়।
* **Use Case:** Fixed width box তৈরি করার জন্য।

---

## ৩. height

* **কী:** Container-এর vertical size।
* **কেন:** Container-এর উচ্চতা নির্দিষ্ট করতে ব্যবহৃত হয়।
* **Use Case:** Fixed height box তৈরি করার জন্য।

---

## ৪. padding

* **কী:** Child widget এবং Container-এর প্রান্তের মধ্যে space।
* **কেন:** Child কে Container-এর edge থেকে দূরে রাখতে।
* **Use Case:** Text, Image বা Icon-এর চারপাশে space দিতে।

---

## ৫. margin

* **কী:** Container-এর বাইরের space।
* **কেন:** Container অন্যান্য widget থেকে দূরে রাখতে।
* **Use Case:** Layout spacing control বা screen design ঠিক রাখতে।

---

## ৬. color

* **কী:** Container-এর background color।
* **কেন:** Container কে দৃশ্যমান এবং সুন্দর করতে।
* **Use Case:** Colored box বা background হিসেবে ব্যবহার।

---

## ৭. decoration

* **কী:** Advanced styling control করার জন্য BoxDecoration ব্যবহার করা হয়।
* **কেন:** Container কে আরও attractive ও custom design দিতে।
* **Important Sub-properties:**

  * **border:** Container-এর চারপাশে সীমারেখা যোগ করে।
  * **borderRadius:** Rounded corners তৈরি করে।
  * **boxShadow:** Shadow effect দেয়, depth বা elevation look তৈরি করতে।
  * **shape:** Container-এর shape নির্ধারণ করে (rectangle বা circle)।
  * **image:** Container-এর background image দেয়।
* **Use Case:** Cards, profile images, stylish boxes, buttons তৈরি করার জন্য।

---

## ৮. key points

* **Decoration vs Color:** Decoration ব্যবহার করলে color BoxDecoration-এর ভিতরে লিখতে হয়।
* **Child:** Child ছাড়া Container size, color বা decoration হিসেবে ব্যবহার করা যায়।
* **Versatile:** Container হলো layout + styling দুইয়ের জন্য powerful widget।

---


## ৫. Key Notes

* Decoration এবং color একসাথে ব্যবহার করতে হলে, **color কে BoxDecoration এর ভিতরে লিখতে হয়**, Container color property direct ব্যবহার করলে conflict হতে পারে।
* BoxShadow এবং BorderRadius ব্যবহার করলে BoxDecoration must be used।
* Container হলো **layout + styling** দুইয়ের জন্য versatile।

---

এই Markdown note তোমার **Container Widget-এর quick reference** হিসেবে perfect VS Code-এ রাখার জন্য।
