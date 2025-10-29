# Flutter CircleAvatar Widget

## ১. CircleAvatar Widget কি?

**CircleAvatar** হলো Flutter এর একটা built-in widget যেটা গোল আকারে content দেখায়। এটা মূলত user এর profile picture, avatar, বা icon দেখানোর জন্য ব্যবহার হয়। এটা Material Design এর standard follow করে।

---

## ২. কোথায় কোথায় ব্যবহার হয়?

CircleAvatar widget নিচের জায়গায় ব্যবহার হয়:

- **User Profile Picture** - App এর profile section এ
- **Contact List** - Phone এর contact list এর মতো
- **Chat Application** - Message list এ sender/receiver icon
- **Comment Section** - Blog বা social media post এর comment এ
- **App Bar** - উপরের ডান কোণে user avatar
- **List Items** - ListTile এর leading widget হিসেবে
- **Badge/Icon Display** - গোল আকারে icon দেখানোর জন্য

---

## ৩. সব Properties গুলো

CircleAvatar widget এর প্রধান properties:

- **child** - Avatar এর ভিতরে যেকোনো widget রাখা যায়
- **backgroundColor** - Avatar এর background color
- **backgroundImage** - Image দিয়ে background set করা
- **foregroundColor** - Child widget এর color
- **foregroundImage** - Image দিয়ে foreground set করা
- **radius** - Avatar এর size (default: 20)
- **minRadius** - Minimum size
- **maxRadius** - Maximum size
- **onBackgroundImageError** - Background image load error handle করা
- **onForegroundImageError** - Foreground image load error handle করা

---

## ৪. Properties Table

| Property | Type | Description | Default Value |
|----------|------|-------------|---------------|
| **child** | Widget? | Avatar এর ভিতরে widget (যেমন: Text, Icon) | null |
| **backgroundColor** | Color? | Background এর রং | ThemeData.primaryColorLight |
| **backgroundImage** | ImageProvider? | Background এ image দেখানো | null |
| **foregroundColor** | Color? | Child widget এর color | ThemeData.primaryColorDark |
| **foregroundImage** | ImageProvider? | Foreground এ image দেখানো | null |
| **radius** | double? | Avatar এর size নির্ধারণ করে | 20.0 |
| **minRadius** | double? | সবচেয়ে ছোট size | 0.0 |
| **maxRadius** | double? | সবচেয়ে বড় size | double.infinity |
| **onBackgroundImageError** | ImageErrorListener? | Background image error callback | null |
| **onForegroundImageError** | ImageErrorListener? | Foreground image error callback | null |

---

## ৫. ছোট ছোট Examples

### 🎯 Radius বুঝার সহজ উপায়

#### Radius আসলে কি?

একটা গোল বৃত্তের **মাঝখান থেকে কিনারা পর্যন্ত** দূরত্বকে radius বলে।

**উদাহরণ দিয়ে বুঝি:**

কল্পনা করো একটা গোল পিৎজা আছে। পিৎজার **ঠিক মাঝখান থেকে** শুরু করে **যেকোনো পাশের কিনারা** পর্যন্ত যদি একটা লাইন টানো, সেই লাইনের দৈর্ঘ্যই হলো **radius**।

CircleAvatar এ radius একই ভাবে কাজ করে:
```
        কিনারা
          ↑
          |
    [মাঝখান] ← এই দূরত্ব = radius
          |
          ↓
        কিনারা
```

#### সহজ হিসাব:

- যদি `radius: 20` দাও, মানে মাঝখান থেকে ডানে 20 pixel + বামে 20 pixel = **মোট 40 pixel চওড়া**
- যদি `radius: 30` দাও, মানে 30 + 30 = **60 pixel চওড়া ও উঁচু**
- যদি `radius: 50` দাও, মানে 50 + 50 = **100 pixel চওড়া ও উঁচু**

**মনে রাখার সূত্র:**  
```
Avatar এর আসল Size = radius × 2
```

#### ছোট থেকে বড় - তুলনা দেখো:

```dart
// খুব ছোট - WhatsApp group icon এর মতো
CircleAvatar(radius: 15, child: Text('XS')) // 30px × 30px

// ছোট - Contact list এর মতো
CircleAvatar(radius: 20, child: Text('S'))  // 40px × 40px

// মাঝারি - Profile page এর মতো
CircleAvatar(radius: 30, child: Text('M'))  // 60px × 60px

// বড় - Detail page এর মতো
CircleAvatar(radius: 50, child: Text('L'))  // 100px × 100px

// অনেক বড় - Full screen profile এর মতো
CircleAvatar(radius: 80, child: Text('XL')) // 160px × 160px
```

#### 💡 Pro Tips:
- **Default radius = 20** (যদি কিছু না দাও)
- Mobile screen এ সাধারণত **radius: 20-30** বেশি use হয়
- Profile page এ **radius: 40-60** ভালো লাগে
- খুব ছোট icon এর জন্য **radius: 12-15** perfect

---

## ৬. Examples

### Example ১: Simple Text Avatar
```dart
CircleAvatar(
  child: Text('A'),
)
```

### Example ২: Custom Size ও Color
```dart
CircleAvatar(
  radius: 30,
  backgroundColor: Colors.blue,
  child: Text('রহিম', style: TextStyle(color: Colors.white)),
)
```

### Example ৩: Icon দিয়ে
```dart
CircleAvatar(
  radius: 25,
  backgroundColor: Colors.green,
  child: Icon(Icons.person, color: Colors.white),
)
```

### Example ৪: Network Image
```dart
CircleAvatar(
  radius: 40,
  backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
)
```

### Example ৫: Asset Image
```dart
CircleAvatar(
  radius: 35,
  backgroundImage: AssetImage('assets/profile.png'),
)
```

### Example ৬: Min ও Max Radius
```dart
CircleAvatar(
  minRadius: 20,
  maxRadius: 50,
  child: Text('XL'),
)
```

### Example ৭: Foreground + Background Image
```dart
CircleAvatar(
  radius: 40,
  backgroundImage: NetworkImage('https://example.com/bg.jpg'),
  foregroundImage: NetworkImage('https://example.com/fg.png'),
)
```

### Example ৮: ListTile এ ব্যবহার
```dart
ListTile(
  leading: CircleAvatar(
    backgroundColor: Colors.purple,
    child: Icon(Icons.phone),
  ),
  title: Text('করিম'),
  subtitle: Text('01711111111'),
)
```

---

## Tips:

- **radius** না দিলে default size 20 হবে
- **child** আর **backgroundImage** দুইটা একসাথে use করলে image টা দেখাবে
- Network image use করলে **CachedNetworkImage** package ভালো performance দেয়
- Text initial show করার জন্য **child: Text()** সবচেয়ে common use