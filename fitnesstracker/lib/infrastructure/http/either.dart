import './error.dart';

class Either<T> {
  final T? val;
  final Error? error;

  Either({this.val, this.error});

  bool get hasError => error != null;
}
