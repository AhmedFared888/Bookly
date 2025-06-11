# 📚 Bookly

**Bookly** is a beautiful Flutter-based mobile application that helps users discover, browse, and preview books from the Google Books API.

## 📸 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/5a0e1535-d417-4347-a765-8bda56d14a0b" alt="Home View" width="250"/>
  <img src="https://github.com/user-attachments/assets/8a0cc4bb-3038-470f-846d-588c799160f8" alt="Book Details View" width="250"/>
</p>

## 🚀 Features

- Discover featured and newest books
- Search for books and authors
- Detailed book info (ratings, cover, description)
- Preview or purchase books
- Smooth navigation with GoRouter

## 🧱 Architecture Overview


![Screenshot_11-6-2025_194849_deepwiki com](https://github.com/user-attachments/assets/c4112426-268e-40d7-b29b-f0a32e915ef5)


The project follows clean architecture principles with clear separation of concerns between:

- Presentation Layer (UI, widgets)
- Domain Layer (use cases, models)
- Data Layer (API, repository)

## 🔧 Tech Stack

- **Flutter** with **Dart**
- **BLoC** (Cubit) for state management
- **GoRouter** for routing
- **GetIt** for dependency injection
- **Google Fonts** & custom styling

## 🧠 Patterns Used

### Dependency Injection
Using `GetIt` service locator.

### State Management
Using **Cubit** for modular state control per feature.

### Navigation
Using **GoRouter** for declarative, route-based navigation.

### Theme
- Dark mode based on Material Design
- Fonts: Montserrat + GT Sectra Fine
