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
            Text(
                "Jonathan Jibikilayi",
              style: TextStyle(
                fontStyle:  FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ) ,
            ),
            Padding(
              padding:EdgeInsets.all(10),
              child: Text(
                "Ici s'arrête le monde, dit l'aveugle ayant touché le mur",
                style: TextStyle(
                    color: Colors.grey,
                    fontStyle:FontStyle.italic
                ),
                textAlign: TextAlign.center,
              ),
            ),
          Row(
            children: [
              Expanded(child: buttonContainer(text: "Modifier le profil") ),

              buttonContainer(icon: Icons.border_color)

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

Container buttonContainer({IconData? icon, String? text}){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10),
    padding: EdgeInsets.all(15),
    decoration : BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue
    ),
    child: (icon == null)
      ? Center(child: Text(text ?? "", style:TextStyle(color: Colors.white),),)
      : Icon(icon, color: Colors.white,),
    height: 50,


  );
}



}