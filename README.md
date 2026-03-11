# Real-Estate
Real Estate Secure is a secure digital real estate marketplace designed to enable users to buy land, sell land, purchase properties, rent houses, and manage real estate transactions seamlessly within one integrated platform. The system will feature verified user registration, property listing and discovery with advanced filters, digital document uploads and validation, smart contract-based or legally binding digital agreements, in-app payment processing with escrow protection, and transaction tracking to ensure transparency and fraud prevention. The platform will incorporate secure payment gateways, wallet functionality, automated receipts, commission management, dispute resolution mechanisms, and admin oversight to maintain compliance and trust. By combining property management tools, secure financial infrastructure, and legal documentation workflows, Real Estate Secure aims to modernize real estate transactions, reduce fraud, and provide a reliable end-to-end property trading ecosystem.

**Workspace Overview**
1. `calculator/` - Container for the grading calculator project. The main app lives in `calculator/calculate/` and is a Flutter GUI plus a Dart CLI for processing student grade files (CSV, Excel, HTML table, PDF text table) and exporting results.
Run (GUI) from `calculator/calculate`: `flutter pub get` then `flutter run`.
Run (CLI) from `calculator/calculate`: `dart run bin/calculate.dart <input> [output]`.

1. `assignment 1/` - Dart console app named `lamda_square` demonstrating a custom higher-order function, predicates, and filtering even, odd, and prime numbers from a list.
Run from `assignment 1`: `dart run`.

1. `assignment 2/` - Dart console app that converts a list of words into a map of word lengths, then prints entries with length greater than 4 using an `associateWith` extension.
Run from `assignment 2`: `dart run`.

1. `assignment 3/` - Dart console app that filters people whose names start with A or B, prints the filtered list, and computes the average age (rounded to one decimal place).
Run from `assignment 3`: `dart run`.
# Assignment 4 Generic Function (Dart)

This project demonstrates a generic function `maxOf` that returns the maximum
element in a list. It works for any type that implements `Comparable`.

## What It Does

The function:
- Accepts a `List<T>`
- Requires `T` to implement `Comparable`
- Throws an error if the list is empty
- Returns the maximum element

## Code

The main entry point is in `bin/main.dart`. It includes:
- `maxOf<T extends Comparable<Object?>>`
- A small demo with numbers and strings

## Run

From the project root:

```powershell
dart run bin\main.dart
```

Expected output (values may vary based on input):

```text
Max of numbers: 9
Max of words: pear
```

## Notes

The constraint uses `Comparable<Object?>` instead of `Comparable<T>` so that
types like `int` (which implement `Comparable<num>`) work with type inference.
# Delegation Logger in Dart

This project demonstrates a simple logging system using class delegation in Dart.

## Task Implemented

1. Define a Logger interface with a log(String message) function.
2. Provide two logger implementations:
   - ConsoleLogger: prints logs to console.
   - FileLogger: simulates file writing with File: <message>.
3. Create an Application class that delegates logging to a Logger instance, making implementations easy to swap.

## Project Structure

- main.dart: contains all classes and a runnable demo.

## How It Works

### 1) Logger interface

The Logger interface defines a single responsibility:
- log a message.

### 2) Implementations

- ConsoleLogger logs using:
  - Console: <message>
- FileLogger simulates file output using:
  - File: <message>

### 3) Delegation in Application

Application does not implement logging details itself.
Instead, it forwards log calls to the injected Logger.

This line is the key delegation behavior:
- _logger.log(message)

Because of this, you can switch logger implementations at runtime using:
- swapLogger(Logger newLogger)

## Run the Program

From the project folder:

dart main.dart

## Example Output

Console: Application started
Console: Doing work...
Console: Application finished
--- Swapping logger implementation ---
File: Application started
File: Doing work...
File: Application finished

## Why Delegation Here

Delegation keeps Application flexible and clean:

- You can add new logger types without changing Application.
- You can swap behavior at runtime.
- The logging concern stays separated from business logic.

## Possible Extension

You can add a MultiLogger that forwards each message to multiple loggers (for example, console + file) while keeping Application unchanged.
