
import 'package:get/get.dart';
import 'package:test_ui/routes/routes_name.dart';
import 'package:test_ui/view/book_screen/books_screen.dart';
import 'package:test_ui/view/home_screen/home_page.dart';
import 'package:test_ui/view/splash.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name:RoutesName.splashScreen ,
       page: ()=> const Splash(),
       transition: Transition.leftToRightWithFade,
       transitionDuration: const Duration(microseconds: 200),
       ),
        GetPage(
          name: RoutesName.homeScreen,
          page: () => const Home(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(microseconds: 200),
        ),
        GetPage(
          name: RoutesName.bookScreen,
          page: () =>  BookScreen(book:null ,),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(microseconds: 200),
        )
  ];
}