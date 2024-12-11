class ApiResult<T> {
  final T? data;
  final int? statusCode;
  final String? message;

  // Private constructor to control initialization
  ApiResult._({
    this.data,
    this.statusCode,
    this.message,
  });

  // Factory constructor for success case
  factory ApiResult.success(T data, int statusCode) {
    return ApiResult._(
      data: data,
      statusCode: statusCode,
      message: 'Success',
    );
  }

  // Factory constructor for error case
  factory ApiResult.error(T? data, int statusCode, String message) {
    return ApiResult._(
      data: null,
      statusCode: statusCode,
      message: message,
    );
  }
  bool get isSuccess => statusCode == 200 || statusCode == 201;
  bool get isError => statusCode != 200 || statusCode != 201;
}
