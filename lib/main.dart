import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  BasicPages(),
    );
  }
}

class BasicPages extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text('Profile Facebook'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset("images/cover.jpg",height: 200, fit: BoxFit.cover ,),
                Padding(
                  padding: EdgeInsets.only(top: 125),
                  child: CircleAvatar(radius: 75, backgroundColor:  Colors.white,
                    child:  myProfilePic(72) ,

                  )
                ),
            ],
        ),
        ],
        )  ,
      ),
    );
  }
CircleAvatar myProfilePic(double raduis){
  return CircleAvatar(radius: raduis, backgroundImage: AssetImage("images/profile.jpg"));

}
}