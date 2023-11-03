import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_ui/data/network/base_api_service.dart';
import 'package:test_ui/data/response/status.dart';
import 'package:test_ui/model/book_model.dart';
import 'package:test_ui/res/asset/app_asset.dart';
import 'package:test_ui/res/color/colors.dart';
import 'package:test_ui/res/components/appbar.dart';
import 'package:test_ui/res/components/sizedbox.dart';
import 'package:test_ui/res/text/text.dart';
import 'package:test_ui/routes/routes_name.dart';
import 'package:test_ui/view/book_screen/books_screen.dart';
import 'package:test_ui/view/home_screen/widgets/serchbar.dart';
import 'package:test_ui/view_model/controller/home_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeController = Get.put(HomeController());
  bool isFavorite = true;

  @override
  void initState() {
    homeController.getBooks();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: Appbar(
        actions: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppImage.dp,
        ),
        name: AppText.nick,
      ).appbar(context),
      body: Column(
        children: [
          10.h.sbh,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20).w,
            child: SizedBox(
                height: 45.h,
                child: TextField(
                    controller: searchController,
                    onChanged: (first) {
                      homeController.filterBooks(first);
                    },
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: AppColors.searchColor,
                          ),
                        ),
                        hintText: AppText.search,
                        hintStyle: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                        fillColor: AppColors.searchbarColor,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.sp))))),
          ),
          10.h.sbh,
          Obx(() => homeController.loading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Center(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 6,
                          childAspectRatio: 0.5,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: homeController.books.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(BookScreen(
                                  book: homeController.books[index]));
                            },
                            child: Container(
                              // margin: const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "${homeController.books[index].imageLink}",
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 120, top: 5, right: 5),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(200),
                                            color: AppColors.bgColor,
                                          ),
                                          child: Icon(
                                            isFavorite == true
                                                ? Icons.favorite
                                                : Icons.favorite_border_rounded,
                                            size: 18,
                                            color: isFavorite == true
                                                ? Colors.red
                                                : Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "${homeController.books[index].title}",
                                    maxLines: 1,
                                    // 'ff',
                                    style:
                                        TextStyle(color: AppColors.textColor),
                                  ),
                                  5.h.sbh,
                                  Row(
                                    children: [
                                      RatingBar(
                                          initialRating: double.parse(
                                              homeController
                                                  .books[index].rating!
                                                  .toString()),
                                          ignoreGestures: true,
                                          itemSize: 15,
                                          ratingWidget: RatingWidget(
                                            full: Icon(
                                              Icons.star,
                                              color: AppColors.starColor,
                                            ),
                                            half: Icon(
                                              Icons.star,
                                              color: AppColors.starColor,
                                            ),
                                            empty: Icon(
                                              Icons.star,
                                              color: AppColors.ratingColor,
                                            ),
                                          ),
                                          onRatingUpdate: ((value) {})),
                                      Text(
                                        "${homeController.books[index].reviews}",
                                        style: TextStyle(
                                            color: AppColors.ratingColor,
                                            fontSize: 10.sp),
                                      ),
                                    ],
                                  ),
                                  5.h.sbh,
                                  Text(
                                    "\$ ${homeController.books[index].price}",
                                    style: TextStyle(
                                        color: AppColors.textColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                )),
        ],
      ),
    ));
  }
}
