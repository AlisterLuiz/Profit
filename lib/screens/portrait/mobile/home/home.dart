import 'package:financial_app/utilities/index.dart';

class Home extends StatelessWidget {
  List postAwardList = [];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      // set the desired height
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          screenHeight(context) * 0.23,
        ),
        child: AppBar(
          // Don't show the leading button
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IconButton(
                  icon: Container(
                    height: 24,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Color(0xff936df9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/AppBar/coin.png'),
                        Text(
                          '300',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(flex: 3, child: Center(child: kappBarText)),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ],
          ),
          leadingWidth: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).accentColor,
          actions: [],
          titleSpacing: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(
              top: 80,
              left: 25,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Posts',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                sizedBox(15, 0),
              ],
            ),
          ),
        ),
      ),
      body: BodyContainer(
        child: RefreshIndicator(
          onRefresh: () => null,
          child: AnimationLimiter(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              // padding: EdgeInsets.symmetric(
              //   vertical: 10,
              // ),
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  delay: const Duration(milliseconds: 375),
                  child: SlideAnimation(
                    horizontalOffset: 200.0,
                    child: FadeInAnimation(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xff150433).withOpacity(0.15),
                                blurRadius: 25,
                                spreadRadius: 0,
                                offset: Offset(0.0, 0.0),
                              )
                            ],
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Provider.of<CurrentIndexProvider>(
                                              context,
                                              listen: false)
                                          .setIndex(4);
                                    },
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/AppBar/coin.png',
                                            height: 35,
                                            width: 35,
                                          ),
                                        ),
                                        sizedBox(0, 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Noblah Zoldyck',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'Dubai, UAE',
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .secondaryHeaderColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              '20th Aug 2020',
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .secondaryHeaderColor,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.more_horiz,
                                      color: Colors.black,
                                    ),
                                    onPressed: () => print('more'),
                                  )
                                ],
                              ),
                              sizedBox(15, 0),
                              Center(
                                child: Container(
                                  height: screenHeight(context) * 0.33,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: ExpandText(
                                  'Mollit tempor esse consectetur deserunt ullamco nostrud pariatur quis ut excepteur. Lorem quis veniam id deserunt laboris. Pariatur enim exercitation voluptate commodo ea ex. Aliquip ullamco officia non esse. Nulla velit est sint aute. Eiusmod ullamco eu cupidatat Lorem minim mollit consectetur sit nostrud.',
                                  textAlign: TextAlign.justify,
                                  maxLines: 2,
                                  hideArrowOnExpanded: true,
                                  overflow: TextOverflow.fade,
                                  expandOnGesture: false,
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  arrowColor: Theme.of(context).accentColor,
                                ),
                              ),
                              sizedBox(15, 0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(Icons.thumb_up,
                                            size: 20,
                                            color: Theme.of(context)
                                                .accentColor),
                                      ),
                                      sizedBox(0, 5),
                                      Text(
                                        '12',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      sizedBox(0, 5),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.thumb_down,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {},
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.chat_bubble,
                                          size: 20,
                                        ),
                                        sizedBox(0, 5),
                                        Text(
                                          '20',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      sizedBox(0, 15),
                                      Icon(
                                        Icons.share,
                                        size: 20,
                                      ),
                                      sizedBox(0, 15),
                                      Icon(
                                        //Icons.star_outline,
                                        Icons.star_border,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
