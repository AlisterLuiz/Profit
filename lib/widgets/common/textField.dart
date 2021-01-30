import 'package:Profit/utilities/index.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final Function onTap;
  final bool obscureText;
  TextFieldWidget({
    Key key,
    this.hintText,
    this.onTap,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: (obscureText == null) ? false : true,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).accentColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xffEAE2FF).withOpacity(0.05),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffEAE2FF).withOpacity(0.05),
          ),
        ),
        filled: true,
        hintStyle: TextStyle(
          color: Color(0xffB7AAD9),
        ),
        focusColor: Theme.of(context).accentColor,
        hintText: hintText,
        helperStyle: TextStyle(fontSize: 14.0),
        fillColor: Theme.of(context).accentColor.withOpacity(0.05),
      ),
      onTap: onTap,
    );
  }
}
