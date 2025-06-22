abstract class ApiResult<T> {
  const ApiResult();

  R when<R>({
    required R Function(T data) success,
    required R Function(String message) failure,
  }) {
    if (this is Success<T>) {
      return success((this as Success<T>).data);
    } else if (this is Failure<T>) {
      return failure((this as Failure<T>).message);
    } else {
      throw Exception('Unhandled case in when()');
    }
  }

  R maybeWhen<R>({
    R Function(T data)? success,
    R Function(String message)? failure,
    required R Function() orElse,
  }) {
    if (this is Success<T> && success != null) {
      return success((this as Success<T>).data);
    } else if (this is Failure<T> && failure != null) {
      return failure((this as Failure<T>).message);
    } else {
      return orElse();
    }
  }

  R map<R>({
    required R Function(Success<T> s) success,
    required R Function(Failure<T> f) failure,
  }) {
    if (this is Success<T>) {
      return success(this as Success<T>);
    } else if (this is Failure<T>) {
      return failure(this as Failure<T>);
    } else {
      throw Exception('Unhandled case in map()');
    }
  }

  R maybeMap<R>({
    R Function(Success<T> s)? success,
    R Function(Failure<T> f)? failure,
    required R Function() orElse,
  }) {
    if (this is Success<T> && success != null) {
      return success(this as Success<T>);
    } else if (this is Failure<T> && failure != null) {
      return failure(this as Failure<T>);
    } else {
      return orElse();
    }
  }
}

class Success<T> extends ApiResult<T> {
  final T data;

  const Success(this.data);

  Success<T> copyWith({T? data}) {
    return Success<T>(data ?? this.data);
  }

  @override
  String toString() => 'Success($data)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Success<T> && runtimeType == other.runtimeType && data == other.data;

  @override
  int get hashCode => data.hashCode;
}

class Failure<T> extends ApiResult<T> {
  final String message;

  const Failure(this.message);

  Failure<T> copyWith({String? message}) {
    return Failure<T>(message ?? this.message);
  }

  @override
  String toString() => 'Failure($message)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Failure<T> && runtimeType == other.runtimeType && message == other.message;

  @override
  int get hashCode => message.hashCode;
}
