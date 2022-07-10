// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// Start Of Personal_Lost Class
class Personal_Lost extends StatelessWidget
{

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

            "المفقودات",

            style : TextStyle
            (

                fontSize : 42,
                color : Colors . white,
                fontWeight : FontWeight . bold

            )

          ),

          backgroundColor : Colors . transparent,
          elevation : 0,
          centerTitle : true,

        ),

        body : Container 
        (

          decoration : BoxDecoration ( gradient :  LinearGradient ( colors : [ Color (0xff780206) , Color(0xFF061161) ] ) )

        )


    );

  }

}
// End Of Personal_Lost Class