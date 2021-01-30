import 'package:Profit/utilities/index.dart';
import 'package:Profit/widgets/pieChart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
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
              top: 90,
            ),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
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
                  children: [
                    Container(
                      height: 159,
                      padding: EdgeInsets.all(20),
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color:
                                Theme.of(context).accentColor.withOpacity(0.25),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        color: Color(0xffDDF9E4),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily Tips:',
                            style: TextStyle(
                              color: Theme.of(context).canvasColor,
                              fontSize: 24,
                            ),
                          ),
                          sizedBox(5, 0),
                          Text(
                            'You have been spending a lot of money! Redo your monthly budget to achieve your goals.',
                          ),
                        ],
                      ),
                    ),
                    sizedBox(15, 0),
                    Container(
                      height: 169,
                      padding: EdgeInsets.all(20),
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color:
                                Theme.of(context).accentColor.withOpacity(0.25),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        color: Color(0xffDDF9E4),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reminder:',
                            style: TextStyle(
                              color: Theme.of(context).canvasColor,
                              fontSize: 24,
                            ),
                          ),
                          sizedBox(5, 0),
                          Text(
                            'You have been spending a lot of money! Redo your monthly budget to achieve your goals.',
                          ),
                          sizedBox(10, 0),
                          Center(
                            child: Container(
                              height: 35,
                              width: 203,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xff561cf5).withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 15,
                                      offset: Offset(0, 7),
                                    )
                                  ]),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Monthly Budget',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context).backgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    sizedBox(15, 0),
                    Container(
                      height: 159,
                      padding: EdgeInsets.all(20),
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color:
                                Theme.of(context).accentColor.withOpacity(0.25),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        color: Color(0xffDDF9E4),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Learn: Financial Literacy',
                            style: TextStyle(
                              color: Theme.of(context).canvasColor,
                              fontSize: 24,
                            ),
                          ),
                          sizedBox(5, 0),
                          Text(
                            '- Filing taxes\n- Budgeting for monthly expenses\n- Student loans\n- Investing basics\n- A plan to pay down your debt',
                          ),
                        ],
                      ),
                    ),
                    sizedBox(20, 0),
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
