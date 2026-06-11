# Flutter Scaffold Widget - বিস্তারিত গাইড

## 1. Scaffold Widget কী? (বিস্তারিত ব্যাখ্যা)

**Scaffold** মানে হলো "কাঠামো" বা "ভিত্তি"। Flutter এ Scaffold হলো একটি ready-made layout structure যা Material Design অনুসরণ করে।

### কেন Scaffold দরকার?

একটা ঘর বানাতে যেমন প্রথমে দেয়াল, ছাদ, দরজা, জানালার জায়গা ঠিক করতে হয়, ঠিক তেমনি একটা app screen বানাতে:
- উপরে কী থাকবে (AppBar)
- মাঝখানে কী থাকবে (Body - মূল content)
- নিচে কী থাকবে (Bottom Navigation)
- পাশে কী থাকবে (Drawer - side menu)
- ভাসমান button কোথায় থাকবে (FloatingActionButton)

এই সব কিছু একসাথে organize করার জন্য Scaffold ব্যবহার করা হয়।
## 2️⃣ কোথায় ব্যবহার করবে?

✅ **প্রতিটা নতুন page/screen এ** একটা Scaffold লাগবে

**Examples:**
- Home page → Scaffold চাই ✅
- Settings page → Scaffold চাই ✅
- Profile page → Scaffold চাই ✅
- Login page → Scaffold চাই ✅

---

## 3️⃣ সব Properties (সহজ করে) 

### 🎨 Scaffold এর মূল অংশগুলো:

```
        ┌─────────────────┐
        │    appBar       │ ← উপরে Title bar
        ├─────────────────┤
        │                 │
        │      body       │ ← মাঝে Main content
        │                 │
        ├─────────────────┤
        │ bottomNavBar    │ ← নিচে Navigation
        └─────────────────┘
             
drawer →  [Menu]           ← বাম পাশে menu
                [Menu]  ← endDrawer (ডান পাশে)
                
        (FAB) ← FloatingActionButton (ভাসে)
```

---


### Scaffold ছাড়া কী সমস্যা?

Scaffold ছাড়া আপনাকে manually সব positioning, spacing, overlapping handle করতে হবে যা অনেক জটিল। Scaffold এসব automatically handle করে।

**উদাহরণ:**
```dart
// প্রতিটি Flutter screen এর basic structure
Scaffold(
  appBar: AppBar(...),      // উপরের অংশ
  body: Container(...),      // মাঝের মূল content
  bottomNavigationBar: ...,  // নিচের navigation
)
```

---

## 2. কোথায় কোথায় Use হয়? (বিস্তারিত Use Cases)

### Use Case 1: সাধারণ App Screen
**কখন:** যে কোনো সাধারণ page তৈরি করতে  
**উদাহরণ:** Home page, Profile page, Settings page  
**কেন:** Basic layout structure দরকার

### Use Case 2: Form Page
**কখন:** User থেকে data নিতে হবে  
**উদাহরণ:** Login page, Registration, Contact form  
**কেন:** AppBar এ title এবং body তে form fields রাখতে

### Use Case 3: List/Grid View Pages
**কখন:** অনেক items show করতে হবে  
**উদাহরণ:** Product list, News feed, Gallery  
**কেন:** AppBar + scrollable body + FAB for adding items

### Use Case 4: Navigation Based Apps
**কখন:** Multiple sections এ navigate করতে হবে  
**উদাহরণ:** E-commerce app, Social media  
**কেন:** Drawer menu বা bottom navigation দরকার

### Use Case 5: Dashboard/Analytics
**কখন:** Data visualize করতে হবে  
**উদাহরণ:** Admin panel, Reports  
**কেন:** AppBar + organized body content

### Use Case 6: CRUD Operations
**কখন:** Create, Read, Update, Delete করতে হবে  
**উদাহরণ:** Todo app, Notes app  
**কেন:** FAB দিয়ে quick add, body তে list

---

## 3. সকল Properties - বিস্তারিত ব্যাখ্যা

---

## 4. Properties Table (Clear & Organized)

### Group 1: মূল Content Properties

| Property | Data Type | Default Value | কী করে | কখন Use করবেন |
|----------|-----------|---------------|---------|----------------|
| `body` | `Widget?` | `null` | Screen এর main content area | প্রায় সব সময় - এটাই মূল content |
| `backgroundColor` | `Color?` | `ThemeData.scaffoldBackgroundColor` | পুরো screen এর background color | Background color change করতে |

