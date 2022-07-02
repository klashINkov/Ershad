// Done

// ignore_for_file: must_be_immutab, use_key_in_widget_constructorsle, use_key_in_widget_constructors, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Done_Colleges_Doctors.dart';

// Start Of _Teachers class
class Teachers extends StatelessWidget
{

  var x = temp ( ) ;

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        backgroundColor : Colors . transparent,
        elevation : 0

      ),

      body : Container
      (

        color : Colors . green . shade900,

        child : Column
        (

          children :
          [

            x . Pic ( context : context , image : "https://cdn.mosoah.com/wp-content/uploads/2019/07/20134500/%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D9%85%D8%AF%D8%B1%D8%B3%D9%8A%D9%86-%D9%81%D9%8A-%D8%AF%D8%A8%D9%8A.jpg" , txt : "مُدرس" ),

            x . Pic ( context : context , image : "https://www.aljazeera.net/wp-content/uploads/2020/07/%D8%B5%D9%88%D8%B1%D8%A9-%D9%85%D9%8A%D8%AF%D8%A7%D9%86-2020-07-28T025900.778.png?resize=770%2C513" , txt : "طالب" ),

          ]

        )

      )

    );

  }
  // End Of build Widget

}
// End Of _Teachers class

// Start Of _Control Class
class Control extends StatelessWidget
{

  var x = temp ( ) ;

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar :  AppBar
      (

        backgroundColor : Colors . transparent,
        elevation : 0,

        actions :
        [

          IconButton
            (

              onPressed : ( )
              {

                Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ;

              },

              icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ),

      body : Container
      (

        child : Column
          (

            mainAxisAlignment : MainAxisAlignment . spaceEvenly,

            children :
            [

              x . Pic ( context : context , image : "https://cdn.mosoah.com/wp-content/uploads/2019/07/20134500/%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D9%85%D8%AF%D8%B1%D8%B3%D9%8A%D9%86-%D9%81%D9%8A-%D8%AF%D8%A8%D9%8A.jpg" , txt : "إضافة أو تعديل بيانات المدرس" ),

              x . Pic ( context : context , image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe5nhRn8KuW4FOuImeln5gyOe9wXOSuzYQEg&usqp=CAU" , txt : "إضافة أو تعديل بيانات مادة" )

            ]

        )

      )

    );

  }
  // End Of build Widget

}
// End Of _Control Class

// Start Of _colleges Class
class colleges extends StatelessWidget
{

  var x = temp ( ) ;

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title  : Padding
        (

          padding : EdgeInsets . only ( top : 20 ),

          child : Text
          (

            "الكليات",

            style : TextStyle
            (

              fontSize : 25,
              color : Colors . white,
              fontWeight : FontWeight . bold

            ),

            textAlign : TextAlign . center

          )

        ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true,

        actions :
        [

          IconButton
          (

            onPressed : ( )
            {

              Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ;

            },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

        )

        ]

      ),

      body : Container
      (

        padding : EdgeInsets . only ( top : 15 , right : 5 , left : 5 ),
        color : Colors . green . shade900 ,
        child : Grid_View ( )

      )

    );

  }
  // End Of build Widget

  // Start Of Grid View Widget
  Widget Grid_View ( ) => GridView . builder
  (

    gridDelegate : SliverGridDelegateWithFixedCrossAxisCount
    (

      crossAxisCount : 2,
      crossAxisSpacing : 10,
      mainAxisSpacing : 20

    ),

    itemCount : x . Items . length,
    itemBuilder : ( context , index )
    {

      var item = x . Items [ index ]  ;

      return GridTile
      (

        child : InkWell
        (

          onTap : ( ) { Grid_View_On_Tap ( index , item . str , context ) ; },

          child : Image
          (

            image : AssetImage ( item . image ),
            fit : BoxFit . fill,

          )

        ),

        footer : Container
        (


          padding : EdgeInsets . only ( left : 15 , right : 15 , bottom : 25 ),

          child : Text
          (

            item . str,

            style : TextStyle
            (

              fontWeight: FontWeight . bold,
              fontSize : 14,
              color : Colors . white

            ),

            textAlign : TextAlign . center

          )

        )

      );

    }

  );
  // End Of Grid View Widget

  // Start of Grid View On Tap Function
  void Grid_View_On_Tap ( int index , String item , BuildContext context )
  {

    // Start Of Switch
    switch ( index )
    {

      // Start Of كلية الهندسة case
      case 0 :
      {

        List < String > ss = [ ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_Doctors ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية الهندسة Case

      // Start Of كلية العلوم Case
      case 1 :
      {

        List < String > ss = [ ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_Doctors ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية العلوم Case

      // Start Of كلية تكنولوجيا المعلومات و الاتصالات Case
      case 2 :
      {

        List < String > ss = [ ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_Doctors ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية تكنولوجيا المعلومات و الاتصالات Case

      // Start Of كلية الاعمال Case
      case 3 :
      {

        List < String > ss = [ ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_Doctors ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية الاعمال case

      // Start Of كلية الاداب Case
      case 4 :
      {

        List < String > ss = [ ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_Doctors ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية الاداب case

      // Start Of كلية العلوم التربوية Case
      case 5 :
      {

        List < String > ss = [ ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_Doctors ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية العلوم التربوية Case

    }
    // End Of Switch

  }
  // End of Grid View On Tap Function

}
// End Of _Colleges Class