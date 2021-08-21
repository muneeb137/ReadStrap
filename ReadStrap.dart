import 'dart:ui';
import 'package:flutter/material.dart';

///////////////////////////////////////////////////////////////////////////////
//////////////////////////// Welcome To ReadStrap /////////////////////////////
////////////////////////////////// v 1.0.0 ////////////////////////////////////
///////////////////////////// Created By Muneeb ///////////////////////////////
///////////////////////////////////////////////////////////////////////////////




//////////////1.simple button///////////////
//required property
//onPressed
//Text
//Optional property
//color
//height
//width
//fontSize
//fontColor
////////////////////////////////////////
/////////////// Example ////////////////
////////////////////////////////////////
///
///               SimpleButtom(
//                  text: 'Click Here',
//                  width: 250,
//                  height: 50,
//                  color: Colors.blue,
//                  fontColor: Colors.white,
//                  fontSize: 20,
//                  onPressed: () {
//                   Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => Next()));
//                  }),
///
////////////////////////////////////////
// ignore: non_constant_identifier_names
Widget SimpleButtom({
  required String text,
  double?width,
  double?height,
  Color color = Colors.red,
  double? fontSize,
  Color fontColor = Colors.white,
   required onPressed()
   }){


  return Column(
    children: [
      Container(
    width: width == null ? 250 : width,
    height: height == null ? 50 : height,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
      ),
      onPressed: onPressed,
      child: Text(text,
      style: TextStyle(
        color: fontColor,
        fontSize: fontSize == null ? 20.0 :fontSize,
      )
      )
    )
  ),
    ],
  );
}




/////////////2.Rounded Button//////////////
//required property
//onPressed
//Text
//Optional property
//color
//height
//width
//fontSize
//fontColor

////////////////////////////////////////
/////////////// Example ////////////////
////////////////////////////////////////
///
///              RoundButton(
//                text: 'Round',
//                width: 100,
//                height: 50,
//                color: Colors.blueGrey,
//                fontColor: Colors.white,
//                onPressed: () {
//                  Navigator.push(
//                      context, MaterialPageRoute(builder: (context) => Next()));
//                }),
///
// ignore: non_constant_identifier_names
Widget RoundButton({
  required String text,
  double?width,
  double?height,
  Color color = Colors.red,
  double? fontSize,
  Color fontColor = Colors.white,
   required onPressed()
   }){


  return Column(
    children: [
       Container(
    width: width == null ? 250 : width,
    height: height == null ? 50 : height,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        primary: color,
        onSurface: Colors.amber
      ),
      child: Text(text,
      style: TextStyle(
        color: fontColor,
        fontSize: fontSize == null ? 20 : fontSize,
      ),
      ) 
  )
  ),
    ],
  );
}




////////////////3.IconsButton//////////////////
//text
//fontWeight
//width
//height
//icon
//iconColor
//iconSize
//color
//fontSize
//fontColor
//onPressed
////////////////////////////////////////
/////////////// Example ////////////////
////////////////////////////////////////
///
///            IconsButton(
//                text: 'Download',
//                width: 200,
//                height: 50,
//                onPressed: () {
//                  Navigator.push(
//                      context, MaterialPageRoute(builder: (context) => Next()));
//                },
//                icon: (Icons.download),
//                iconColor: Colors.white,
//                iconSize: 30,
//                fontWeight: FontWeight.normal,
//                color: Colors.red
//                ),
///
// ignore: non_constant_identifier_names
Widget IconsButton({
  required String text,
  FontWeight? fontWeight,
  required double width,
  required double height,
  required icon,
  iconColor,
  double?iconSize,
  Color color = Colors.red,
  double? fontSize,
  Color fontColor = Colors.white,
   required onPressed()
   }){


  return Column(
 children: [
  InkWell(
    onTap: onPressed,
    child: Container(
    color: color,
    padding: EdgeInsets.only(left: 10, right: 10),
    // ignore: unnecessary_null_comparison
    width: width == null ? 170 : width,
    // ignore: unnecessary_null_comparison
    height: height == null ? 50 : height,
  child:  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(icon, color: iconColor, size: iconSize,),
      Text(text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: fontWeight,
        fontSize: 25,
      ),
      ),
    ],
  ),
  )
      )
    ],
  );
}













