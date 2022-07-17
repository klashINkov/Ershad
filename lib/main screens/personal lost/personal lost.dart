// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names

import 'package:ershad/main%20screens/New/Done_temp.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Start Of Personal_Lost Class
class Personal_Lost extends StatefulWidget
{

  @override
  State<Personal_Lost> createState() => _Personal_LostState();
}

class _Personal_LostState extends State<Personal_Lost> {
  var x = temp ( ) ;

  List < String >  arr = [  ] ;
  List < String > str = [ ] ;
  @override
  void initState() {

    super.initState();
    get_post ( ) ;
  }



  @override
  Widget build ( BuildContext context )
  {
    get_post ( ) ;
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
        padding : EdgeInsets . all ( 10 ),
        decoration : BoxDecoration ( gradient :  LinearGradient ( colors : [ Color (0xff780206) , Color(0xFF061161) ] ) ),

        child : Column
        (

          children :
          [

            Container
              (

                margin : EdgeInsets . only ( left : 15 , right : 25 , top : 0 ),
                height : 400,

                child : Padding
                  (

                    padding : EdgeInsets . only ( top : 0 , bottom : 15 ),

                    child : Column
                      (

                        mainAxisAlignment : MainAxisAlignment . center,

                        children :
                        [

                          List_View ( )

                        ]

                    )

                )

            ),

          ]

        )

      )

    );

  }



  Widget List_View ( ) => Flexible
  (

    child : ListView . builder
    (

      shrinkWrap : true,
      padding : EdgeInsets . only ( top : 0 ),
      itemCount : str . length,

      itemBuilder : ( context , index )
      {

        String Array = str [ index ] ;

        return ListTile
        (

          onTap : ( ) {},

          title : Container
          (

            decoration : BoxDecoration
            (

              color : Colors . black,
              border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
              borderRadius : BorderRadius . circular ( 40 )

            ),

            margin : EdgeInsets . only ( bottom : 7 ),
            padding : EdgeInsets . only ( top : 15 , bottom : 15 ),

            child : Text ( Array , textAlign : TextAlign . center , style : TextStyle ( fontSize : 16 , color : Colors . white , fontWeight : FontWeight . bold ) )

          )

        );

      }

    ),
  );

  get_post ( ) async
  {
    str . clear ( ) ;
    arr . clear ( ) ;
    CollectionReference post = FirebaseFirestore . instance . collection ( "المفقودات" ) ;

    await post . get ( ) . then ( ( value ) { value . docs . forEach ( ( element ) { arr . add (  element . id ) ; } ); } ) ;

    for ( int i = 0 ; i < arr . length ; i++ )
    {
      var varibel = await FirebaseFirestore . instance . collection ( "المفقودات" ) . doc ( arr [ i ] ) . get ( ) ;
      str . add ( varibel [ "Post_Text" ] ) ;
    }

    print ( str ) ;

  }

  Add_post ( ) async
  {
    final docUser = FirebaseFirestore . instance . collection ( "المفقودات" ) . doc (  ) ;
    final post = Post ( Post_Text : "" ) ;
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