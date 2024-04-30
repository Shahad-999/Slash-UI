import 'package:equatable/equatable.dart';
import 'package:slash/utils/error_status.dart';

class Response<T> extends Equatable{
  final T? data;
  final ErrorStatus? errorStatus;

  const Response({this.data, this.errorStatus})
      : assert(
            (data != null && errorStatus == null) ||
                (data == null && errorStatus != null),
            'you must pass either of data or status code');
            @override

  List<Object?> get props => [data,errorStatus];
}
