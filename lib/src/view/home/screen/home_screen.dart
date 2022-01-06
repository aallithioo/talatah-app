import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:talatah/src/app/widgets/custom_padding.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

double? myWidth;
bool isShow = true;

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  var user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: kPaddingAllLarge,
              child: Column(
                children: [
                  // TODO: add User name
                  Text(
                    'Hello, ${user!.displayName}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  // TODO: add banner
                  // TODO: add search bar
                  // TODO: add popular
                  // TODO: add products
                  // TODO: add reccomended
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
