# Flutter App Documentation 📱

This project is part of an internship at **A2SV**, focused on learning **Flutter** development using **Test Driven Development (TDD)**, **Clean Architecture**, and the **BLoC (Business Logic Component)** pattern. The application aims to demonstrate these principles through practical implementation.

---

## Project Overview 🚀

The project showcases a mobile application built using **Flutter**, focusing on core software development principles such as:

- **Test Driven Development (TDD)**: Writing tests before the implementation to ensure reliable, bug-free code.
- **Clean Architecture**: Separating concerns into layers to enhance scalability, maintainability, and testability.
- **BLoC (Business Logic Component)**: Managing application state through reactive programming and events.

This repository focuses on ensuring that each layer and design principle is correctly implemented and tested.

---

## Architecture 🏗️

### Clean Architecture

Clean Architecture divides the project into multiple layers, each with a specific responsibility. This separation of concerns improves code maintainability, scalability, and testability.

#### Presentation Layer 💬

- **Widgets**: The UI components of the application that display data and interact with the user.
- **BLoC**: Manages the state of the application and handles events triggered from the UI. It processes these events and emits new states to update the UI.

#### Domain Layer 🧠

- **Entities**: Core classes representing the business objects of the application.
- **Use Cases**: Encapsulate the business logic of the application, coordinating the flow of data between the Repository and BLoC.

#### Data Layer 💾

- **Repositories**: Abstract classes that define operations for data handling, separating the data logic from the rest of the app.
- **Data Sources**: Concrete implementations that provide access to data (e.g., local databases, remote APIs).

---

## Data Flow 🔄

1. **User Interaction**: The user interacts with the UI in the **Presentation Layer**.
2. **Event Triggering**: The UI triggers an event which is sent to the BLoC.
3. **BLoC Processing**: The BLoC receives the event and interacts with the **Use Case**.
4. **Use Case Execution**: The Use Case fetches or updates data from the Repository.
5. **Data Source Interaction**: The Repository interacts with **Data Sources** to perform the required data operations (e.g., fetching data from an API or local database).
6. **State Update**: Once the data is fetched or updated, the Use Case returns the result to the BLoC.
7. **State Emission**: The BLoC emits a new state based on the result, which the UI listens to and updates accordingly.

---

## Folder Structure 🗂️

The project is organized into separate layers and modules, making it easier to manage and scale.


- **data/models**: Contains data models that define the structure of the data used in the app.
- **data/repositories**: Contains repository implementations that handle data operations.
- **data/data_sources**: Contains classes for interacting with data sources, like APIs or databases.
- **domain/entities**: Core business objects representing the fundamental data structures in the app.
- **domain/use_cases**: Implements the business logic of the application.
- **presentation/blocs**: Manages app state with the BLoC pattern.
- **presentation/pages**: Contains the app's UI pages.
- **presentation/widgets**: Contains reusable UI components.
- **main.dart**: The entry point of the application.

---

## Test Driven Development (TDD) 🧪

The application is developed following the **Test Driven Development** methodology, ensuring each feature and layer is thoroughly tested before implementation. The following types of tests are included:

- **Unit Tests**: Tests individual components like use cases, repositories, and BLoC classes.
- **Widget Tests**: Tests UI components to verify their behavior and interaction with the user.
- **Integration Tests**: Tests the entire flow from the UI to data sources, ensuring everything works together as expected.

### Testing Principles

- Write tests before the actual implementation to ensure correctness.
- Test each layer of the application independently.
- Refactor code after tests pass to improve functionality and maintainability.

---

## Dependencies 📦

The project uses the following dependencies for state management, dependency injection, mocking, and testing:

- **flutter_bloc**: For state management using the BLoC pattern.
- **provider**: For dependency injection and state management.
- **get_it**: For service locator pattern.
- **mockito**: For mocking dependencies during testing.
- **flutter_test**: For writing unit, widget, and integration tests.

You can install these dependencies by running:

```bash
flutter pub get
