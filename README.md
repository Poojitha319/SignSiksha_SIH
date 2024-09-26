# SignSiksha


## Overview
SignSiksha is an inclusive mobile application for deaf and dumb people.This mobile application is designed to help **deaf and mute students in Gujarat** learn subjects like **Mathematics and Science** using **Indian Sign Language (ISL)** in **Gujarati**. The app also includes features for parents, teachers, and HR professionals to support inclusivity and communication.The app also integrates a **Sign Language Detection Model**, which can interpret sign language gestures into Gujarati text and vice versa. This app aims to bridge communication gaps and promote better learning outcomes for specially-abled students.



The app includes:
- Real-time **Sign Language Detection**
- Conversion of **speech to sign language** and **text to sign language**
- **Video Uploads** for teachers to share learning materials
- **Data analytics** for student progress

The backend manages user authentication, video uploads, and integrates with the **Sign Language Detection API**.

---

## Features
- **Sign Language Detection**: Converts sign language gestures into Gujarati text.
- **Speech to Sign Language**: Converts Gujarati speech into sign language.
- **Text to Sign Language**: Converts Gujarati text into sign language.
- **Multi-User Support**: Roles for students, teachers, parents, and HR.
- **Interactive Learning**: Includes exercises for learning Gujarati alphabets, numbers, words, sentences, and basic mathematics and science.
- **Data Analytics**: Tracks student progress in learning and assessments.

---

## Tech Stack

### Front-End (Flutter)
- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: Provider, Riverpod
- **UI Libraries**: Flutter Widgets, Custom UI Components
- **Authentication**: Firebase Authentication

### Back-End (Django)
- **Framework**: [Django](https://www.djangoproject.com/)
- **Language**: Python
- **Database**: Firebase Firestore
- **API**: Django Rest Framework (DRF)
- **Storage**: Firebase Cloud Storage (for video uploads)
- **Authentication**: Firebase Authentication

### Machine Learning (Sign Language Detection Model)
- **Model Training**: TensorFlow/Keras (for sign language detection)
- **Gesture Recognition**: OpenCV and MediaPipe (for hand tracking)
- **Model Deployment**: TensorFlow Lite (for mobile integration)

### Deployment
- **Mobile**: Android and iOS (via Google Play Store and Apple App Store)
- **Backend**: Deployed on Heroku, AWS
- **Firebase Hosting**: Optional for Web version

---

## Installation (Flutter Front-End)

### Prerequisites
- **Flutter SDK**: Install the Flutter SDK from [here](https://flutter.dev/docs/get-started/install).
- **Dart**: Dart is bundled with Flutter, so no separate installation is required.
- **Firebase Account**: Set up a Firebase project for authentication and database.

### Steps to Install

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Poojitha319/SignSiksha_SIH.git
   cd SignSiksha_SIH
   ```
2.**Run the app**:
```bash
   flutter pub get
   flutter run
   ```
## Backend Setup
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
  Open settings file.
4.**Run database migrations**:
```bash
   python manage.py makemigrations
   python manage.py migrate
   ```
5.**Run the server**:
```bash
   python manage.py runserver
   ```
### Key Sections:
- **Overview**: Describes the purpose and functionality of the app.
- **Features**: Highlights the core features.
- **Tech Stack**: Lists the technologies used for both the frontend and backend.
- **Installation**: Provides step-by-step instructions for setting up both the Flutter app and Django server.
- **Backend Setup**: Includes instructions for configuring the database, running migrations, and launching the server.
- **Machine Learning Model**: Briefly describes the ML model used for sign language detection.
- **Deployment**: Outlines how to deploy the mobile app and backend.

