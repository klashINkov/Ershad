//Done

// ignore_for_file: deprecated_member_use, prefer_const_constructors, body_might_complete_normally_nullable, empty_statements, non_constant_identifier_names, use_key_in_widget_constructors, camel_case_types, unnecessary_new, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/New/Done_temp.dart';


// Start Of Add_Subjects Class
class Add_Subjects extends StatefulWidget
{

  @override
  State < Add_Subjects > createState ( ) => _Add_Subjects ( ) ;

}
// End Of Add_Subjects Class

// Start Of _Add_SubjectsState Class
class _Add_Subjects extends State < Add_Subjects >
{

  var x = temp ( ) ;



  final Name = TextEditingController ( ) ;
  final Id   = TextEditingController ( ) ;
  final Coll = TextEditingController ( ) ;
  final Dept = TextEditingController ( ) ;
  final prev = TextEditingController ( ) ;
  final coll = TextEditingController ( ) ;
  final Desc = TextEditingController ( ) ;

  GlobalKey < FormState > formstate = new GlobalKey < FormState > ( ) ;

  @override
  void initState ( )
  {

    super . initState ( ) ;
    Name . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Coll . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Dept . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Id   . addListener ( ( ) => setState ( ( ) { } ) ) ;
    prev . addListener ( ( ) => setState ( ( ) { } ) ) ;
    coll . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Desc . addListener ( ( ) => setState ( ( ) { } ) ) ;

  }

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    String Tmpe = Coll . text ;

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar :  AppBar
      (

        title : Text ( "إضافة مادة" , style : TextStyle ( fontSize : 35 , fontWeight : FontWeight . bold , color : Colors . white ) ),

        centerTitle : true,
        backgroundColor : Colors . transparent,
        elevation : 0,

        actions :
        [

          IconButton
          (

            onPressed : ( )  { Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ; },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ),

      body : Container
      (

        decoration : BoxDecoration
        (

          image : DecorationImage ( image : AssetImage ( "pic/pic1.png" ), fit : BoxFit . fill, repeat : ImageRepeat . noRepeat ) ),
        padding : EdgeInsets . symmetric ( horizontal : 20 ),

        child : ListView
        (

          children :
          [

            Form
            (

              key : formstate,

              child : Column
              (

                children :
                [

                  // Start of اسم المادة TextField
                  x . Text_Field ( label : " اسم المادة" , hint : "" , controller : Name , keyboardType : TextInputType . text , textInputAction : TextInputAction . done , maxLines : 1 ),
                  // End of اسم المادة TextField

                  SizedBox ( height : 30 ),

                  // Start of رقم المادة TextField
                  x . Text_Field ( label : " رقم المادة" , hint : "" , controller : Id , keyboardType : TextInputType . number , textInputAction : TextInputAction . done , maxLines : 1 ),
                  // End of رقم المادة TextField

                  SizedBox ( height : 30 ),

                  // Start of رقم المادة TextField
                  x . Type_Ahead ( label : " الكلية" , hint : "" , Tmpe : Tmpe ,  controller : Coll , keyboardType : TextInputType . none , textInputAction : TextInputAction . done , maxLines : 1 ),
                  // End of رقم المادة TextField

                  SizedBox ( height : 30 ),

                  // Start of رقم المادة TextField
                  x . Type_Ahead ( label : " التخصص" , hint : "التخصص الذي ترغب في اضافة المادة اليه" , Tmpe : Tmpe , controller : Dept , keyboardType : TextInputType . none , textInputAction : TextInputAction . done , maxLines : 1 ),
                  // End of رقم المادة TextField

                  SizedBox ( height : 30 ),

                  // Start of المتطلب السابق للمادة TextField
                  x . Text_Field ( label : " المتطلب السابق للمادة" , hint : "اسم المتطلب ( رقم المتطلب )" , controller : prev , keyboardType : TextInputType . text , textInputAction : TextInputAction . done , maxLines : 1 ),
                  // End of المتطلب السابق للمادة TextField

                  SizedBox ( height : 30 ),

                  // Start of نبذه عن المادة TextField
                  x . Text_Field ( label : " نبذه عن المادة" , hint : "" , controller : Desc , keyboardType : TextInputType . text , textInputAction : TextInputAction . done , maxLines : 3 ),
                  // End of نبذه عن المادة TextField

                  // Start Of Add Button
                  Opacity
                  (

                    opacity : 0.6,

                    child : Container
                    (

                      height : 65,
                      width : 300,
                      margin : EdgeInsets . only ( top : 40 ),

                      decoration : BoxDecoration
                      (

                        color : Colors . black,
                        border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                        borderRadius : BorderRadius . circular ( 40 )

                      ),

                      child : FlatButton
                      (

                        onPressed : ( )
                        {

                          var formdata = formstate . currentState ;
                          if ( formdata! . validate ( ) )
                          {

                            formdata . save ( ) ;
                            Add_Subject ( Dept : Dept . text , Coll : Coll . text ) ;
                            // Navigator . pushReplacement ( context , MaterialPageRoute ( builder : ( _ ) => T_Subjects ( ) ) );

                          }

                        },

                        child : Text ( "إضافة" , style : TextStyle ( color : Colors . white , fontSize : 25 ) )

                      )

                    )

                  )
                  // End Of Add Button

                ]

              )

            )

          ]

        )

      )

    );

  }
  // End Of build Widget

  Add_Subject ( { required String Coll , required String Dept } ) async
  {

    final doc = FirebaseFirestore . instance . collection ( "الكليات و التخصصات/$Coll/$Dept" ) . doc ( "وصف التخصص و اسماء المواد و بياناتها" ) ;


    final docUser = FirebaseFirestore . instance . collection ( "الكليات و التخصصات/$Coll/$Dept/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ) . doc ( Name . text ) ;
    final user = User ( Name : Name . text , Coll : Coll , prev : prev . text , Dept : Dept , Desc : Desc . text ) ;
    final json = user . tojson ( ) ;
    await docUser . set ( json ) ;
    
    List < String > arr = [ Name . text ] ;

    var varibel = await FirebaseFirestore . instance . collection ( "الكليات و التخصصات/$Coll/$Dept" ) . doc ( "وصف التخصص و اسماء المواد و بياناتها" ) . get ( ) . then
    (

      (value)
      {
        if ( value . data ( )! [ "مواد التخصص" ] . length == 0 )
        {
          doc . update ( { "مواد التخصص"  : FieldValue . arrayUnion( arr) } )  ;
          print ( "========== update done" ) ;
        }
        else
        {
          doc . set ( { "مواد التخصص"  : FieldValue . arrayUnion( arr) }, SetOptions(merge: true) )  ;
          print ( "========== set done" ) ;
        }

      }

    );





  }

}
// End Of _Add_SubjectsState Class

class User
{
  final String Name ;
  final String Coll ;
  final String Dept ;
  final String Desc ;
  final String prev ;

  User ( { required this . Name , required this . Coll , required this . Dept , required this . Desc , required this . prev } ) ;

  Map < String , dynamic > tojson ( ) => { "Name" : Name , "Coll" : Coll , "Dept" : Dept , "Desc" : Desc ,  "prev" : prev  } ;

  static User fromjson ( Map < String , dynamic > json ) => User ( Name : json [ "Name" ] , Coll : json [ "Coll" ] , Dept : json [ "Dept" ] , Desc : json [ "Desc" ] , prev : json [ "prev" ] ) ;


}