<br />
<div align="center">
  <a href="https://github.com/kikikn13/isight">
    <img src="assets/your_eyes.png" alt="Logo" width="120" height="120" align="center">
  </a>

<h2 align="center">Insight</h2>

  <p align="center">
    A flutter app using facial recognition to aid the visually impaired.
    <br />
    <br />
    <a href="https://github.com/kikikn13/isight/issues">Report Bug</a>
    ·
    <a href="https://github.com/kikikn13/isight/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [Table of Contents](#table-of-contents)
- [About The Project](#about-the-project)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Thank You!](#thank-you)

<!-- ABOUT THE PROJECT -->

## About The Project
The mobile application consists of four major components as shown here. These are the OpenCV Java Module, User Interface, Android Module and OpenCV C++ Module. The OpenCV Java Module consists of the Detection System and functions for interfacing with the Android Module. 

### Prerequisites

Java Runtime Environment(JRE)>=8, Android SDK API level 28 or higher should be installed. Flutter and Dart SDKs should be installed. After installation, check Java version, and Flutter configuration using

```sh
java --version
flutter doctor
```

### Installation

1. Download or Clone repo

```git
git clone https://github.com/kikikn13/isight.git
```

2. Open the downloaded project folder

```sh
cd isight
```

3. Make sure Flutter executable is added to environment variables. Go to project root and execute the following command in console to get the required dependencies

```sh
flutter pub get
```

4. Connect the Android device to the desktop. Ensure it is properly connected by using

```sh
flutter devices
```

5. Install and run the app using

```sh
flutter run
```

<!-- USAGE EXAMPLES -->

## Usage

Once the app starts, authenticate yourself with fingerprint. Then, tap to issue voice commands like `recognize face`, `detect objects`, `read text` to perform respective functionalities. In face recognition screen, double tap to change camera, and once human face is detected, long tap to save detected face. The name for detected face can be given with voice input by tapping onto screen.


## Thank You!


