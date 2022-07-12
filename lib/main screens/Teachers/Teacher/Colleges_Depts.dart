//Done

// ignore_for_file: must_be_immutable, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

// Start Of Doctors Class
class Colleges_DeptS extends StatelessWidget
{

  var x = temp ( ) ;
  final String College_Name ;
  final List < String > Colleges_Depts ;

  Colleges_DeptS ( { required this . College_Name , required this . Colleges_Depts } ) ;

  // Start of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title  : Text ( College_Name , style : TextStyle ( fontSize : 18 , color : Colors . white , fontWeight : FontWeight . bold ) ),

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
                x . Arrows ( top : 115 , left : 0 , icon : Icons . arrow_back_ios_sharp ),
                // End Of Arrow Back

                // Start Of Arrow Forward
                x . Arrows ( top : 115 , left : 330 , icon : Icons . arrow_forward_ios )
                // End Of Arrow Forward

              ]

            ),
            // End of Horizontal List View

            // Start of List View
            Stack
            (

              children :
              [

                // Start Of مدرسين الكلية
                Padding
                (

                  padding : EdgeInsets . only ( top : 30 ),

                  child : Center
                  (

                    child : Text ( "اقسام الكلية" , style : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ) )

                  )

                ),
                // End Of مدرسين الكلية

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
                x . Arrows ( top : 40 , left : 342 , icon : Icons . keyboard_arrow_up ),
                // End Of Arrow Up

                // Start Of Arrow down
                x . Arrows ( top : 300 , left : 342 , icon : Icons . keyboard_arrow_down )
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

    onTap : ( ) { /*Horizontal_List_View_On_Tap ( item ) ;*/ },

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
  Widget List_View ( )  => Flexible
  (

    child : ListView . builder
    (

      shrinkWrap : true,
      padding : EdgeInsets . only ( top : 0 ),
      itemCount : Colleges_Depts . length,

      itemBuilder : ( context , index )
      {

        String Dept_Name = Colleges_Depts [ index ] ;

        return ListTile
        (

          onTap : ( ) { List_View_On_Tap ( Dept_Name ) ; },

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

            child : Text ( Dept_Name , textAlign : TextAlign . center , style : TextStyle ( fontSize : 14 , color : Colors . white , fontWeight : FontWeight . bold ) )

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

        List < String > Colleges_Depts = [ "قسـم هندسة القوى الكهربائية وهندسة الميكاترونيكس" , "قسم الموارد الطبيعية والهندسة الكيمياوية" , "قسم الهندسة المدنية" , "قسم الهندسة الميكانيكية", "قسم الهندسة الميكانيكية" , "قسم هندسة الاتصالات والالكترونيات و الحاسوب" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) , ( route ) => route . isFirst ) ;

      }
      // End Of كلية الهندسة Case

      // Start Of كلية العلوم
      if ( College_Name ==  "كلية العلوم" )
      {

        List < String > Colleges_Depts = [ "قسم الرياضيات" , "قسم العلوم الحياتية" , "قسم الفيزياء التطبيقية" , "قسم الكيمياء وتكنولوجيا الكيمياء" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) , ( route ) => route . isFirst ) ;

      }
      // End Of كلية العلوم Case

      // Start Of كلية تكنولوجيا المعلومات و الاتصالات
      if ( College_Name ==  "كلية تكنولوجيا المعلومات و الاتصالات" )
      {

        List < String > Colleges_Depts = [ "قسم علم الحاسوب" , "قسم نظم المعلومات الحاسوبية" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) , ( route ) => route . isFirst ) ;

      }
      // End Of كلية تكنولوجيا المعلومات و الاتصالات Case

      // Start Of كلية الاعمال
      if ( College_Name ==  "كلية الاعمال" )
      {

        List < String > Colleges_Depts = [ "قسم ادارة الاعمال" , "قسم اقتصاد الأعمال" , "قسم اقتصاد الأعمال" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) , ( route ) => route . isFirst ) ;

      }
      // End Of كلية الاعمال case

      // Start Of كلية الاداب
      if ( College_Name ==  "كلية الاداب" )
      {

        List < String > Colleges_Depts = [ "قسم اللغة الإنجليزية وآدابها" , "قسم اللغة العربية وآدابها" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) , ( route ) => route . isFirst ) ;

      }
      // End Of كلية الاداب case

      // Start Of كلية العلوم التربوية
      if ( College_Name ==  "كلية العلوم التربوية" )
      {

        List < String > Colleges_Depts = [ "قسم المناهج والتدريس" , "قسم علم النفس التربوي" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Colleges_DeptS ( College_Name : College_Name , Colleges_Depts : Colleges_Depts ) ) , ( route ) => route . isFirst ) ;

      }
      // End Of كلية العلوم التربوية Case

  }
  // End of Horizontal List View Function

  // Start of List View On Tap Function
  void List_View_On_Tap ( String item )
  {

    // Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Subjects ( title : item , Desc : Desc , subjects : subjects ) ) ) ;

  }
  // End of List View On Tap Function

}
// End Of _Doctors Class