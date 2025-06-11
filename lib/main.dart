// ignore_for_file: prefer_const_constructors

import 'core/export/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CartProvider()),
          ChangeNotifierProvider(create: (context) => FavoriteProvider()),
          ChangeNotifierProvider(create: (context) => ProfileProvider()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.mulishTextTheme(),
          ),
          home: BottomNavBar(),
        ),
      );
}