**বিস্তারিত ব্যাখ্যা:**
- **body**: এটা আপনার screen এর সবচেয়ে গুরুত্বপূর্ণ অংশ। এখানে Text, Image, List, Form যা খুশি রাখতে পারবেন।
- **backgroundColor**: পুরো screen এর রং change করে। body তে যদি Container না থাকে তাহলে এই color দেখা যাবে।

---

### Group 2: Top Area Properties (উপরের অংশ)

| Property | Data Type | Default Value | কী করে | কখন Use করবেন |
|----------|-----------|---------------|---------|----------------|
| `appBar` | `PreferredSizeWidget?` | `null` | Screen এর উপরে title bar | Title, back button, actions button লাগলে |
| `primary` | `bool` | `true` | AppBar কি status bar এর নিচে থাকবে | সাধারণত change করার দরকার নেই |
| `extendBodyBehindAppBar` | `bool` | `false` | Body কি AppBar এর পেছনে extend হবে | Transparent/Glass effect AppBar চাইলে |

**বিস্তারিত ব্যাখ্যা:**
- **appBar**: Screen এর উপরের bar যেখানে app name, back button, search, menu icon থাকে।
- **primary**: `true` থাকলে AppBar status bar (battery, time) এর নিচে থাকবে।
- **extendBodyBehindAppBar**: `true` করলে body content AppBar এর পেছনে চলে যাবে - transparent AppBar এর জন্য দরকার।

---

### Group 3: FloatingActionButton Properties

| Property | Data Type | Default Value | কী করে | কখন Use করবেন |
|----------|-----------|---------------|---------|----------------|
| `floatingActionButton` | `Widget?` | `null` | Screen এ ভাসমান button | Quick action যেমন: Add, Edit, Share |
| `floatingActionButtonLocation` | `FloatingActionButtonLocation?` | `FloatingActionButtonLocation.endFloat` | FAB কোথায় থাকবে | Default right-bottom ছাড়া অন্য জায়গায় চাইলে |

**বিস্তারিত ব্যাখ্যা:**
- **floatingActionButton**: সাধারণত একটা গোল button যা অন্য content এর উপরে float করে। Add, Create, Edit এর জন্য ব্যবহার হয়।
- **floatingActionButtonLocation**: Options: `centerFloat`, `endFloat`, `startFloat`, `centerDocked`, `endDocked`

---

### Group 4: Side Menu Properties (পাশের Menu)

| Property | Data Type | Default Value | কী করে | কখন Use করবেন |
|----------|-----------|---------------|---------|----------------|
| `drawer` | `Widget?` | `null` | Left side থেকে slide হয়ে আসা menu | Navigation menu, Settings access |
| `endDrawer` | `Widget?` | `null` | Right side থেকে slide হয়ে আসা menu | Additional options, Filters |
| `onDrawerChanged` | `void Function(bool)?` | `null` | Drawer open/close হলে notify করে | Drawer state track করতে |
| `onEndDrawerChanged` | `void Function(bool)?` | `null` | End drawer open/close notify | End drawer state জানতে |
| `drawerScrimColor` | `Color?` | `Colors.black54` | Drawer open হলে background এর উপরে overlay color | Drawer এর background dim করতে |
| `drawerEdgeDragWidth` | `double?` | `20.0` | Screen এর edge থেকে কতটুকু width drag করলে drawer খুলবে | Drawer খোলা সহজ করতে |
| `drawerEnableOpenDragGesture` | `bool` | `true` | Edge swipe করে drawer খোলা যাবে কিনা | Drawer swipe disable করতে |
| `endDrawerEnableOpenDragGesture` | `bool` | `true` | End drawer swipe enable আছে কিনা | End drawer swipe control করতে |

**বিস্তারিত ব্যাখ্যা:**
- **drawer**: বাম দিক থেকে আসে। সাধারণত main navigation এর জন্য।
- **endDrawer**: ডান দিক থেকে আসে। Filter, Extra options এর জন্য।
- **drawerScrimColor**: Drawer open হলে পেছনের screen যে dark overlay দেখা যায় সেটা।
- **drawerEdgeDragWidth**: যেমন `30.0` দিলে বাম থেকে 30 pixel এর মধ্যে swipe করলে drawer খুলবে।

