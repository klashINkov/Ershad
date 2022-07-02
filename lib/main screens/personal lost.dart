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

          color : Colors . green . shade900,

        )


    );

  }

}
// End Of Personal_Lost Class