import 'package:Profit/utilities/index.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  List sortBy = ['Day', 'Week', 'Month', 'Year'];
  int currentSort = 0;
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
                top: 40.0,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Income',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$2542.25',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spent',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$2500.00',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // sizedBox(15, 0),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 200,
            ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Sumup',
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 22,
                    ),
                  ),
                  sizedBox(10, 0),
                  Container(
                    height: screenHeight(context) * 0.05,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: sortBy.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (currentSort == index)
                                ? Theme.of(context).canvasColor
                                : Color(0xffE9EBFF),
                          ),
                          child: Center(
                            child: Text(
                              sortBy[index],
                              style: TextStyle(
                                color: (currentSort == index)
                                    ? Theme.of(context).backgroundColor
                                    : Theme.of(context).canvasColor,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/images/background.png'),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   child: Container(
      //     // height: screenHeight(context) * 0.2,
      //     padding: EdgeInsets.only(
      //       top: 500,
      //       left: 25,
      //       right: 25,
      //     ),
      //     decoration: BoxDecoration(
      //       color: Theme.of(context).backgroundColor,
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(25),
      //         // topRight: Radius.circular(25),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
