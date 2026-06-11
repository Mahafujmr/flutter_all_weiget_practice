Flutter এর Text widget সম্পর্কে একটি Markdown লেখাটি নিচে দেওয়া হলো:

***

# Flutter Text Widget

## 1. Text Widget কী?  
Flutter এ Text widget হলো সবচেয়ে সাধারণ এবং বেশি ব্যবহৃত widget যা একটি string text প্রদর্শনের জন্য ব্যবহৃত হয়। এটি মূলত অ্যাপের UI তে লেখা দেখানোর জন্য ব্যবহৃত হয়।

## 2. Text Widget কোথায় কোথায় ব্যবহৃত হয়?  
- UI তে static বা dynamic text দেখানোর জন্য  
- Button, Label, Title, Paragraph, Caption, Subtitle ইত্যাদি তে  
- Form এর instruction text বা error message দেখানোর ক্ষেত্রে  
- যেকোনো জায়গায় যেখানে লেখা দরকার  

## 3. Text Widget এর প্রধান Properties (গুণাবলী)

| Property        | Description                                         | Example                           |
|-----------------|-----------------------------------------------------|---------------------------------|
| `data`          | প্রদর্শন করার জন্য String (আবশ্যক)                 | `Text('Hello Flutter')`          |
| `style`         | TextStyle ব্যবহার করে font size, color, weight ইত্যাদি নির্ধারণ | `style: TextStyle(fontSize: 20, color: Colors.red)` |
| `textAlign`     | Text এর অবস্থান নির্ধারণ (left, center, right)       | `textAlign: TextAlign.center`    |
| `maxLines`      | সর্বোচ্চ কত লাইন text দেখানো হবে                   | `maxLines: 2`                    |
| `overflow`      | Text overflow হলে কিভাবে হ্যান্ডেল করবে (ellipsis, clip ইত্যাদি) | `overflow: TextOverflow.ellipsis`|
| `softWrap`      | Text line break হবে কিনা                            | `softWrap: true`                 |
| `textDirection` | Text এর দিক নির্দেশ (ltr, rtl)                      | `textDirection: TextDirection.ltr` |
| `locale`        | Locale অনুযায়ী font নির্বাচন                        | `locale: Locale('en', 'US')`    |
| `strutStyle`    | Minimum vertical metrics (line height) সেট করা     | `strutStyle: StrutStyle(fontSize:18)` |

## 4. Text Widget Properties টেবিলের উপস্থাপনা

| Property       | Type               | Description                                       | Example                                      |
|----------------|--------------------|-------------------------------------------------|----------------------------------------------|
| data           | String             | Display text (required)                          | `'Hello World'`                               |
| style          | TextStyle          | Customizes font size, color, weight, etc.       | `TextStyle(fontSize: 24, fontWeight: FontWeight.bold)` |
| textAlign      | TextAlign          | Horizontal alignment of the text                 | `TextAlign.center`                            |
| maxLines       | int                | Max number of lines to display                    | `maxLines: 1`                                 |
| overflow       | TextOverflow       | Handling overflow, e.g., ellipsis or clipping    | `TextOverflow.ellipsis`                       |
| softWrap       | bool               | Enable or disable soft wrapping                   | `softWrap: true`                              |
| textDirection  | TextDirection      | Text direction (left to right or right to left) | `TextDirection.rtl`                           |
| locale         | Locale             | For locale-specific font rendering                | `Locale('en', 'US')`                          |
| strutStyle     | StrutStyle         | Sets minimum line height for the text             | `StrutStyle(fontSize: 18)`                     |

## 5. ছোট ছোট উদাহরণসমূহ

- **সাধারণ Text দেখানো**  
  ```dart
  Text('Hello Flutter!')
  ```

- **Text style ব্যবহার করা**  
  ```dart
  Text('Hello Flutter!', style: TextStyle(fontSize: 20, color: Colors.blue))
  ```

- **Text center align করা**  
  ```dart
  Text('Hello Flutter!', textAlign: TextAlign.center)
  ```

- **Text overflow হ্যান্ডেল করা**  
  ```dart
  Text(
    'This is a very long text that might overflow',
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  )
  ```

- **Line break নিয়ন্ত্রণ করা**  
  ```dart
  Text(
    'Flutter text example',
    softWrap: false,
  )
  ```

***

এভাবে Flutter এর Text widget ব্যবহার করে আপনি খুব সহজেই লেখা UI তে অ্যাড করতে পারেন এবং নিজের প্রয়োজন অনুযায়ী স্টাইল ও ফরম্যাট করতে পারেন। এই Markdown গভীরভাবে Text widget এর বেসিক থেকে প্রপার্টিস পর্যন্ত কভার করে দেয়। 

আপনার কোড প্র্যাকটিসের জন্য ছোটো ছোটো উদাহরণ ব্যবহার করুন যাতে বুঝতে সুবিধা হয়। 

সবশেষে, Flutter এর অফিসিয়াল ডকুমেন্টেশন ও বিভিন্ন টিউটোরিয়াল থেকেও Text widget নিয়ে অখণ্ড শিখতে পারেন।
