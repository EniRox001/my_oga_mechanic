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

class WDashboardButton extends StatelessWidget {
  const WDashboardButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
    this.color = Colors.transparent,
  }) : super(key: key);

  final Function() onPressed;
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          color: teal,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.sp)),
        backgroundColor: color,
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: teal,
            ),
            Text(
              text.toUpperCase(),
              style: CustomTextStyle().largeText,
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class WExpWidget extends StatelessWidget {
  const WExpWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: teal,
        borderRadius: BorderRadius.circular(
          50.0.sp,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0.sp,
          ),
        ),
      ),
    );
  }
}

class WMechanicData extends StatelessWidget {
  const WMechanicData({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black38, borderRadius: BorderRadius.circular(10.0.sp)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0.sp),
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}

class WCarNameWidget extends StatelessWidget {
  const WCarNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Text(
            '${vehicleRegistrationOneControllers.makeController}',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        Obx(
          () => Text(
            '${vehicleRegistrationOneControllers.modelController}',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }
}

class WCarDetailsWidget extends StatelessWidget {
  const WCarDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 30.0.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0.sp,
        ),
        border: Border.all(
          color: teal,
          width: 2.0.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Make
            Obx(
              () => Text(
                vehicleRegistrationOneControllers.makeController.value,
                style: CustomTextStyle().largeText,
              ),
            ),
            //Model
            Obx(
              () => Text(
                vehicleRegistrationOneControllers.modelController.value,
                style: CustomTextStyle().largeText,
              ),
            ),
            //Body Build
            Obx(
              () => Text(
                vehicleRegistrationOneControllers.plateNumberController.value,
                style: CustomTextStyle().largeText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
