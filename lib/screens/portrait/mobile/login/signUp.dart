import 'package:Profit/utilities/index.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      // set the desired height
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          screenHeight(context) * 0.42,
        ),
        child: AppBar(
          // Don't show the leading button
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).accentColor,
          titleSpacing: 25,
          title: kappBarText,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(
              top: 126,
              left: 25,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey There...',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                sizedBox(15, 0),
                Text(
                  'Join Profit',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizedBox(15, 0),
                Text(
                  'Create An Account!',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: BodyContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldWidget(
                    hintText: 'Name',
                    onTap: () {},
                  ),
                  TextFieldWidget(
                    hintText: 'Email Address',
                    onTap: () {},
                  ),
                  TextFieldWidget(
                    hintText: 'Password',
                    onTap: () {},
                  ),
                  TextFieldWidget(
                    hintText: 'Confirm Password',
                    onTap: () {},
                  ),
                  sizedBox(25, 0),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Already have an Account?',
                            style: TextStyle(
                              color: Color(0xffB7AAD9),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: '  SIGN IN',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  sizedBox(15, 0),
                  ButtonWidget(
                    text: 'SIGN UP',
                    height: 50,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
