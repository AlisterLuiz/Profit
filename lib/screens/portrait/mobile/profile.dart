import 'package:Profit/utilities/index.dart';
import 'package:Profit/widgets/pieChart.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List sortBy = ['Day', 'Week', 'Month', 'Year'];
  int currentSort = 0;
  List gridView = [
    ['\$499', '01/02/21', 'assets/images/console.png', 'Xbox Series X'],
    ['\$70', '15/02/21', 'assets/images/present.png', 'Mom’s Gift'],
    ['\$150', '07/02/21', 'assets/images/bicycle.png', 'Buy a Bicycle'],
    ['\$280', '15/02/21', 'assets/images/graduate.png', 'College Debts'],
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background3.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Emoji.svg',
                          semanticsLabel: 'Profit Logo',
                          height: 46.57,
                          width: 50,
                        ),
                        sizedBox(0, 10),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'pro',
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 64,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                              TextSpan(
                                text: 'fit',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 64,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 160,
            ),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                // topRight: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Profile',
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 22,
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      'Personal Info',
                      style: TextStyle(
                        color: Color(0xff243656),
                        fontSize: 14,
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      'Name: John Doe',
                      style: TextStyle(
                        color: Color(0xff243656),
                        fontSize: 16,
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      'Email: johndoe@gmail.com',
                      style: TextStyle(
                        color: Color(0xff243656),
                        fontSize: 16,
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      'Phone: 612612261738',
                      style: TextStyle(
                        color: Color(0xff243656),
                        fontSize: 16,
                      ),
                    ),
                    sizedBox(10, 0),
                    Divider(color: Theme.of(context).accentColor),
                    sizedBox(10, 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Banking Cards',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 14,
                            ),
                            Text(
                              'Add',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                    sizedBox(10, 0),
                    Container(
                      height: 72,
                      width: screenWidth(context),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffDDF9E4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/visa.png',
                            width: 34,
                            height: 12,
                          ),
                          sizedBox(0, 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Visa',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              sizedBox(3, 0),
                              Text(
                                '4*** **** ****2 4746',
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff243656)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    sizedBox(10, 0),
                    Container(
                      height: 72,
                      width: screenWidth(context),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffDDF9E4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/mastercard.png',
                            width: 34,
                            height: 12,
                          ),
                          sizedBox(0, 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mastercard',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              sizedBox(3, 0),
                              Text(
                                '4*** **** ****3 5236',
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff243656)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      '** Your transactions will be analyzed according to your cards.',
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 11,
                      ),
                    ),
                    sizedBox(10, 0),
                    Divider(color: Theme.of(context).accentColor),
                    sizedBox(10, 0),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: Color(0xff243656),
                        fontSize: 14,
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      'Delete my Account',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      'Download Data',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    sizedBox(10, 0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
