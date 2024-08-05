## Project Overview

This project follows Clean Architecture principles to maintain a clear separation of concerns and make the codebase more modular and testable.

### Project Structure

- `core`: Contains shared components, entities, and error handling logic.
- `features`: Contains feature-specific modules.
  - `ecommerce`: Main module for the Ecommerce feature.

### Data Flow

1. **Data Layer**: Data models such as `ProductModel` are responsible for handling data conversion to and from JSON.
2. **Domain Layer**: Business logic and entities like `Product` are defined here.
3. **Presentation Layer**: Views and UI-related logic reside here.

For more detailed information, refer to the codebase and documentation within the project.