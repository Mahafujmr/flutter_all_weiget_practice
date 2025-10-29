# Flutter Image Widget - Complete Guide

## ১. Image Widget কী?

**Image Widget** হলো Flutter-এর একটি fundamental widget যা screen-এ ছবি/ইমেজ প্রদর্শন করতে ব্যবহৃত হয়। এটি বিভিন্ন source থেকে ইমেজ load করতে পারে - যেমন internet, local storage, বা app-এর asset folder থেকে।

**সহজ ভাষায়**: যেকোনো জায়গায় ছবি দেখাতে হলে Image widget ব্যবহার করতে হয়।

---

## ২. কোথায় কোথায় ব্যবহার হয়?

| ব্যবহারের জায়গা | উদাহরণ |
|------------------|---------|
| 👤 **Profile Picture** | User-এর ছবি, avatar |
| 🛍️ **E-commerce** | Product images, thumbnails |
| 🎨 **Banner/Slider** | Homepage promotional images |
| 🏢 **Logo/Branding** | Company logo, app icon |
| 🖼️ **Gallery** | Photo gallery, image viewer |
| 📱 **Social Media** | Posts, stories, feed images |
| 🎯 **Background** | Screen background decoration |
| 📰 **News/Blog** | Article featured images |

---

## ৩. Image Widget-এর Types

Flutter-এ **৫ ধরনের** Image constructor আছে:

```dart
// 1. Asset থেকে (local project folder)
Image.asset('assets/logo.png')

// 2. Network থেকে (internet URL)
Image.network('https://example.com/pic.jpg')

// 3. File থেকে (device storage)
Image.file(File('/path/image.jpg'))

// 4. Memory থেকে (bytes)
Image.memory(uint8list)

// 5. Custom ImageProvider দিয়ে
Image(image: NetworkImage('url'))
```

---

## ৪. সকল Properties (Table Format)

### 📋 Core Properties

| Property | Type | Description | Example Value |
|----------|------|-------------|---------------|
| `image` | `ImageProvider` | ইমেজের source (required) | `AssetImage('logo.png')` |
| `width` | `double?` | ইমেজের প্রস্থ | `200.0` |
| `height` | `double?` | ইমেজের উচ্চতা | `150.0` |
| `fit` | `BoxFit?` | কিভাবে space-এ fit হবে | `BoxFit.cover` |
| `alignment` | `Alignment` | ইমেজের alignment | `Alignment.center` |
| `repeat` | `ImageRepeat` | ইমেজ repeat হবে কিনা | `ImageRepeat.noRepeat` |

### 🎨 Styling Properties

| Property | Type | Description | Example Value |
|----------|------|-------------|---------------|
| `color` | `Color?` | Color overlay/tint | `Colors.blue` |
| `colorBlendMode` | `BlendMode?` | Color কিভাবে blend হবে | `BlendMode.multiply` |
| `opacity` | `Animation<double>?` | Transparency animation | `AlwaysStoppedAnimation(0.5)` |
| `filterQuality` | `FilterQuality` | Image rendering quality | `FilterQuality.high` |
| `isAntiAlias` | `bool` | Smooth edges | `true` |

### 🔧 Advanced Properties

| Property | Type | Description | Usage |
|----------|------|-------------|-------|
| `frameBuilder` | `ImageFrameBuilder?` | Custom frame rendering | Animation support |
| `loadingBuilder` | `ImageLoadingBuilder?` | Loading progress handler | Show loading indicator |
| `errorBuilder` | `ImageErrorWidgetBuilder?` | Error state handler | Show error icon |
| `semanticLabel` | `String?` | Accessibility label | Screen reader support |
| `excludeFromSemantics` | `bool` | Skip accessibility | `false` (default) |
| `gaplessPlayback` | `bool` | Smooth image transition | `false` (default) |

---

## 📐 BoxFit Values (বিস্তারিত)

| BoxFit | কী করে | কখন ব্যবহার করবেন |
|--------|---------|-------------------|
| `fill` | পুরো container fill করে, ratio change হতে পারে | সাধারণত এড়িয়ে যান |
| `contain` | পুরো ইমেজ দেখায়, ratio ঠিক রাখে | Logo, icon জন্য |
| `cover` | পুরো area cover করে, ইমেজ crop হয় | Background, banner |
| `fitWidth` | Width পূর্ণ করে | Horizontal scrolling |
| `fitHeight` | Height পূর্ণ করে | Vertical scrolling |
| `none` | Original size রাখে | Small decorative images |
| `scaleDown` | বড় না করে, contain এর মত | Thumbnail preview |

---

## 🔁 ImageRepeat Values

