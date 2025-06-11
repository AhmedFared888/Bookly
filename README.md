# bookly

Bookly is a Flutter-based mobile application designed for book discovery and browsing. The application provides users with the ability to:

- Browse featured and newest books from Google Books API.
- Search for specific books and authors.
- View detailed book information including ratings, descriptions, and cover images.
- Access book preview and purchase links.
- Navigate between different sections with smooth transitions.
  
The application follows modern Flutter development practices with clean architecture principles, state management using BLoC pattern, and dependency injection for maintainable code organization.


## High-Level Application Architecture
![image](https://github.com/user-attachments/assets/d022ccae-a709-4249-bfc9-75eb38099456)

The application follows a layered architecture with clear separation between presentation, business logic, and data access layers. The main() function initializes the service locator and bootstraps the application with global state providers.


## Feature Module Organization
![image](https://github.com/user-attachments/assets/d8967635-40d8-4e60-a73e-70680db065dc)

The application is organized into three main feature modules, each containing their own presentation layer components. The Home feature is the most complex, containing multiple Cubit-based state managers for different book collections.


## 📱 Screenshots
![home view](https://github.com/user-attachments/assets/62a5e8fc-9f09-4139-bbd3-3cfee5adc8e7)
![book details view](https://github.com/user-attachments/assets/7bd84b19-7f8a-4420-9bf9-e7007976c9e3)


## Technology Stack and Dependencies
![image](https://github.com/user-attachments/assets/e6f0c253-d4fb-4ad2-a972-dd94e66fef3d)

The application uses a modern Flutter stack with established packages for common functionality. The choice of flutter_bloc for state management and go_router for navigation reflects current Flutter best practices.


## Core Architectural Patterns
 Dependency Injection Pattern

The application uses the Service Locator pattern implemented through GetIt for dependency management. Services are registered once during application startup and retrieved throughout the app.

![image](https://github.com/user-attachments/assets/1db78045-530e-4355-afdb-9aa57f586953)

State Management Pattern

The application implements the BLoC pattern using Cubits for simpler state management scenarios. Each feature has dedicated Cubits that manage specific aspects of the application state.

![image](https://github.com/user-attachments/assets/2fecb024-1a02-40ad-99c5-a9cc4c20a99c)

Navigation Architecture

The application uses GoRouter for declarative routing with route-based navigation. The AppRouter class centralizes all route definitions and navigation logic.

Application Theme and Styling

The application uses a dark theme with custom typography and consistent styling throughout. The main theme configuration includes:

- **Primary Color**: KPrimaryColor for scaffold backgrounds
- **Typography**: Montserrat font family via Google Fonts
- **Custom Font**: GT Sectra Fine for decorative text elements
- **Dark Theme**: Material Design dark theme as base
