import 'package:financial_app/utilities/index.dart';

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
      Home(),
      Home(),
      Home(),
      Home(),
      Home(),
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
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedItemColor: Color(0xff150443),
              unselectedItemColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).backgroundColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 0)
                        ? Icons.home
                        : Icons.home_outlined,
                    semanticLabel: 'Home Page',
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 1)
                        ? Icons.comment_rounded
                        :  Icons.comment_outlined,
                    semanticLabel: 'Chats Page',
                  ),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0xff000000).withOpacity(0.25),
                            // blurRadius: 5.0,
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0.0, 4.0))
                      ],
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Theme.of(context).backgroundColor,
                      size: 30,
                    ),
                  ),
                  label: 'Camera',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 3)
                        ? Icons.notifications
                        : Icons.notifications_outlined,
                    semanticLabel: 'Notification Page',
                  ),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    (currentIndex.getIndex() == 4)
                        ? Icons.person
                        : Icons.person_outline,
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
