import 'package:test_ui/data/network/base_api_service.dart';
import 'package:test_ui/model/book_model.dart';
import 'package:test_ui/res/appurl/appurl.dart';

class HomeRepositery {
  final _apiServices = NetworkApiServices();

  Future<BookModel> getBooks() async {
    try {
      final response = await _apiServices.getApi(AppUrl.getBooks);
      return bookModelFromJson(response);
    } catch (e) {
      return BookModel();
    }
  }
}
