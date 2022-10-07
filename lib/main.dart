import 'imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          initialRoute: '/login_signup',
          getPages: Routes().getPage,
        );
      },
    );
  }
}
