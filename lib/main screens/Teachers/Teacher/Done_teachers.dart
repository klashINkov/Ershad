// Done

// ignore_for_file: must_be_immutab, use_key_in_widget_constructorsle, use_key_in_widget_constructors, must_be_immutable, camel_types, prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_literals_to_create_immutables, camel_case_types, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Teacher/Done_Colleges_Depts.dart';

import 'package:ershad/main screens/Teachers/Done_SignIn.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:firebase_auth/firebase_auth.dart';

// Start Of _Teachers class
class Teachers extends StatefulWidget
{

  @override
  State < Teachers > createState ( ) => _Teachers ( ) ;

}

class _Teachers extends State < Teachers >
{

  var x = temp ( ) ;
  bool  ? islog ;


  @override
  void initState ( )
  {

    super . initState ( ) ;
    var user = FirebaseAuth . instance . currentUser ;

    if ( user == null)
    {
      islog = false ;
    }

    else
    {
      islog = true ;
    }

  }

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar ( backgroundColor : Colors . transparent , elevation : 0 ),

      body : Container
      (

        color : Colors . green . shade900,

        child : Column
        (

          children :
          [

            x . Pic ( context : context , image : "https://cdn.mosoah.com/wp-content/uploads/2019/07/20134500/%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D9%85%D8%AF%D8%B1%D8%B3%D9%8A%D9%86-%D9%81%D9%8A-%D8%AF%D8%A8%D9%8A.jpg" , txt : "مُدرس" , flag : islog! ),

            x . Pic ( context : context , image : "https://www.aljazeera.net/wp-content/uploads/2020/07/%D8%B5%D9%88%D8%B1%D8%A9-%D9%85%D9%8A%D8%AF%D8%A7%D9%86-2020-07-28T025900.778.png?resize=770%2C513" , txt : "طالب" , flag : islog! ),

          ]

        )

      )

    );

  }

}
// End Of _Teachers class

// Start Of _Control Class
class T_Control extends StatelessWidget
{

  var x = temp ( ) ;
  bool bol = true ;

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

          Container
          (

            margin : EdgeInsets . only ( right : 90 ),
            padding : EdgeInsets . all ( 5.0 ),

            decoration : BoxDecoration
            (

              border : Border . all ( width : 5  , color : Colors . blueAccent . shade700 ),
              borderRadius : BorderRadius . circular ( 40 ),
              color : Colors . black

            ),


            child : InkWell
            (

              onTap : ( ) async
              {

                await FirebaseAuth . instance . signOut ( ) ;
                Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Signin ( ) ) ) ;

              },

              child : Text ( "تسجيل الخروج" , style : TextStyle ( color : Colors . white , fontSize : 20 , fontWeight : FontWeight . bold ) )

            )

          ),


          IconButton
          (

            onPressed : ( ) { Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ; },

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

            x . Pic ( context : context , image : "https://cdn.mosoah.com/wp-content/uploads/2019/07/20134500/%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D9%85%D8%AF%D8%B1%D8%B3%D9%8A%D9%86-%D9%81%D9%8A-%D8%AF%D8%A8%D9%8A.jpg" , txt : "إضافة أو تعديل بيانات المدرس" , flag : bol ),

            x . Pic ( context : context , image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe5nhRn8KuW4FOuImeln5gyOe9wXOSuzYQEg&usqp=CAU" , txt : "إضافة أو تعديل بيانات مادة" , flag : bol )

          ]

        )

      )

    );

  }
  // End Of build Widget

}
// End Of _Control Class

// Start Of _colleges Class
class S_T_Colleges extends StatelessWidget
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

        title  : Text ( "الكليات" , style : TextStyle ( fontSize : 25 , color : Colors . white , fontWeight : FontWeight . bold ) ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true,

        actions :
        [

          IconButton
          (

            onPressed : ( ) { Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ; },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ),

      body : Container
      (

        padding : EdgeInsets . only ( right : 5 , left : 5 ),
        decoration : BoxDecoration ( gradient : LinearGradient ( colors : [ Color ( 0xff780206 ) , Color ( 0xFF061161 ) ] ) ),
        child : Grid_View ( )

      )

    );

  }
  // End Of build Widget

  // Start Of Grid View Widget
  Widget Grid_View ( ) => GridView . builder
  (

    gridDelegate : SliverGridDelegateWithFixedCrossAxisCount ( crossAxisCount : 2 ),

    itemCount : x . Items . length,

    itemBuilder : ( context , index )
    {

      var item = x . Items [ index ]  ;

      return GridTile
      (

        child : InkWell
        (

          onTap : ( ) { Grid_View_On_Tap ( item . College_Name , context ) ; },

          child : Image ( image : AssetImage ( item . image ) , fit : BoxFit . fill )

        ),

        footer : Container
        (


          padding : EdgeInsets . only ( left : 15 , right : 15 , bottom : 25 ),

          child : Text ( item . College_Name , textAlign : TextAlign . center , style : TextStyle ( fontWeight : FontWeight . bold , fontSize : 14 , color : Colors . white ) )

        )

      );

    }

  );
  // End Of Grid View Widget

  // Start of Grid View On Tap Function
  void Grid_View_On_Tap ( String College_Name , BuildContext context )
  {

      // Start Of كلية الهندسة
      if ( College_Name ==  "كلية الهندسة" )
      {

        List < String > Colleges_Depts = [ "قسـم هندسة القوى الكهربائية وهندسة الميكاترونيكس" , "قسم الموارد الطبيعية والهندسة الكيمياوية" , "قسم الهندسة المدنية" , "قسم الهندسة الميكانيكية", "قسم الهندسة الميكانيكية" , "قسم هندسة الاتصالات والالكترونيات و الحاسوب" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) ) ;

      }
      // End Of كلية الهندسة

      // Start Of كلية العلوم
      if ( College_Name ==  "كلية العلوم" )
      {

        List < String > Colleges_Depts = [ "قسم الرياضيات" , "قسم العلوم الحياتية" , "قسم الفيزياء التطبيقية" , "قسم الكيمياء وتكنولوجيا الكيمياء" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) ) ;

      }
      // End Of كلية العلوم

      // Start Of كلية تكنولوجيا المعلومات و الاتصالات
      if ( College_Name ==  "كلية تكنولوجيا المعلومات و الاتصالات" )
      {

        List < String > Colleges_Depts = [ "قسم علم الحاسوب" , "قسم نظم المعلومات الحاسوبية" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) ) ;

      }
      // End Of كلية تكنولوجيا المعلومات و الاتصالات

      // Start Of كلية الاعمال
      if ( College_Name ==  "كلية الاعمال" )
      {

        List < String > Colleges_Depts = [ "قسم ادارة الاعمال" , "قسم اقتصاد الأعمال" , "قسم اقتصاد الأعمال" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) ) ;

      }
      // End Of كلية الاعمال

      // Start Of كلية الاداب
      if ( College_Name ==  "كلية الاداب" )
      {

        List < String > Colleges_Depts = [ "قسم اللغة الإنجليزية وآدابها" , "قسم اللغة العربية وآدابها" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) ) ;

      }
      // End Of كلية الاداب

      // Start Of كلية العلوم التربوية
      if ( College_Name ==  "كلية العلوم التربوية" )
      {

        List < String > Colleges_Depts = [ "قسم المناهج والتدريس" , "قسم علم النفس التربوي" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) ) ;

      }
      // End Of كلية العلوم التربوية

  }
  // End of Grid View On Tap Function

}
// End Of _Colleges Class