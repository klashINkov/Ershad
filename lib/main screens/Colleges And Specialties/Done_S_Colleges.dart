// Done

// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, file_names, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Colleges And Specialties/Done_S_Specialties.dart';

import 'package:ershad/main screens/New/Done_temp.dart';


// Start Of Colleges Class
class S_Colleges extends StatelessWidget
{

  var x = temp ( ) ;
  var Width ;
  var Height ;

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    Width = MediaQuery . of ( context ) . size . width / 100 ;
    Height = MediaQuery . of ( context ) . size . height / 100 ;

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title  : Text ( "الكليات" , style : TextStyle ( fontSize : 25 , color : Colors . white , fontWeight : FontWeight . bold ) ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true

      ),

      body : Container
      (

        padding : EdgeInsets . only ( right : Width * 1.5 , left : Width * 1.5 ),
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

    // Start Of كلية الهندسة
    if ( index == 0 )
    {

      List < String > Colleges_Specialties = [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية : الإنتاج والآلات" , "الهندسة الميكانيكية : التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية : المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الهندسة

    // Start Of كلية العلوم
    if ( index == 1 )
    {

      List < String > Colleges_Specialties = [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية العلوم

    // Start Of كلية تكنولوجيا المعلومات و الاتصالات
    if ( index == 2 )
    {

      List < String > Colleges_Specialties = [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزة الذكية" , "علم الحاسوب : الذكاء الاصطناعي وعلم البيانات" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية تكنولوجيا المعلومات و الاتصالات

    // Start Of كلية الاعمال
    if ( index == 3 )
    {

      List < String > Colleges_Specialties = [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الاعمال

    // Start Of كلية الاداب
    if ( index == 4 )
    {

      List < String > Colleges_Specialties = [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية الاداب

    // Start Of كلية العلوم التربوية
    if ( index == 5 )
    {

      List < String > Colleges_Specialties = [ "تربية خاصة" , "معلم صف" ] ;
      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , Colleges_Specialties : Colleges_Specialties ) ) ) ;

    }
    // End Of كلية العلوم التربوية

  }
  // End of Grid View On Tap Function

}
// End Of Colleges Class