---

### Group 5: Bottom Area Properties (নিচের অংশ)

| Property | Data Type | Default Value | কী করে | কখন Use করবেন |
|----------|-----------|---------------|---------|----------------|
| `bottomNavigationBar` | `Widget?` | `null` | Screen এর নিচে fixed navigation bar | Tab based navigation |
| `bottomSheet` | `Widget?` | `null` | নিচে সবসময় visible থাকা sheet | Persistent bottom content (Player controls, Cart) |
| `persistentFooterButtons` | `List<Widget>?` | `null` | নিচে fixed buttons এর list | Save/Cancel buttons, Form actions |
| `extendBody` | `bool` | `false` | Body কি bottom bar এর পেছনে extend হবে | Transparent bottom bar effect |

**বিস্তারিত ব্যাখ্যা:**
- **bottomNavigationBar**: নিচে fixed থাকা navigation যেখানে Home, Search, Profile icon থাকে।
- **bottomSheet**: নিচে থেকে উঠে আসা sheet যা সবসময় visible। যেমন: Music player controls.
- **persistentFooterButtons**: নিচে buttons এর list। Form page এ Save/Cancel এর জন্য ভালো।
- **extendBody**: `true` করলে body নিচের bar এর নিচেও যাবে - transparent bottom bar effect এর জন্য।

---

### Group 6: Keyboard & Layout Properties

| Property | Data Type | Default Value | কী করে | কখন Use করবেন |
|----------|-----------|---------------|---------|----------------|
| `resizeToAvoidBottomInset` | `bool?` | `true` | Keyboard আসলে body resize হবে কিনা | Keyboard দিয়ে TextField hide হওয়া avoid করতে |

**বিস্তারিত ব্যাখ্যা:**
- **resizeToAvoidBottomInset**: 
  - `true` (default): Keyboard আসলে body উপরে উঠে যাবে যাতে TextField দেখা যায়
  - `false`: Keyboard আসলেও body তার জায়গায় থাকবে (keyboard এর নিচে content hide হবে)
  - **Use Case**: Chat app, Form - `true` রাখুন | Full screen video/image - `false` করুন

---

## 5. বাস্তব Use Cases (Real-World Examples)

### Use Case Example 1: E-commerce App Home Page
```dart
Scaffold(
  appBar: AppBar(
    title: Text('Shop Now'),
    actions: [
      IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
    ],
  ),
  drawer: Drawer(/* Categories menu */),
  body: GridView(...), // Products grid
  bottomNavigationBar: BottomNavigationBar(/* Home, Search, Cart, Profile */),
)
```
**ব্যবহৃত Properties:** appBar, drawer, body, bottomNavigationBar

---

### Use Case Example 2: Todo/Notes App
```dart
Scaffold(
  appBar: AppBar(title: Text('My Tasks')),
  body: ListView(...), // Task list
  floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: () {}, // Add new task
  ),
)
```
**ব্যবহৃত Properties:** appBar, body, floatingActionButton

---

### Use Case Example 3: Chat App
```dart
Scaffold(
  appBar: AppBar(title: Text('John Doe')),
  body: Column(
    children: [
      Expanded(child: ListView(...)), // Messages
      MessageInput(), // Text field at bottom
    ],
  ),
  resizeToAvoidBottomInset: true, // Important for keyboard!
)
```
**ব্যবহৃত Properties:** appBar, body, resizeToAvoidBottomInset

---

### Use Case Example 4: Settings Page
```dart
Scaffold(
  appBar: AppBar(title: Text('Settings')),
  body: ListView(
    children: [
      ListTile(title: Text('Account')),
      ListTile(title: Text('Privacy')),
      ListTile(title: Text('Notifications')),
    ],
  ),
  backgroundColor: Colors.grey[100],
)
```
**ব্যবহৃত Properties:** appBar, body, backgroundColor

---

### Use Case Example 5: Music Player with Bottom Controls
```dart
Scaffold(
  appBar: AppBar(title: Text('Now Playing')),
  body: Center(child: AlbumArtWidget()),
  bottomSheet: Container(
    height: 100,
    child: Row(/* Play, Pause, Next buttons */),
  ),
)
```
**ব্যবহৃত Properties:** appBar, body, bottomSheet

---

