# GDSC Flutter Workshop: Simple Counter App with BLoC State Management

![Counter App Demo](https://storage.googleapis.com/cms-storage-bucket/6a07d8a62f4308d2b854.svg)

## Introduction

This repository contains the source code for a simple counter app developed during the GDSC Flutter Workshop. The app demonstrates the use of the BLoC state management pattern, which helps separate the UI from the business logic and state.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Flutter SDK installed.
- An IDE or code editor of your choice (e.g., Visual Studio Code, Android Studio).
- Basic understanding of Flutter and Dart programming.

## Getting Started

To get started with the project, follow these steps:

1. Clone this repository to your local machine:

```bash
git clone https://github.com/devilb2103/GDSC_Flutter_Workshop_2023_SC
```

2. Navigate to the project directory:

```bash
cd GDSC_Flutter_Workshop_2023_SC
```

3. Install the project dependencies:

```bash
flutter pub get
```

4. Press "F5" to launch app in a browser or run the app using:

```bash
flutter run
```

<br>

## BLoC Overview

BLoC (Business Logic Component) is a state management pattern that separates the presentation layer from the business logic. In this app, the BLoC pattern is used to manage the counter state. The BLoC is responsible for handling events, updating the state, and exposing the state changes to the UI.
<br>

## Features

- Increment the counter using the '+' button.
- Decrement the counter using the '-' button.
- Reset the counter to zero using the 'Reset' button.
