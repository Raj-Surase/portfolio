import 'package:portfolio/views/home/home_view.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();

  static const String INITIALROUTE = "/";

  static final GoRouter router = GoRouter(
    initialLocation: INITIALROUTE,
    routes: [
      GoRoute(
        path: INITIALROUTE,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}

      // GoRoute(
      //   path: COURSEROUTE,
      //   builder: (context, state) {
      //     final courseId = state.uri.queryParameters['courseId'];
      //     return CourseDetails(courseId: courseId.toString());
      //   },
      // ),
// GoRoute(
//         path: CHATROUTE,
//         builder: (context, state) => HomeScreen(initialIndex: 0),
//       ),
//       GoRoute(
//         path: EXPLOREROUTE,
//         builder: (context, state) {
//           final cardId = state.uri.queryParameters['cardId'];
//           return HomeScreen(initialIndex: 1, cardId: cardId);
//         },
//       ),
      
