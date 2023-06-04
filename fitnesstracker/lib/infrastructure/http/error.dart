import 'package:equatable/equatable.dart';

class Error extends Equatable {
  String message;

  Error(this.message);

  @override
  String toString() {
    return "Error: $message";
  }

  @override
  List<Object?> get props => [message];
}

