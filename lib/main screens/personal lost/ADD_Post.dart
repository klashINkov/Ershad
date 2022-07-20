// ignore_for_file: camel_case_types, deprecated_member_use, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ershad/main%20screens/personal%20lost/personal%20lost.dart';
import 'package:flutter/material.dart';

// Start Of ADD_Post Class
class ADD_Post extends StatefulWidget
{

  @override
  State < ADD_Post > createState ( ) => _ADD_Post ( ) ;

}
// End Of ADD_Post Class

// Start Of _ADD_Post Class
class _ADD_Post extends State < ADD_Post >
{

  final text = TextEditingController ( ) ;

  @override
  void initState ( )
  {

    super . initState ( ) ;
    text    . addListener ( ( ) => setState ( ( ) { } ) ) ;

  }

  @override
  Widget build(BuildContext context)
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,
      appBar : AppBar
      (
        title : Text ( "اضافة منشور" , style : TextStyle ( fontSize : 35 ) ),
        backgroundColor : Colors . transparent , elevation : 0 , centerTitle : true
      ),

      body : Container
      (

        height: 683,

        padding : EdgeInsets . only ( top : 5 , left : 15 , right : 15 ),

        decoration : BoxDecoration ( gradient :  LinearGradient ( colors : [ Color (0xff780206) , Color(0xFF061161) ] ) ),

        child : ListView
        (

          children :
          [

            TextFormField
            (
              controller : text,
              keyboardType : TextInputType . text,
              textInputAction : TextInputAction . newline ,
              style : TextStyle ( fontSize : 25 , color : Colors . white ),
              textAlign : TextAlign . center,
              cursorColor : Colors . white,
              cursorWidth : 5,
              maxLines : 15,

              decoration : InputDecoration
              (

                filled : true,
                fillColor : Colors . black,
                enabledBorder : OutlineInputBorder
                (
                  borderRadius : BorderRadius . circular ( 50 ),
                  borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 )
                ),
                focusedBorder : OutlineInputBorder
                (
                  borderRadius : BorderRadius . circular ( 50 ),
                  borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 )
                )

              )

            ),

            SizedBox ( height : 5 ) ,

            Container
            (

              height : 80,
              width : 300,
              margin : EdgeInsets . only ( top : 20 ),

              decoration : BoxDecoration
              (
                color : Colors . black,
                border : Border . all ( color : Colors . blueAccent . shade700 , width : 5 ),
                borderRadius : BorderRadius . circular ( 50 )
              ),

              child : FlatButton
              (

                onPressed : ( )
                {

                  if ( text . text != "" )
                    {

                      Add_post ( text . text );
                      Navigator . pushReplacement ( context , MaterialPageRoute ( builder : ( _ ) => Personal_Lost ( )  ) ) ;

                    }

                },

                child : Text ( "نشر" , style : TextStyle ( color : Colors . white , fontSize : 35 ) )

              )

            )

          ]

        )

      )

    );

  }
  Add_post ( String Post_Text  ) async
  {

    final docUser = FirebaseFirestore . instance . collection ( "المفقودات" ) . doc (  ) ;
    final post = Post ( Post_Text : Post_Text ) ;
    final json = post . tojson ( );
    await docUser . set ( json ) ;

  }

}
// End Of Personal_Lost Class


class Post
{

  final String Post_Text ;

  Post ( { required this . Post_Text } ) ;

  Map < String , dynamic > tojson ( ) => { "Post_Text" : Post_Text  } ;

  static Post fromjson ( Map < String , dynamic > json ) => Post ( Post_Text : json [ "Post_Text" ]  ) ;

}