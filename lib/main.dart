import 'package:flutter/cupertino.dart';
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
  double width= MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text('Profile Facebook'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: [
                Spacer(),
                Text(
                  "Jonathan Jibikilayi",
                  style: TextStyle(
                      fontStyle:  FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ) ,
                ),
                Spacer()
              ],
            ),

            Padding(
              padding:EdgeInsets.all(10),
              child: Text(
                "La famille qui n'a pas trop de richesses, et qui ne souffre pas la pauvreté, jouit d'un bonheur désirable ",
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
            Divider(thickness: 2,),
            sectionTitltText("A propos de moi"),
            aboutRow(icon: Icons.house, text:" Laouina El wahat, Tunis"),
            aboutRow(icon: Icons.work, text:" Software Developper"),
            aboutRow(icon: Icons.favorite, text:" Relation Compliquée"),

            Divider(thickness: 2,),
            sectionTitltText("Amis"),
            Row(
              children: [
                allFriend(  width/3.5)
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

Widget sectionTitltText(String text){
  return Padding(
      padding: EdgeInsets.all(5),
     child: Text(
       text,
       style: TextStyle(
         fontWeight: FontWeight.w600,
         fontSize: 18

       ),
     ),

  );
}

Widget aboutRow({ required IconData icon, required String text} ){
  return Row(
    children: [
      
      Icon(icon),
      Padding(
          padding: EdgeInsets.all(5),
        child: Text(text),
      )
    ],
  );
}
Column friendsImage(String name, String imagePath, double width){

  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(5),
        width: width,
        height: width,

        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color:  Colors.grey)],
            color: Colors.blue
        ),
      ),
      Text(name)
    ],
  );
}

Row allFriend( double width) {
  Map<String, String> friends = {
    "David": "images/cat.jpg",
    "Emmanuel": "images/sunflower.jpg",
     "Danny": "images/danny.jpg"
  };
  List<Widget> children =[];
  friends.forEach((name, imagePath) {
    children.add(friendsImage( name,  imagePath,  width));
  });
  return Row(children: children,);
}








}
