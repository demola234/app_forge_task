# AppForge Task

## Running the Project

```bash
    flutter run
```

## Running Unit Test

```bash
    flutter test
```

## Generate Freezed and Mock Files

```bash
    dart run
```

### Design Decisions

Clean Architecture: The project is structured to separate concerns, enhancing maintainability and scalability.

Hive for Local Storage: Hive is chosen for its lightweight and efficient data storage capabilities, suitable for Flutter applications.

Equatable for Data Modeling: Equatable ensures value equality in data classes, simplifying comparisons and reducing boilerplate code.

Freezed: For generate sealed classes

### Challenges and Future Improvements

Time: Unable to finish implementation of cache local data base.
Testing: Achieving comprehensive test coverage is ongoing. Future work includes adding more widget and integration tests to ensure app stability.
