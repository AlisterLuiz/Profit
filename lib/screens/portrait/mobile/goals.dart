import 'package:Profit/utilities/index.dart';
import 'package:Profit/widgets/pieChart.dart';

class Goals extends StatefulWidget {
  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
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
                      'Goals',
                      style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 22,
                      ),
                    ),
                    sizedBox(2, 0),
                    Text(
                      'Add your Financial Goals',
                      style: TextStyle(
                        color: Color(0xff404040),
                        fontSize: 16,
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
                          return InkWell(
                            onTap: () {
                              setState(() {
                                currentSort = index;
                              });
                            },
                            child: Container(
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
                            ),
                          );
                        },
                      ),
                    ),
                    sizedBox(15, 0),
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).canvasColor,
                        radius: 20,
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).backgroundColor,
                        ),
                      ),
                    ),
                    sizedBox(3, 0),
                    Center(
                      child: Text(
                        'Add New Goal',
                        style: TextStyle(
                          color: Theme.of(context).canvasColor,
                        ),
                      ),
                    ),
                    sizedBox(10, 0),
                    Text(
                      'Amount available to achieve your goals',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Color(0xffF47090),
                      ),
                    ),
                    Center(
                      child: Text(
                        '\$292.25',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Color(0xffF47090),
                        ),
                      ),
                    ),
                    sizedBox(10, 0),
                    GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: screenHeight(context) *
                              1.8 /
                              screenWidth(context) *
                              0.3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10),
                            // height: screenHeight(context) * 0.22,
                            // width: screenWidth(context) * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Color(0xffDDF9E4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        gridView[index][0],
                                        style: TextStyle(
                                          fontSize: 23.98,
                                          color: Theme.of(context).accentColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        gridView[index][1],
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).accentColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        gridView[index][2],
                                        height: 35,
                                        width: 35,
                                      ),
                                      Text(
                                        gridView[index][3],
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Theme.of(context).accentColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
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
