//Done

// ignore_for_file: must_be_immutable, file_names, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Control/Done_C_Specialties.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

// Start Of _Home Class
class T_Colleges extends StatelessWidget
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

        title : Padding
        (

          padding : EdgeInsets . only ( top : 20 ),

          child : Text ( "الكليات" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 25 , color : Colors . white , fontWeight : FontWeight . bold ) )

        ),

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

        padding : EdgeInsets . only ( top : 15 , right : 5 , left : 5 ),
        decoration : BoxDecoration ( gradient : LinearGradient ( colors : [ Color ( 0xff780206 ) , Color ( 0xFF061161 ) ] ) ),
        child : Grid_View ( )

      )

    );

  }
  // End Of build Widget

  // Start Of Grid View Widget
  Widget Grid_View ( ) => GridView . builder
  (

    gridDelegate : SliverGridDelegateWithFixedCrossAxisCount ( crossAxisCount : 2 , crossAxisSpacing : 10 , mainAxisSpacing : 20 ),
    itemCount : x . Items . length,

    itemBuilder : ( context , index )
    {

      var item = x . Items [ index ] ;

      return GridTile
      (

        child : InkWell
        (

          onTap : ( ) { Grid_View_On_Tap ( index , item . College_Name , context ) ; },

          child : Image ( image : AssetImage ( item . image ) , fit : BoxFit . fill )

        ),

        footer : Container
        (

          padding : EdgeInsets . only ( left : 15 , right : 15 ,  bottom : 25 ),

          child : Text ( item . College_Name , textAlign : TextAlign . center , style : TextStyle ( fontWeight : FontWeight . bold , fontSize : 14 , color : Colors . white ) )

        )

      );

    }

  );
  // End Of Grid View Widget

  // Start of Grid_View_On_Tap Function
  void Grid_View_On_Tap ( int index , String College_Name , BuildContext context )
  {

    // Start Of كلية الهندسة
    if ( index == 0 )
    {

      List < String > Colleges_Specialties = [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية : الإنتاج والآلات" , "الهندسة الميكانيكية : التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية : المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الهندسة

    // Start Of كلية العلوم
    if ( index == 1 )
    {

      List < String > Colleges_Specialties = [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية العلوم

    // Start Of كلية تكنولوجيا المعلومات و الاتصالات
    if ( index == 2 )
    {

      List < String > Colleges_Specialties = [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزة الذكية" , "علم الحاسوب : الذكاء الاصطناعي وعلم البيانات" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية تكنولوجيا المعلومات و الاتصالات

    // Start Of كلية الاعمال
    if ( index == 3 )
    {

      List < String > Colleges_Specialties = [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الاعمال

    // Start Of كلية الاداب
    if ( index == 4 )
    {

      List < String > Colleges_Specialties = [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الاداب

    // Start Of كلية العلوم التربوية
    if ( index == 5 )
    {

      List < String > Colleges_Specialties = [ "تربية خاصة" , "معلم صف" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية العلوم التربوية

  }
  // End of Grid_View_On_Tap Function

}
// End Of _Home Class