// Done

// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, file_names, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:ershad/main screens/Colleges And Specialties/Done_Specialties.dart';

// Start Of Colleges Class
class Colleges extends StatelessWidget
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

          child : Text ( "الكليات" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 25 , color : Colors . white , fontWeight : FontWeight . bold ) )

        ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true

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

          padding : EdgeInsets . only ( left : 15 , right : 15 , bottom : 25 ),

          child : Text ( item . College_Name , textAlign : TextAlign . center , style : TextStyle ( fontWeight : FontWeight . bold , fontSize : 14 , color : Colors . white ) )

        )

      );

    }

  );
  // End Of Grid View Widget

  // Start of Grid View On Tap Function
  void Grid_View_On_Tap ( int index , String College_Name , BuildContext context )
  {

    // Start Of Switch
    switch ( index )
    {

      // Start Of كلية الهندسة case
      case 0 :
      {

        List < String > Colleges_Specialties = [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية/الإنتاج والآلات" , "الهندسة الميكانيكية/التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية/المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;
        break ;

      }
      // End Of كلية الهندسة Case

      // Start Of كلية العلوم Case
      case 1 :
      {

        List < String > Colleges_Specialties = [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;
        break ;

      }
      // End Of كلية العلوم Case

      // Start Of كلية تكنولوجيا المعلومات و الاتصالات Case
      case 2 :
      {

        List < String > Colleges_Specialties = [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزه الذكية" , "علم الحاسوب : الذكاء الاصطناعي وعلم البيانات" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;
        break ;

      }
      // End Of كلية تكنولوجيا المعلومات و الاتصالات Case

      // Start Of كلية الاعمال Case
      case 3 :
      {

        List < String > Colleges_Specialties = [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;
        break ;

      }
      // End Of كلية الاعمال case

      // Start Of كلية الاداب Case
      case 4 :
      {

        List < String > Colleges_Specialties = [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;
        break ;

      }
      // End Of كلية الاداب case

      // Start Of كلية العلوم التربوية Case
      case 5 :
      {

        List < String > Colleges_Specialties = [ "تربية خاصة" , "معلم صف" ] ;
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;
        break ;

      }
      // End Of كلية العلوم التربوية Case

    }
    // End Of Switch

  }
  // End of Grid View On Tap Function

}
// End Of Colleges Class