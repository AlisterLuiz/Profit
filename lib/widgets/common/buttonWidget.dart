import 'package:financial_app/utilities/index.dart';

class ButtonWidget extends StatelessWidget {
  final double height;
  final String text;
  final Function onTap;

  ButtonWidget({
    Key key,
    this.height,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff561cf5).withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 15,
              offset: Offset(0, 7),
            )
          ]),
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
