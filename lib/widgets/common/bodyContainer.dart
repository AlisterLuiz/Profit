import 'package:financial_app/utilities/index.dart';

class BodyContainer extends StatelessWidget {
  final Widget child;
  BodyContainer({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 35,
        left: 25,
        right: 25,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: child,
    );
  }
}
