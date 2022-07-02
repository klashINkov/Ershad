// Done

// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

// Start Of Map Class
class Map extends StatelessWidget
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
        elevation : 0,

      ),

      body : Container
      (

        height : 684,
        width : 409,

        decoration : BoxDecoration
        (

          image : DecorationImage
          (

            image : AssetImage ( "pic/pic3.png" ),
            fit : BoxFit . fill,
            repeat : ImageRepeat . noRepeat

          )

        ),

        child : Stack
        (

          children :
          [

            // Start of مجمع القاعات
             x . TXT ( txt : "مجمع\nالقاعات" , size : 25 , margin_top : 45 , margin_left : 25 ),
            // Start of مجمع القاعات

            // Start of محمع الرياضي
             x . TXT ( txt : "المجمع الرياضي" , size : 25 , margin_top : 215 , margin_left : 10 ),
            // Start of محمع الرياضي

            // Start of عمادة شؤون الطلبة
             x . TXT ( txt : "عمادة شؤون\nالطلبة" , size : 18 , margin_top : 130 , margin_left : 10 ),
            // Start of عمادة شؤون الطلبة

            // Start of المشاغل الهندسيه
             x . TXT ( txt : "المشاغل\nالهندسيه" , size : 18 , margin_top : 30 , margin_left : 310 ),
            // Start of المشاغل الهندسيه

            // Start of مركز الحاسوب
             x . TXT ( txt : "مركز\nالحاسوب" , size : 18 , margin_top : 150 , margin_left : 70 ),
            // Start of مركز الحاسوب

            // Start of كلية الاعمال
             x . TXT ( txt : "كلية الاعمال" , size : 16 , margin_top : 210 , margin_left : 245 ),
            // Start of كلية الاعمال

            // Start of القبول و التسحيل
             x . TXT ( txt : "القبول و التسحيل" , size : 16 , margin_top : 275 , margin_left : 200 ),
            // Start of القبول و التسحيل

            // Start of عيادة الجامعة
             x . TXT ( txt : "عيادة\nالجامعة" , size : 18 , margin_top : 400 , margin_left : 60 ),
            // Start of عيادة الجامعة

            // Start of كلية الهندسة
             x . TXT ( txt : "كلية الهندسة" , size : 18 , margin_top : 490 , margin_left : 80 ),
            // Start of كلية الهندسة

            // Start of رئاسة الجامعة
             x . TXT ( txt : "رئاسة\nالجامعة" , size : 18 , margin_top : 270 , margin_left : 350 ),
            // Start of رئاسة الجامعة

            // Start of كلية العلوم
             x . TXT ( txt : "كلية\nالعلوم" , size : 18 , margin_top : 95 , margin_left : 545 ),
            // Start of كلية العلوم

            // Start of المالية
             x . TXT ( txt : "المالية" , size : 18 , margin_top : 220 , margin_left : 390)
            // Start of المالية

          ]

        )

      )

    );

  }
  // End Of build Widget

}
// End Of Map Class