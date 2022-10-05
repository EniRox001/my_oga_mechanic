import 'package:my_oga_mechanic/imports.dart';

class AccidentServiceSelection extends StatelessWidget {
  const AccidentServiceSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      gradientStops: const [
        0.1,
        0.2,
        0.8,
      ],
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            32.0.sp,
          ),
          child: Column(
            children: const [
              WCarNameWidget(),
              WCarDetailsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
