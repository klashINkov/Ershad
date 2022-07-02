//Done

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Control/Done_T_Specialties.dart';

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
        color : Colors . green . shade900,
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

      var item = x . Items [ index ] ;

      return GridTile
      (

        child : InkWell
        (

          onTap : ( ) { Grid_View_On_Tap ( index , item . str , context ); },

          child : Image
          (

            image : AssetImage ( item . image ),
            fit : BoxFit . fill

          )

        ),

        footer : Container
        (

          padding : EdgeInsets . only ( left : 15 , right : 15 ,  bottom : 25 ),

          child : Text
          (

            item . str,

            style : TextStyle
            (

              fontWeight : FontWeight . bold,
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

  // Start of Grid_View_On_Tap Function
  void Grid_View_On_Tap ( int index , String item , BuildContext context )
  {

    // Start Of Switch
    switch ( index )
    {

      // Start Of كلية الهندسة case
      case 0 :
      {

        List < String > ss = [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية/الإنتاج والآلات" , "الهندسة الميكانيكية/التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية/المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية الهندسة Case

      // Start Of كلية العلوم Case
      case 1 :
      {

        List < String > ss = [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية العلوم Case

      // Start Of كلية تكنولوجيا المعلومات و الاتصالات Case
      case 2 :
      {

        List < String > ss = [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزة الذكية" , "علم الحاسوب/ الذكاء الاصطناعي وعلم البيانات" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية تكنولوجيا المعلومات و الاتصالات Case

      // Start Of كلية الاعمال Case
      case 3 :
      {

        List < String > ss = [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية الاعمال case

      // Start Of كلية الاداب Case
      case 4 :
      {

        List < String > ss = [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية الاداب case

      // Start Of كلية العلوم التربوية Case
      case 5 :
      {

        List < String > ss = [ "تربية خاصة" , "معلم صف" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( title : item , sp : ss ) ) ) ;
        break ;

      }
      // End Of كلية العلوم التربوية Case

    }
    // End Of Switch

  }
  // End of Grid_View_On_Tap Function

}
// End Of _Home Class