### Use Case Example 6: Filter Page (Right Drawer)
```dart
Scaffold(
  appBar: AppBar(
    title: Text('Products'),
    actions: [
      IconButton(
        icon: Icon(Icons.filter_list),
        onPressed: () {
          // Open end drawer programmatically
        },
      ),
    ],
  ),
  body: ProductGrid(),
  endDrawer: Drawer(/* Filter options */),
  drawerScrimColor: Colors.black.withOpacity(0.7),
)
```
**ব্যবহৃত Properties:** appBar, body, endDrawer, drawerScrimColor

---

### Use Case Example 7: Form Page with Footer Buttons
```dart
Scaffold(
  appBar: AppBar(title: Text('Edit Profile')),
  body: SingleChildScrollView(
    child: Form(/* Form fields */),
  ),
  persistentFooterButtons: [
    TextButton(child: Text('Cancel'), onPressed: (){}),
    ElevatedButton(child: Text('Save'), onPressed: (){}),
  ],
  resizeToAvoidBottomInset: true,
)
```
**ব্যবহৃত Properties:** appBar, body, persistentFooterButtons, resizeToAvoidBottomInset

---

### Use Case Example 8: Transparent AppBar Effect
```dart
Scaffold(
  extendBodyBehindAppBar: true,
  appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text('Gallery'),
  ),
  body: ImageGallery(), // Image goes behind AppBar
)
```
**ব্যবহৃত Properties:** extendBodyBehindAppBar, appBar, body

---

## Quick Reference: কোন Property কখন?

| আপনি যা চান | ব্যবহার করুন |
|-------------|--------------|
| Top এ title bar | `appBar` |
| মূল content দেখাতে | `body` |
| Background color change | `backgroundColor` |
| Quick add button | `floatingActionButton` |
| Side menu (বাম থেকে) | `drawer` |
| Side menu (ডান থেকে) | `endDrawer` |
| Bottom tabs | `bottomNavigationBar` |
| Bottom এ fixed buttons | `persistentFooterButtons` |
| Bottom persistent content | `bottomSheet` |
| Keyboard এর জন্য resize | `resizeToAvoidBottomInset: true` |
| Transparent AppBar effect | `extendBodyBehindAppBar: true` |

---

## Important Tips

1. **প্রতিটি Screen = একটি Scaffold**: একটা route/page এ একটাই Scaffold রাখবেন
2. **Body সবসময় দিবেন**: Body ছাড়া Scaffold খালি দেখাবে
3. **AppBar optional**: সব page এ AppBar লাগবে না
4. **FAB position**: `floatingActionButtonLocation` দিয়ে customize করতে পারবেন
5. **Keyboard handling**: Form/Input field থাকলে `resizeToAvoidBottomInset: true` রাখুন

---
## 📚 Summary (এক কথায়)

- **Scaffold** = App page এর structure
- **appBar** = উপরে title bar
- **body** = মাঝে content (must have!)
- **floatingActionButton** = + button
- **drawer** = side menu
- **bottomNavigationBar** = নিচে tabs
- **backgroundColor** = page এর color
- **resizeToAvoidBottomInset** = keyboard handle

---
### কোন Property কখন? 🤔

| তোমার দরকার | তাহলে ব্যবহার করো |
|-------------|-------------------|
| 📌 উপরে title | `appBar` |
| 📌 মূল content | `body` (must!) |
| 📌 + button | `floatingActionButton` |
| 📌 Background color | `backgroundColor` |
| 📌 Side menu | `drawer` |
| 📌 নিচে tabs | `bottomNavigationBar` |
| 📌 Form buttons | `persistentFooterButtons` |
| 📌 Keyboard handle | `resizeToAvoidBottomInset: true` |

---
## Important Tips

1. **প্রতিটি Screen = একটি Scaffold**: একটা route/page এ একটাই Scaffold রাখবেন
2. **Body সবসময় দিবেন**: Body ছাড়া Scaffold খালি দেখাবে
3. **AppBar optional**: সব page এ AppBar লাগবে না
4. **FAB position**: `floatingActionButtonLocation` দিয়ে customize করতে পারবেন
5. **Keyboard handling**: Form/Input field থাকলে `resizeToAvoidBottomInset: true` রাখুন

---
**কখন AppBar লাগবে না?**
- Splash screen
- Full screen video/image
- Login page (কিছু design এ)

---
**Happy Coding! 🚀 Flutter শেখা চালিয়ে যান!**