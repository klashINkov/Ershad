// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// Start Of Syllabus Class
class Syllabus extends StatelessWidget
{

  String ? url ;

  // Start Of _Home Class
  @override
  Widget build ( BuildContext context )
  {

    return SafeArea
    (

      child : Scaffold
      (


        appBar : AppBar
        (

          actions :
          [

            IconButton
            (

              onPressed : ( )
              {

                // _pdfViewerController . jumpToPage ( 4 ) ;

              },

                icon : Icon ( Icons . arrow_drop_down_circle , color : Colors . white )

            ),

            IconButton
            (

              onPressed : ( )
              {

                // _pdfViewerController . zoomLevel = 1.25 ;

              },

              icon : Icon ( Icons . zoom_in , color : Colors . white )

            )

            ]

        ),

      /*  body : SfPdfViewer . network
          (

          url! ,
          controller : _pdfViewerController ,

        )*/

      )

    );

  }
// Start Of build Widget

}
// End Of Syllabus Class