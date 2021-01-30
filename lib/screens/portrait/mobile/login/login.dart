import 'package:Profit/utilities/index.dart';

class LoginPage extends StatelessWidget {
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
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'pro',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                ),
                TextSpan(
                  text: 'fit',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                ),
              ],
            ),
          ),

          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(
              top: 126,
              left: 25,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let’s Sign You In.',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                sizedBox(15, 0),
                Text(
                  'Welcome Back,',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizedBox(15, 0),
                Text(
                  'You’ve been missed!',
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
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFieldWidget(
                    hintText: 'Email Address',
                    onTap: () {},
                  ),
                  TextFieldWidget(
                    hintText: 'Password',
                    onTap: () {},
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgotPassword');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xffB7AAD9),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  sizedBox(70, 0),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Don’t have an Account?',
                            style: TextStyle(
                              color: Color(0xffB7AAD9),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: '  SIGN UP',
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
                  sizedBox(25, 0),
                  ButtonWidget(
                    text: 'SIGN IN',
                    height: 50,
                    onTap: () {
                      Navigator.pushNamed(context, '/homeView');
                    },
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
