import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickie/ViewModels/newsArticleListViewModel.dart';
import 'package:quickie/pages/bookmarkpage.dart';
import 'package:quickie/widgets/bottomNav.dart';
import 'pages/NewsListPage.dart';
import 'pages/bookmarkPage.dart';
import 'dart:async';
import 'package:flutter/services.dart';
//void main() =>runApp(MyApp());


Future main() async {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.landscapeLeft]);
  WidgetsFlutterBinding.ensureInitialized();
 // await Permission.camera.request();
//  await Permission.microphone.request();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NewsArticleListViewModel>(
     create:  (_)=>NewsArticleListViewModel(), 
          child: MaterialApp(
        title: 'Quick Summary',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch:Colors.teal,
        //  accentColor:Colors.tealAccent,
        ),
        home:BottomNav(),
        // routes: <String, WidgetBuilder>{
        //   "/InputScreen":(BuildContext context) =>InputScreen(),
        // },
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => NewsListPage(),
          
                  },
                )
              );
            }
          
  
}
