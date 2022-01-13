import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../quiz/screen/quiz_screen.dart';
import '../../search/screen/search_screen.dart';
import '../../explore/screen/explore_screen.dart';
import '../../../app/theme/color.dart';
import '../../../app/theme/size.dart';
import '../../../app/widgets/custom_appbar.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({Key? key}) : super(key: key);

  @override
  _ControllerScreenState createState() => _ControllerScreenState();
}

var user = FirebaseAuth.instance.currentUser;
int _selectedIndex = 0;
final List<Widget> _pages = [
  const ExploreScreen(),
  const SearchScreen(),
  const ExploreScreen(),
  const QuizListScreen(),
  const ExploreScreen(),
];

class _ControllerScreenState extends State<ControllerScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Talatah'),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: kBlueColorShade400,
        selectedIconTheme: IconThemeData(color: kDarkColor),
        unselectedIconTheme: IconThemeData(color: kGreyColorShade300),
        backgroundColor: kTransparentColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: kSizeMedium,
        onTap: _onItemTapped,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'My Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.quiz_rounded,
            ),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