| Value | বর্ণনা | ব্যবহার |
|-------|--------|---------|
| `noRepeat` | একবার দেখাবে (default) | সাধারণ ইমেজ |
| `repeat` | X ও Y উভয় দিকে repeat | Pattern, texture |
| `repeatX` | শুধু horizontal | Horizontal border |
| `repeatY` | শুধু vertical | Vertical border |

---

## 💡 Small Examples (Practice করার জন্য)

### Example 1: Basic Asset Image
```dart
Image.asset('assets/logo.png')
```

### Example 2: Fixed Size Network Image
```dart
Image.network(
  'https://picsum.photos/200',
  width: 200,
  height: 200,
)
```

### Example 3: Cover Fit (Most Common)
```dart
Image.asset(
  'assets/banner.jpg',
  width: double.infinity,
  height: 250,
  fit: BoxFit.cover,
)
```

### Example 4: Circular Profile Picture
```dart
ClipRRect(
  borderRadius: BorderRadius.circular(50),
  child: Image.network(
    'https://i.pravatar.cc/150',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
)
```

### Example 5: Loading Indicator
```dart
Image.network(
  'https://picsum.photos/300',
  loadingBuilder: (context, child, progress) {
    if (progress == null) return child;
    return Center(child: CircularProgressIndicator());
  },
)
```

### Example 6: Error Handling
```dart
Image.network(
  'https://wrong-url.com/image.jpg',
  errorBuilder: (context, error, stackTrace) {
    return Icon(Icons.broken_image, size: 100);
  },
)
```

### Example 7: Color Filter/Tint
```dart
Image.asset(
  'assets/photo.jpg',
  color: Colors.red.withOpacity(0.3),
  colorBlendMode: BlendMode.color,
)
```

### Example 8: Alignment Bottom Right
```dart
Container(
  width: 300,
  height: 200,
  color: Colors.grey[200],
  child: Image.asset(
    'assets/small-icon.png',
    alignment: Alignment.bottomRight,
  ),
)
```

### Example 9: Grayscale Effect
```dart
ColorFiltered(
  colorFilter: ColorFilter.mode(
    Colors.grey,
    BlendMode.saturation,
  ),
  child: Image.asset('assets/photo.jpg'),
)
```

### Example 10: Repeat Pattern Background
```dart
Container(
  width: 300,
  height: 300,
  child: Image.asset(
    'assets/pattern.png',
    repeat: ImageRepeat.repeat,
  ),
)
```

### Example 11: Fade In Network Image
```dart
FadeInImage.assetNetwork(
  placeholder: 'assets/loading.gif',
  image: 'https://picsum.photos/400',
)
```

### Example 12: Custom Loading Progress
```dart
Image.network(
  'https://picsum.photos/500',
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
)
```

---

## ⚙️ Setup Guide

### pubspec.yaml Configuration
```yaml
flutter:
  assets:
    - assets/
    - assets/images/
    - assets/icons/
```

### Folder Structure
```
your_project/
  ├── assets/
  │   ├── images/
  │   │   ├── logo.png
  │   │   └── banner.jpg
  │   └── icons/
  │       └── star.png
  └── lib/
```

---

## ⚡ Pro Tips

✅ **Asset image** সবসময় `pubspec.yaml`-এ declare করুন  
✅ **Network image** এ সবসময় error handling রাখুন  
✅ **Loading builder** ব্যবহার করুন better UX এর জন্য  
✅ **BoxFit.cover** সবচেয়ে বেশি ব্যবহৃত হয় banners/backgrounds এ  
✅ **cached_network_image** package ভালো performance এর জন্য  
✅ ছোট icon এর জন্য **BoxFit.contain** ব্যবহার করুন  
✅ Large images এর জন্য `filterQuality: FilterQuality.high` use করুন

---

## ❌ Common Mistakes

| ভুল | সঠিক |
|-----|------|
| Asset path ভুল | `'assets/logo.png'` (সঠিক path) |
| pubspec.yaml এ declare নেই | Properly configure assets |
| Network error handle নেই | errorBuilder ব্যবহার করুন |
| fit property missing | `fit: BoxFit.cover` দিন |
| Loading state নেই | loadingBuilder add করুন |

---

## 🎯 Quick Reference

```dart
// সবচেয়ে common use case
Image.network(
  'url',
  width: 200,
  height: 200,
  fit: BoxFit.cover,
  loadingBuilder: (context, child, progress) {
    return progress == null 
        ? child 
        : CircularProgressIndicator();
  },
  errorBuilder: (context, error, stackTrace) {
    return Icon(Icons.error);
  },
)
```

---

**Happy Coding! 🚀**