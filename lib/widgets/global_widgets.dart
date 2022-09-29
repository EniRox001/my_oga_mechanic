import 'package:my_oga_mechanic/imports.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
    required this.gradientStops,
    required this.child,
  }) : super(key: key);

  final List<double> gradientStops;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final fullHeight = MediaQuery.of(context).size.height;
    final fullWidth = MediaQuery.of(context).size.width;
    return Container(
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
    );
  }
}

class WRegistrationFieldTextField extends StatelessWidget {
  const WRegistrationFieldTextField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.keyboardType,
    this.inputFormatter = const [],
  }) : super(key: key);

  final String hintText;
  final Function(String value) onChanged;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      inputFormatters: inputFormatter,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
        ),
        filled: true,
        fillColor: Colors.black87,
        hintText: hintText.toUpperCase(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
          borderSide: BorderSide(
            width: 3.0.w,
            color: teal,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
          borderSide: BorderSide(
            width: 3.0.w,
            color: teal,
          ),
        ),
      ),
    );
  }
}

class WTextButton extends StatelessWidget {
  const WTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black26),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'next'.toUpperCase(),
              style: CustomTextStyle().largeText,
            ),
          ],
        ),
      ),
    );
  }
}
