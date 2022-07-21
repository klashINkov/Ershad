// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names

import 'package:ershad/main%20screens/personal%20lost/Done_ADD_Post.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:ershad/main screens/New/Undone_temp.dart';

// Start Of Personal_Lost Class
class Personal_Lost extends StatelessWidget
{

  var x = temp ( ) ;

  // Start Of Build Widget
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

        decoration : BoxDecoration ( gradient :  LinearGradient ( colors : [ Color (0xff780206) , Color(0xFF061161) ] ) ),

        padding : EdgeInsets . only ( top : 20 , left : 15 , right : 15 ),

        child : Stack
        (

          children :
          [

            StreamBuilder < List < Post > >
            (

              stream : get_post ( ),

              builder : ( context , snapshot )
              {

                if ( snapshot . hasData )
                  {

                    final post = snapshot . data! ;

                    return Flexible
                    (

                      child : ListView
                      (

                        shrinkWrap : true,
                        children : post . map ( Post_Text ) . toList( )

                      )

                    );

                  }

                else
                    return SizedBox ( ) ;


              }

            ),

            // Start Of Add subject Button
            Padding
            (

              padding : EdgeInsets . only ( top : 590 ),

              child : Center
              (

                child : FloatingActionButton
                (
                  backgroundColor : Colors . blueAccent . shade700,
                  onPressed : ( ) => Navigator . push ( context , MaterialPageRoute( builder : ( _ ) => ADD_Post ( ) ) ),
                  child : Icon ( Icons . add )

                )

              )

            )
            // End Of Add subject Button

          ]

        )

      )

    );

  }
  // End Of Build Widget

  Stream < List < Post > > get_post ( ) => FirebaseFirestore . instance . collection ( "المفقودات" ) .
  snapshots ( ) . map ( ( event ) => event . docs . map ( ( e ) => Post . fromjson ( e . data ( ) ) ) . toList ( ) );

  Widget Post_Text ( Post post ) => Container
  (

    width : 300,
    height : 300,

    decoration : BoxDecoration
    (
      color : Colors . black,
      border : Border . all ( color : Colors . blueAccent . shade700 , width : 5 ),
      borderRadius : BorderRadius . circular ( 40 )
    ),

    margin : EdgeInsets . only ( bottom : 20 ),
    padding : EdgeInsets . all ( 15 ),

    child : Center
    (

      child : SingleChildScrollView
      (

        child : Text
        (

          post . Post_Text,
          textAlign : TextAlign . center,
          style : TextStyle
          (

            fontSize : 20,
            color : Colors . white,
            fontWeight : FontWeight . bold

          )

        )

      )

    )

  );


}
// End Of Personal_Lost Class


class Post
{

  final String Post_Text ;

  Post ( { required this . Post_Text } ) ;

  Map < String , dynamic > tojson ( ) => { "Post_Text" : Post_Text  } ;

  static Post fromjson ( Map < String , dynamic > json ) => Post ( Post_Text : json [ "Post_Text" ]  ) ;

}
