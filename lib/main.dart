import 'imports.dart';
export 'package:mongo_dart/mongo_dart.dart';

void main() async {
  await connectDB();
  runApp(
    const MyOgaApp(),
  );
}

class MyOgaApp extends StatelessWidget {
  const MyOgaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData.dark(),
          title: 'My Oga App',
          initialRoute: '/dashboard_two',
          getPages: Routes().getPage,
        );
      },
    );
  }
}
