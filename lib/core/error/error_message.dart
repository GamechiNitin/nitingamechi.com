// core/data/error_message.dart
class ErrorMessage {
  final String message;
  final int? statusCode;

  ErrorMessage({this.statusCode, required this.message});

  @override
  String toString() {
    return 'Error: $message';
  }
}
