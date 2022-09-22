import 'package:my_oga_mechanic/imports.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
    required this.child,
    required this.gradientStops,
  }) : super(key: key);

  final List<double> gradientStops;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final fullHeight = MediaQuery.of(context).size.height;
    final fullWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Container(
        height: fullHeight,
        width: fullWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: gradientStops,
            colors: const [
              Color(0xFF00060C),
              Color(0xFF03182B),
              Color(0xFF00060C),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
