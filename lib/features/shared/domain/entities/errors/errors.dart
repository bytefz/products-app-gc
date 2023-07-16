class ErrorModel {
  final String message;
  final String? code;
  final Function? onError;

  ErrorModel({
    required this.message,
    this.code,
    this.onError,
  });

  @override
  String toString() => 'ErrorModel(message: $message, code: $code)';
}
