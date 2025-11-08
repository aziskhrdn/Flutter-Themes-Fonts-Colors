import 'package:flutter/material.dart';
import 'package:practice_themes/theme/theme_constants.dart';
import 'package:practice_themes/theme/theme_manager.dart';
import 'package:practice_themes/utils/helper_widgets.dart';


void main() {
  runApp(MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
      super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    } 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Themes'),
        actions: [Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue){
          _themeManager.toggleTheme(newValue);
        })],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/profil_picture.png",
                width: 200,
                height: 200,
              ),
              addVerticalSpace(10),
              Text(
                "Your Name",
                style: _textTheme.displayMedium?.copyWith(
                  color: isDark ? Colors.white : Colors.black, fontWeight: FontWeight.bold
                ),
              ),
              addVerticalSpace(10),
              Text(
                "@username",
                style: _textTheme.titleMedium,
              ),
              addVerticalSpace(10),
              Text(
                "This is a simple Project"
              ),
              addVerticalSpace(20),
              TextField(),
              addVerticalSpace(20),
              ElevatedButton(child: Text("Just Click"), onPressed: () {}),
              addVerticalSpace(20),
              ElevatedButton(child: Text("Another Button"), onPressed: () {}),
            ],
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.blue),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}