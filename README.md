# 🎓 SignSiksha

## 🌟 Overview
**SignSiksha** is an inclusive mobile application tailored for **deaf and mute students in Gujarat**. This innovative app aims to facilitate learning in **Mathematics and Science** using **Indian Sign Language (ISL)** in **Gujarati**. 

**Key Features:**
- Real-time **Sign Language Detection**
- Conversion of **speech to sign language** and **text to sign language**
- **Video Uploads** for teachers to share learning materials
- **Data Analytics** to monitor student progress

The app not only benefits students but also supports **parents**, **teachers**, and **HR professionals** in fostering an inclusive environment.

---

## 🚀 Features
- **Sign Language Detection**: Converts sign language gestures into Gujarati text.
- **Speech to Sign Language**: Translates spoken Gujarati into sign language.
- **Text to Sign Language**: Converts written Gujarati text into sign language.
- **Multi-User Support**: Tailored roles for students, teachers, parents, and HR.
- **Interactive Learning**: Engaging exercises for Gujarati alphabets, numbers, words, sentences, as well as basic mathematics and science.
- **Data Analytics**: Insights into student progress and performance assessments.

---

## 🛠️ Tech Stack

### **Front-End (Flutter)**
- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: Provider, Riverpod
- **UI Libraries**: Custom UI Components
- **Authentication**: Firebase Authentication

### **Back-End (Django)**
- **Framework**: [Django](https://www.djangoproject.com/)
- **Language**: Python
- **Database**: Firebase Firestore
- **API**: Django Rest Framework (DRF)
- **Storage**: Firebase Cloud Storage (for video uploads)
- **Authentication**: Firebase Authentication

### **Machine Learning (Sign Language Detection Model)**
- **Model Training**: TensorFlow/Keras
- **Gesture Recognition**: OpenCV and MediaPipe
- **Model Deployment**: TensorFlow Lite for mobile integration

### **Deployment**
- **Mobile**: Available on Android and iOS (Google Play Store and Apple App Store)
- **Backend**: Deployed on Heroku and AWS
- **Firebase Hosting**: Optional for a Web version

---

## 📥 Installation (Flutter Front-End)

### **Prerequisites**
- **Flutter SDK**: Install from [Flutter Installation Guide](https://flutter.dev/docs/get-started/install).
- **Firebase Account**: Create a Firebase project for authentication and database integration.

### **Steps to Install**

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Poojitha319/SignSiksha_SIH.git
   cd SignSiksha_SIH
2.**Get all requirements**:
```bash
   flutter pub get
   ```
3.**Run the app**:
```bash
   flutter run
   ```
## 🌐Backend Setup
1.**Clone the backend repository**:
   ```bash
   git clone https://github.com/Poojitha319/SignSiksha_SIH.git
   cd sign
   ```
2.**Install required dependencies**:
  ```bash
   pip install -r requirements.txt
   ```
3.**Configure databases**:
  Open settings file and set up your database configurations.
4.**Run database migrations**:
```bash
   python manage.py makemigrations
   python manage.py migrate
   ```
5.**Run the server**:
```bash
   python manage.py runserver
   ```
### 🌍Key Sections:
- **Overview**: Describes the purpose and functionality of the app.
- **Features**: Highlights the core features.
- **Tech Stack**: Lists the technologies used for both the frontend and backend.
- **Installation**: Provides step-by-step instructions for setting up both the Flutter app and Django server.
- **Backend Setup**: Includes instructions for configuring the database, running migrations, and launching the server.
- **Machine Learning Model**: Briefly describes the ML model used for sign language detection.
- **Deployment**: Outlines how to deploy the mobile app and backend.

### 💡Conclusion:
SignSiksha aims to create a more efficient and supportive learning environment for deaf and mute students in Gujarat. By leveraging modern technology, this app seeks to enhance educational outcomes and bridge communication gaps.