///////this Modern Navigation Bar like a pinterest//////
///propertiy
///items
///bgColor
///width
///height
///rounded
////////////////////////////////////////
/////////////// Example ////////////////
////////////////////////////////////////
///
///            Navi(
//               bgColor: Colors.black,
//                height: 50,
//                height: 70, if you need classic look use height 70
//                width: 500,
//                rounded: 20,
//                items: [
//                  IconButton(onPressed: () {
//                    Navigator.pushReplacement(
//                    context, 
//                    PageRouteBuilder(
//                    pageBuilder: (context, animation1, animation2) => ThirdPage(),
//                    transitionDuration: Duration(seconds: 0),
//                    }, icon: Icon(Icons.home, color: Colors.white,)),
///                  IconButton(onPressed: (){print('click');}, icon: Icon(Icons.favorite, color: Colors.white,)),
//                  IconButton(onPressed: () {print('click');}, icon: Icon(Icons.wallet_travel, color: Colors.white,)),
//                  IconButton(onPressed: () {print('click');}, icon: Icon(Icons.chat_bubble, color: Colors.white,)),
//                  IconButton(onPressed: () {print('click');}, icon: Icon(Icons.headset, color: Colors.white,)),
////                  IconButton(onPressed: () { print('click');}, icon: Icon(Icons.person, color: Colors.white,)),
////                ],
//               ),
///
// ignore: non_constant_identifier_names
Widget Navi({
  required List<Widget> items,
  Color bgColor = Colors.black,
  double?width,
  double?height,
  double? rounded,
   }){


  return Container(
    margin: EdgeInsets.all(10),
  //  padding: EdgeInsets.only(left: 10, right: 10),
    decoration: BoxDecoration(
       boxShadow: [  
          BoxShadow(
            color: Colors.black,
            blurRadius: 7.0, // soften the shadow
            spreadRadius: 0.1, //extend the shadow
            offset: Offset(
              2.0, // Move to right 10  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          )
        ],
          color: bgColor,//bg color
      borderRadius: BorderRadius.circular(rounded== null ? 40: rounded),
    ),
    width: width == null ? 350 : width,
    height: height == null ? 50 : height,
    child: Material(
      color: Colors.transparent,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: items,
    ), 
    )
     );
  
}






///////////5. Modern Navigation/////////
///items
///bgColor
///circleColors
////////////////////////////////////////
/////////////// Example ////////////////
////////////////////////////////////////
///
///   use only in scaffold
///      bottomNavigationBar: BottomModernNavigation(
//        circleColor: Colors.blue, 
//        bgColor: Colors.black,
//        items: [              
//          IconButton(onPressed: (){ Navigator.pushReplacement(
//            context, 
//            PageRouteBuilder(
//            pageBuilder: (context, animation1, animation2) => ThirdPage(),
//            transitionDuration: Duration(seconds: 0),},splashColor: Colors.blue, icon: Icon(CupertinoIcons.home, color: Colors.white,)),
//          IconButton(onPressed: (){print('click');}, icon: Icon(CupertinoIcons.square_favorites, color: Colors.white,)),
//          IconButton(onPressed: (){print('click');}, icon: Icon(Icons.add, color: Colors.white,)),
//          IconButton(onPressed: (){print('click');}, icon: Icon(CupertinoIcons.bell, color: Colors.white,)),
//          IconButton(onPressed: (){print('click');}, icon: Icon(CupertinoIcons.person, color: Colors.white,)),
//        ]
//      ),
///
// ignore: non_constant_identifier_names
Widget BottomModernNavigation(
  {
    required List<IconButton> items,
    Color?circleColor,
    Color?bgColor,
  }
){

  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      color: bgColor == null ? Colors.black : bgColor,
       boxShadow: [  
          BoxShadow(
            color: Colors.black,
            blurRadius: 7.0, 
            spreadRadius: 0.1, 
            offset: Offset(
              2.0, 
              2.0, 
            ),
          ),
       ]
    ),   
    child: Stack(
      children: [
      Center(
        child: InkWell(
          splashColor: Colors.red.withOpacity(1),
            child: CircleAvatar(
        radius: 20,
        backgroundColor: circleColor == null ? Colors.red : circleColor,
      //  foregroundColor: Colors.white,
      ),
            )
        ),
      
    Material(
      color: Colors.transparent,
      child: Center(
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    ),
    )
    )
      ]),
   
  );
}





