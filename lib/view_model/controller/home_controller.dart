import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_ui/data/response/status.dart';
import 'package:test_ui/model/book_model.dart';
import 'package:test_ui/repository/book_repository.dart';
import 'package:test_ui/res/color/colors.dart';

class HomeController extends GetxController {
  final HomeRepositery _homeRepositery = HomeRepositery();
  RxList<Book> books = <Book>[].obs;
  var rxRequestStatus = Status.loading.obs;
  RxBool loading = false.obs;

  filterBooks(String query) {
    if (query.isEmpty) {
      Text(
        "Empty",
        style: TextStyle(color: AppColors.textColor),
      );
      // books.assignAll(books);
    } else {
      var filteredBooks = books
          .where(
              (book) => book.title!.toLowerCase().contains(query.toLowerCase()))
          .toList();
      books.assignAll(filteredBooks);
    }
  }

  getBooks() async {
    loading.value = true;
    final bookData = await _homeRepositery.getBooks();
    books.value = bookData.data!;
    loading.value = false;
    print(books);
  }
}
