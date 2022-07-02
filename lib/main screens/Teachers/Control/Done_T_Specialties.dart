//Done

// ignore_for_file: must_be_immutable, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Control/Subjects/Done_T_Subjects.dart';

// Start Of Specialties Class
class Specialties extends StatelessWidget
{

  var x = temp ( ) ;
  final String title ;
  final List < String > sp ;

  Specialties ( { required this . title , required this . sp } ) ;

  // Start of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title  : Text
        (

          title,

          style : TextStyle
          (

            fontSize : 20,
            color : Colors . white,
            fontWeight : FontWeight . bold

          )

        ),

        backgroundColor : Colors . transparent ,
        elevation : 0 ,
        centerTitle : true ,

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

        color : Colors . green . shade900,

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
                    separatorBuilder : ( context , _ ) => SizedBox ( width : 0 ),
                    itemCount : x . Items . length,
                    itemBuilder : ( context , index ) => Horizontal_List_View ( item : x . Items [ index ] . str , image : x . Items [ index ] . image , context : context )

                  )

                ),
                // End of Horizontal List View

                // Start Of Arrow Back
                x .Arrows ( top : 115 , left : 0 , icon : Icons . arrow_back_ios_sharp ),
                // End Of Arrow Back

                // Start Of Arrow Forward
                x .Arrows ( top : 115 , left : 330 , icon : Icons . arrow_forward_ios ),
                // End Of Arrow Forward

              ]

            ),
            // End of Horizontal List View

            // Start of List View
            Stack
            (

              children :
              [

                // Start Of تخصصات الكلية
                Padding
                (

                  padding : EdgeInsets . only ( top : 30 ),

                  child : Center
                  (

                    child : Text
                    (

                      "تخصصات الكلية",
                      textAlign : TextAlign . center,

                      style : TextStyle
                      (

                        fontSize : 25,
                        fontWeight : FontWeight . bold,
                        color : Colors . white

                      )

                    )

                  )

                ),
                // End Of تخصصات الكلية

                // STart Of List View
                Container
                (

                  margin : EdgeInsets . only ( left : 25 , right : 25 , top : 15 ),
                  padding : EdgeInsets . only ( left : 5 , right : 5 ),
                  height : 400,

                  decoration : BoxDecoration
                  (

                    border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                    borderRadius : BorderRadius . circular ( 50 )

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
                x .Arrows ( top : 40 , left : 342 , icon : Icons . keyboard_arrow_up ),
                // End Of Arrow Up

                // Start Of Arrow down
                x .Arrows ( top : 300 , left : 342 , icon : Icons . keyboard_arrow_down ),
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
  Widget Horizontal_List_View ( { required String item , required String image ,  required BuildContext context  } ) => InkWell
  (

    // Start Of On Tap
    onTap : ( ) { /*Horizontal_List_View_On_Tap ( item ) ;*/ },
    // End Of On Tap

    child : Container
    (

      width : 165,

      decoration : BoxDecoration
      (

        image : DecorationImage
        (

          image : AssetImage ( image ),
          fit : BoxFit . fill,

        )

      ),

      child : Center
      (

        child : Padding
        (

          padding : EdgeInsets . only ( top : 80 , left : 15 , right : 15 ),

          child : Text
          (

            item,

            style : TextStyle ( color : Colors . white , fontWeight : FontWeight . bold ),

            textAlign : TextAlign . center

          )

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
      itemCount : sp . length,

      itemBuilder : ( context , index )
      {

        String item = sp [ index ] ;

        return ListTile
        (

          onTap : ( ) { List_View_On_Tap ( item , context ) ; },

          title : Container
          (

            decoration : BoxDecoration
            (

              color : Colors . black,
              border : Border . all ( color : Colors . blueAccent . shade700 , width : 5 ),
              borderRadius : BorderRadius . circular ( 40 )

            ),

            margin : EdgeInsets . only ( bottom : 7 ),
            padding : EdgeInsets . only ( top : 5 , bottom : 5 ),

            child : Text
            (

              item,

              style : TextStyle
              (

                fontSize : 16,
                color : Colors . white,
                fontWeight : FontWeight . bold

              ),

              textAlign : TextAlign . center

            )

          )

        );

      }

    )

  );
  // End of List View Widget

  // Start of Horizontal List View Function
  void Horizontal_List_View_On_Tap ( String txt , BuildContext context )
  {

    // Start Of Switch
    switch ( txt )
    {

      // Start Of كلية الهندسة case
      case "كلية الهندسة" :
      {

        List < String > ss = [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية/الإنتاج والآلات" , "الهندسة الميكانيكية/التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية/المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Specialties ( title : txt , sp : ss ) ) , ( route ) => route . isFirst ) ;
        break ;

      }
      // End Of كلية الهندسة Case

      // Start Of كلية العلوم Case
      case "كلية العلوم" :
      {

        List < String > ss = [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Specialties ( title : txt , sp : ss ) ) , ( route ) => route . isFirst ) ;
        break ;

      }
      // End Of كلية العلوم Case

      // Start Of كلية تكنولوجيا المعلومات و الاتصالات Case
      case "كلية تكنولوجيا المعلومات و الاتصالات" :
      {

        List < String > ss = [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزة الذكية" , "علم الحاسوب/ الذكاء الاصطناعي وعلم البيانات" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Specialties ( title : txt , sp : ss ) ) , ( route ) => route . isFirst ) ;
        break ;

      }
      // End Of كلية تكنولوجيا المعلومات و الاتصالات Case

      // Start Of كلية الاعمال Case
      case "كلية الاعمال" :
      {

        List < String > ss = [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Specialties ( title : txt , sp : ss ) ) , ( route ) => route . isFirst ) ;
        break ;

      }
      // End Of كلية الاعمال case

      // Start Of كلية الاداب Case
      case "كلية الاداب" :
      {

        List < String > ss = [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Specialties ( title : txt , sp : ss ) ) , ( route ) => route . isFirst ) ;
        break ;

      }
      // End Of كلية الاداب case

      // Start Of كلية العلوم التربوية Case
      case "كلية العلوم التربوية" :
      {

        List < String > ss = [ "تربية خاصة" , "معلم صف" ] ;
        Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Specialties ( title : txt , sp : ss ) ) , ( route ) => route . isFirst ) ;
        break ;

      }
      // End Of كلية العلوم التربوية Case

    }
    // End Of Switch

  }
  // End of Horizontal List View Function

  // Start of List View On Tap Function
  void List_View_On_Tap ( String item , BuildContext context )
  {
    String Desc = "يهدف التخصص إلى تخريج وتأهيل الطلبة على حوسبة نظم المعلومات في المجالات المختلفة المحاسبية والمالية والإدارية والطبية …الخ، والهدف منه تنمية قدرات الطالب على التخطيط والتصميم والتنفيذ والتطوير وإدارة نظم المعلومات والتي تخدم المؤسسات المختلفة كالبنوك والجامعات والمستشفيات";

    List < String > subjects = [ "البرمجة المرئية" , "نظم المعلومات" , "التدريب الميداني	" , "أمن الشبكات	" , "مختبر شبكات الحاسوب	" , "الذكاء الإصطناعي	" , "نظم التشغيل	" , "الخوارزميات	" , "البرمجة الكينونية 2	" ] ;

    Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Subjects ( title : item , Desc : Desc , subjects : subjects ) ) ) ;
  }
  // End of List View On Tap Function

}
// End Of Specialties Class