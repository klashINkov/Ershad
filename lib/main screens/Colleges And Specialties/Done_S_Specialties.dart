// Done

// ignore_for_file: must_be_immutable, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, file_names, camel_case_types

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Colleges And Specialties/Subject/Done_S_Subjects.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

// Start Of Specialties Class
class S_Specialties extends StatelessWidget
{

  var x = temp ( ) ;
  final String College_Name ;
  final List < String > Colleges_Specialties ;

  S_Specialties ( { required this . College_Name , required this . Colleges_Specialties } ) ;

  // Start of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title : Text ( College_Name , style : TextStyle ( fontSize : 18 , color : Colors . white , fontWeight : FontWeight . bold ) ),

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

        decoration : BoxDecoration ( gradient : LinearGradient ( colors : [ Color ( 0xff780206 ) , Color ( 0xFF061161 ) ] ) ),

        child : Column
        (

          children :
          [

            // Start of Horizontal List View
            Stack
            (

              children :
              [

                // Start of Horizontal List View
                Container
                (

                  height : 255,
                  padding : EdgeInsets . only ( top : 80 ),

                  child : ListView . separated
                  (

                    scrollDirection : Axis . horizontal,
                    separatorBuilder : ( context , _ ) => SizedBox ( ),
                    itemCount : x . Items . length,
                    itemBuilder : ( context , index ) => Horizontal_List_View ( College_Name : x . Items [ index ] . College_Name , image : x . Items [ index ] . image , context : context )

                  )

                ),
                // End of Horizontal List View

                // Start Of Arrow Back
                x . Arrows (top : 115 , left : 0 , icon : Icons . arrow_back_ios_sharp ),
                // End Of Arrow Back

                // Start Of Arrow Forward
                x . Arrows (top : 115 , left : 330 , icon : Icons . arrow_forward_ios )
                // End Of Arrow Forward

              ]

            ),
            // End of Horizontal List View

            // Start of List View
            Stack
            (

              children :
              [

                // Start Of تخصصات الكلية Text
                Padding
                (

                  padding : EdgeInsets . only ( top : 30 ),

                  child : Center
                  (

                    child : Text ( "تخصصات الكلية" , style : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ) )

                  )

                ),
                // End Of تخصصات الكلية Text

                // STart Of List View
                Container
                (

                  margin : EdgeInsets . only ( left : 15 , right : 25 , top : 15 ),
                  height : 400,

                  decoration : BoxDecoration
                  (

                    border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                    borderRadius : BorderRadius . circular ( 50 ),

                  ),

                  child : Padding
                  (

                    padding : EdgeInsets . only ( top : 50 , bottom : 15 ),

                    child : Column
                    (

                      mainAxisAlignment : MainAxisAlignment . center,

                      children :
                      [

                        List_View ( )

                      ]

                    )

                  )

                ),
                // End Of List View

                // Start Of Arrow Up
                x . Arrows (top : 40 , left : 342 , icon : Icons . keyboard_arrow_up ),
                // End Of Arrow Up

                // Start Of Arrow down
                x . Arrows (top : 300 , left : 342 , icon : Icons . keyboard_arrow_down )
                // End Of Arrow down

              ]

            )
            // End of List View

          ]

        )

      )

    );

  }
  // End of build Widget

  // Start of Horizontal List View Widget
  Widget Horizontal_List_View ( { required String College_Name , required String image , required BuildContext context } ) => InkWell
  (

    onTap : ( ) { Horizontal_List_View_On_Tap ( College_Name , context ) ; },

    child : Container
    (

      width : 150,

      decoration : BoxDecoration ( image : DecorationImage ( image : AssetImage ( image ) , fit : BoxFit . fill ) ),

      child : Center
      (

        child : Padding
        (

          padding : EdgeInsets . only ( top : 65 , left : 15 , right : 15 ),

          child : Text ( College_Name , textAlign : TextAlign . center  , style : TextStyle ( color : Colors . white , fontWeight : FontWeight . bold ) )

        )

      )

    )

  );
  // End of Horizontal List View Widget

  // Start of List View Widget
  Widget List_View ( ) => Flexible
  (

    child : ListView . builder
    (

      shrinkWrap : true,
      padding : EdgeInsets . only ( top : 0 ),
      itemCount : Colleges_Specialties . length,

      itemBuilder : ( context , index )
      {

        String Specialty_Name = Colleges_Specialties [ index ] ;

        return ListTile
        (

          onTap : ( ) { List_View_On_Tap ( Specialty_Name , context ) ; },

          title : Container
          (

            decoration : BoxDecoration
            (

              color : Colors . black,
              border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
              borderRadius : BorderRadius . circular ( 40 )

            ),

            margin : EdgeInsets . only ( bottom : 7 ),
            padding : EdgeInsets . only ( top : 15 , bottom : 15 ),

            child : Text ( Specialty_Name , textAlign : TextAlign . center , style : TextStyle ( fontSize : 16 , color : Colors . white , fontWeight : FontWeight . bold ) )

          )

        );

      }

    )

  );
  // End of List View Widget

  // Start of Horizontal List View Function
  void Horizontal_List_View_On_Tap ( String College_Name , BuildContext context )
  {

    // Start Of كلية الهندسة
    if ( College_Name ==  "كلية الهندسة" )
    {

      List < String > Colleges_Specialties = [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية/الإنتاج والآلات" , "الهندسة الميكانيكية/التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية/المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ;
      Navigator . of ( context ) . pushReplacement ( MaterialPageRoute ( builder : ( context ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الهندسة

    // Start Of كلية العلوم
    if ( College_Name ==  "كلية العلوم" )
    {

      List < String > Colleges_Specialties = [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ;
      Navigator . of ( context ) . pushReplacement ( MaterialPageRoute ( builder : ( context ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية العلوم

    // Start Of كلية تكنولوجيا المعلومات و الاتصالات
    if ( College_Name ==  "كلية تكنولوجيا المعلومات و الاتصالات" )
    {

      List < String > Colleges_Specialties = [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزة الذكية" , "علم الحاسوب/ الذكاء الاصطناعي وعلم البيانات" ] ;
      Navigator . of ( context ) . pushReplacement ( MaterialPageRoute ( builder : ( context ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية تكنولوجيا المعلومات و الاتصالات

    // Start Of كلية الاعمال
    if ( College_Name ==  "كلية الأعمال" )
    {

      List < String > Colleges_Specialties = [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ] ;
      Navigator . of ( context ) . pushReplacement ( MaterialPageRoute ( builder : ( context ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الاعمال

    // Start Of كلية الاداب
    if ( College_Name ==  "كلية الاداب" )
    {

      List < String > Colleges_Specialties = [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ;
      Navigator . of ( context ) . pushReplacement ( MaterialPageRoute ( builder : ( context ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الاداب

    // Start Of كلية العلوم التربوية
    if ( College_Name ==  "كلية العلوم التربوية" )
    {

      List < String > Colleges_Specialties = [ "تربية خاصة" , "معلم صف" ] ;
      Navigator . of ( context ) . pushReplacement ( MaterialPageRoute ( builder : ( context ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية العلوم التربوية

  }
  // End of Horizontal List View Function

  // Start of List View On Tap Function
  void List_View_On_Tap ( String Specialty_Name , BuildContext context ) async
  {

    String path = "" ;

      if ( College_Name == "كلية الهندسة" )
      {

        path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

      }

      if ( College_Name == "كلية العلوم" )
      {

        path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

      }

      if ( College_Name == "كلية تكنولوجيا المعلومات و الاتصالات" )
      {

        path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

      }

      if ( College_Name == "كلية الأعمال" )
      {

        path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

      }

      if ( College_Name == "كلية الاداب" )
      {

        path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

      }

      if ( College_Name == "كلية العلوم التربوية" )
      {

        path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

      }


    var varibel = await FirebaseFirestore . instance . collection ( path ) . doc ( "وصف التخصص و اسماء المواد و بياناتها" ) . get ( ) ;

    Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Subjects ( Specialty_Name : Specialty_Name , College_Name : College_Name , Desc : varibel [ "وصف التخصص" ] , subjects : varibel [ "مواد التخصص" ] ) ) ) ;

  }
  // End of List View On Tap Function

}
// End Of Specialties Class