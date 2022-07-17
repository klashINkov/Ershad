// Done

// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, file_names, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, camel_case_types, prefer_typing_uninitialized_variables

import 'package:ershad/main%20screens/Done_Home%20Page.dart';
import 'package:flutter/material.dart';

import 'package:ershad/main screens/Colleges And Specialties/Done_S_Specialties.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

// Start Of Colleges Class
class S_Colleges extends StatelessWidget
{

  int num ;

  var x = temp ( ) ;
  var Width ;
  var Height ;

  S_Colleges ( { required this . num } ) ;

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    Width = MediaQuery . of ( context ) . size . width / 100 ;
    Height = MediaQuery . of ( context ) . size . height / 100 ;

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : num != 0 ?
      AppBar
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

      ):
      AppBar
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

    if ( College_Name ==  "كلية الهندسة" )
    {

      List < String > College_Specialties_Or_College_Depts = [ ];

      if ( num == 0 || num == 1 )
          College_Specialties_Or_College_Depts = [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية : الإنتاج والآلات" , "الهندسة الميكانيكية : التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية : المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ;
      else
          College_Specialties_Or_College_Depts = [ "قسـم هندسة القوى الكهربائية وهندسة الميكاترونيكس" , "قسم الموارد الطبيعية والهندسة الكيمياوية" , "قسم الهندسة المدنية" , "قسم الهندسة الميكانيكية", "قسم الهندسة الميكانيكية" , "قسم هندسة الاتصالات والالكترونيات و الحاسوب" ] ;

      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , College_Specialties_Or_College_Depts : College_Specialties_Or_College_Depts , num : num ) ) ) ;

    }

    if ( College_Name ==  "كلية العلوم" )
    {

      List < String > College_Specialties_Or_College_Depts = [ ];

      if ( num == 0 || num == 1 )
          College_Specialties_Or_College_Depts = [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ;
      else
          College_Specialties_Or_College_Depts = [ "قسم الرياضيات" , "قسم العلوم الحياتية" , "قسم الفيزياء التطبيقية" , "قسم الكيمياء وتكنولوجيا الكيمياء" ] ;

      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , College_Specialties_Or_College_Depts : College_Specialties_Or_College_Depts , num : num ) ) ) ;

    }

    if ( College_Name ==  "كلية تكنولوجيا المعلومات و الاتصالات" )
    {

      List < String > College_Specialties_Or_College_Depts = [ ];

      if ( num == 0 || num == 1 )
          College_Specialties_Or_College_Depts = [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزة الذكية" , "علم الحاسوب : الذكاء الاصطناعي وعلم البيانات" ] ;
      else
          College_Specialties_Or_College_Depts = [ "قسم علم الحاسوب" , "قسم نظم المعلومات الحاسوبية" ] ;

      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , College_Specialties_Or_College_Depts : College_Specialties_Or_College_Depts , num : num ) ) ) ;

    }

    if ( College_Name ==  "كلية الأعمال" )
    {

      List < String > College_Specialties_Or_College_Depts = [ ];

      if ( num == 0 || num == 1 )
          College_Specialties_Or_College_Depts = [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ] ;
      else
          College_Specialties_Or_College_Depts = [ "قسم ادارة الاعمال" , "قسم اقتصاد الأعمال" , "قسم اقتصاد الأعمال" ] ;

      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , College_Specialties_Or_College_Depts : College_Specialties_Or_College_Depts , num : num ) ) ) ;

    }

    if ( College_Name ==  "كلية الآداب" )
    {

      List < String > College_Specialties_Or_College_Depts = [ ];

      if ( num == 0 || num == 1 )
          College_Specialties_Or_College_Depts = [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ;
      else
          College_Specialties_Or_College_Depts = [ "قسم اللغة الإنجليزية وآدابها" , "قسم اللغة العربية وآدابها" ] ;

      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , College_Specialties_Or_College_Depts : College_Specialties_Or_College_Depts , num : num ) ) ) ;

    }

    if ( College_Name ==  "كلية العلوم التربوية" )
    {

      List < String > College_Specialties_Or_College_Depts = [ ];

      if ( num == 0 || num == 1 )
         College_Specialties_Or_College_Depts = [ "تربية خاصة" , "معلم صف" ];
      else
        College_Specialties_Or_College_Depts = [ "قسم المناهج والتدريس" , "قسم علم النفس التربوي" ] ;

      Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Specialties ( College_Name : College_Name , College_Specialties_Or_College_Depts : College_Specialties_Or_College_Depts , num : num ) ) ) ;

    }

  }
  // End of Grid View On Tap Function

}
// End Of Colleges Class