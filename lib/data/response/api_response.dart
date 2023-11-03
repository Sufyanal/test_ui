import 'package:test_ui/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.data, this.status, this.message);

  ApiResponse.loading() : status = Status.loading;
  ApiResponse.complete(this.data) : status = Status.complete;
  ApiResponse.error(this.data) : status = Status.error;

  @override
  String toString() {
    return "Status: $status \n Message : $message \n  Data : $data ";
  }
}