///////////6.ModernListTile///////////
/// title,
//  leading,
//  color,
//  fontSize,
//  fontColor,
//  double? rounded,
//  double? radius,
//  Color? circleColor,
//  onTap()?,
////////////////////////////////////////
/////////////// Example ////////////////
////////////////////////////////////////
///
/// ModernListTile(
//          leading: Icon(Icons.accessibility_new_rounded, color: Colors.white,),
//          title: 'Movie',
//          color: Colors.purple,
//          rounded: 40,
//          circleColor: Colors.pinkAccent,
//          fontColor: Colors.white,
//          fontSize: 25,
//          radius: 20,
//          onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
//          }
//        ),
///
// ignore: non_constant_identifier_names
Widget ModernListTile
(
  {
    required String title,
    required Widget leading,
    Color? color,
    double? fontSize,
    Color? fontColor,
    double? rounded,
    double? radius,
    Color? circleColor,
    onTap()?,
  }
)
{
  return  Material(
    color: Colors.transparent,
    child:  InkWell(
    onTap: onTap,
    child: Container(
    margin: EdgeInsets.only(left: 20,right: 20,top:20),
    padding: EdgeInsets.only(left: 50),
   
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
       boxShadow: [  
          BoxShadow(
            color: Colors.black,
            blurRadius: 7.0,
            spreadRadius: 0.1, 
            offset: Offset(
              1.0, 
              1.0,
            ),
          )
        ],
       color: color== null ? Colors.blueAccent : color,
       borderRadius: BorderRadius.circular( rounded == null ? 40 : rounded )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       CircleAvatar(
         radius: radius == null ? 20 : radius,
         backgroundColor: circleColor == null ? Colors.lightBlue : circleColor,
         child: leading,
       ),
       Padding(padding: EdgeInsets.only(left: 20),
       child: Text(title,
        style: TextStyle(
          color: fontColor == null ? Colors.white : fontColor,
          fontSize: fontSize == null ? 25.0 : fontSize,
        ),
        ),
       ),
      ],
    ),
    ),
    ),
  );
}



/// 7.rgb modern avater//
///   image,
//    radius,
//    colors,
//    outline,
////////////////////////////////////////
/////////////// Example ////////////////
////////////////////////////////////////
///
///ModernAvater(
//       image: NetworkImage('https://images.unsplash.com/photo-1616749989787-f7faf71d5466?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80'),
//        colors: [
//              Colors.pink,
//             Colors.red,
//              Colors.yellow,
//           ] ,
//            outline: 10,
//           radius: 70,   
//       )
///
// ignore: non_constant_identifier_names
Widget ModernAvater(
  {
    required ImageProvider image,
    double? radius,
    List<Color>? colors,
    double? outline,
  }
){
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(outline == null ? 10 : outline),
        decoration: BoxDecoration(
          boxShadow: [  
          BoxShadow(
            color: Colors.black26,
            blurRadius: 7.0,
            spreadRadius: 0.1, 
            offset: Offset(
              2.0, 
              2.0,
            ),
          )
        ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors == null ?[
              Colors.red,
              Colors.green,
              Colors.blue,
            ] : colors
            ),
          borderRadius: BorderRadius.circular(100),
        ),
      child: CircleAvatar(
        radius: radius == null ? 60 : radius, 
        backgroundImage: image,
       ),
       )
      ],
    )
  );

}










