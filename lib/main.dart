import 'package:flutter/material.dart';
import 'error.dart';
import 'loading.dart';
import 'success.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffdc143c),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .8,
            child: PageView(
              controller: _pageController,
              children: [
                LoadingScreen(),
                SuccessScreen(),
                ErrorScreen(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _pageController.jumpToPage(0);
                    },
                    child: Text("Loading")),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      _pageController.jumpToPage(1);
                    },
                    child: Text("Success")),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      _pageController.jumpToPage(2);
                    },
                    child: Text("Error")),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
