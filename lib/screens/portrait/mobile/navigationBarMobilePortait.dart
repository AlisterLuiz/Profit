import 'package:Profit/utilities/index.dart';

class NavigationBarMobilePortrait extends StatefulWidget {
  @override
  _NavigationBarMobilePortraitState createState() =>
      _NavigationBarMobilePortraitState();
}

class _NavigationBarMobilePortraitState
    extends State<NavigationBarMobilePortrait> {
  @override
  Widget build(BuildContext context) {
    final currentIndex = Provider.of<CurrentIndexProvider>(context);
    final List<Widget> _children = [
      Transactions(), Transactions(), Goals(), Transactions(),
      // Challenges(),
      // Upload(),
      // Notification(),
      // Profile(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: _children[currentIndex.getIndex()],
        bottomNavigationBar: Container(
          height: 85,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Theme.of(context).accentColor.withOpacity(0.25),
                blurRadius: 50,
                spreadRadius: 0,
                offset: Offset(0.0, 0.0),
              )
            ],
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex.getIndex(),
              onTap: (index) {
                setState(() {
                  currentIndex.setIndex(index);
                });
              },
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedItemColor: Color(0xff2925F4),
              unselectedItemColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).backgroundColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    semanticLabel: 'Home Page',
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.trending_up_sharp,
                    semanticLabel: 'Transactions Page',
                  ),
                  label: 'Transactions',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/award.png',
                    color: (currentIndex.getIndex() != 2)
                        ? Theme.of(context).primaryColor
                        : Color(0xff2925F4),
                  ),
                  label: 'Goals',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    semanticLabel: 'Profile',
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
