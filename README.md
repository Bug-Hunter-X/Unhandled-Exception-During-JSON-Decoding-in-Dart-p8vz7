# Unhandled Exception During JSON Decoding in Dart

This repository demonstrates a common error in Dart applications: failure to handle exceptions thrown during JSON decoding using `jsonDecode`.  The `bug.dart` file shows the erroneous code, while `bugSolution.dart` provides a corrected version.

The original code lacks proper error handling, leading to potential app crashes if the JSON data is malformed or the API returns an unexpected response.

The solution implements robust error handling using a `try-catch` block to gracefully manage potential `FormatException` exceptions and other network errors.