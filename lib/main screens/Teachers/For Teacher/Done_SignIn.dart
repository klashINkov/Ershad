// Done

// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors, avoid_print, unused_import, unnecessary_new, prefer_typing_uninitialized_variables, duplicate_import, non_constant_identifier_nam, unnecessary_thises, unnecessary_this, non_constant_identifier_names, file_names, unused_local_variable, avoid_single_cascade_in_expression_statements, unnecessary_null_comparison, prefer_const_literals_to_create_immutables, avoid_function_literals_in_foreach_calls, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/For Teacher/Undone_SignUp.dart';

import 'package:ershad/main screens/Teachers/For Teacher/Undone_Doctor_view&_Edit_data.dart';

import 'package:ershad/main screens/New/Undone_temp.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:awesome_dialog/awesome_dialog.dart';

// Start Of Signin Class
class Signin extends StatefulWidget
{

  @override
  _Signin createState ( ) => _Signin ( ) ;

}
// End Of Signin Class

// Start Of _Signin Class
class _Signin extends State < Signin >
{


  final Email    = TextEditingController ( ) ;
  final Password = TextEditingController ( ) ;

  bool pass = true ;
  var x = temp ( ) ;

  GlobalKey < FormState > formstate = new GlobalKey < FormState > ( ) ;
  @override
  void initState ( )
  {

    super . initState ( ) ;
    Email    . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Password . addListener ( ( ) => setState ( ( ) { } ) ) ;


  }

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title : Text ( "صفحة تسجيل دخول المدرسين" ),

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

      ),

      body : Container
      (

        decoration : BoxDecoration ( image : DecorationImage ( image : AssetImage ( "pic/pic1.png" ) , fit : BoxFit . fill , repeat : ImageRepeat . noRepeat ) ),

        child : ListView
        (

          children :
          [

            Container
            (

              padding : EdgeInsets . symmetric ( horizontal : 20 ),

              child : Form
              (

                key : formstate,

                child : Column
                (

                  children :
                  [

                     SizedBox ( height : 60 ),

                      // Start of Email TextField
                      x . Text_Field ( label : " البريد الالكتروني" , hint : "" , controller : Email , keyboardType : TextInputType . emailAddress , textInputAction : TextInputAction . done , maxLines : 1 ),
                      // End of Email TextField

                      SizedBox ( height : 260 ),

                      // Start of Password TextField
                      Opacity
                      (

                        opacity : 0.6,

                        child : TextFormField
                        (

                          controller : Password,
                          obscureText : pass,
                          style : TextStyle ( color : Colors . white , fontSize : 18 ),

                          decoration : InputDecoration
                          (

                            fillColor : Colors . black,

                            suffixIcon : IconButton
                            (

                              icon : Password . text . isEmpty ?
                              SizedBox ( )
                              :
                              pass ?

                              Icon ( Icons . visibility_off , color : Colors . white )
                                  :
                              Icon ( Icons . visibility , color : Colors . white ),

                              onPressed : ( ) => setState( ( ) => pass = !pass )

                            ),

                            enabledBorder : OutlineInputBorder
                            (
                              borderRadius : BorderRadius . circular ( 30 ),
                              borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 )

                            ),
                            focusedBorder : OutlineInputBorder
                            (

                              borderRadius : BorderRadius . circular ( 30 ),
                              borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 )

                            ),

                            errorBorder: OutlineInputBorder
                            (

                              borderRadius : BorderRadius . circular ( 30 ),
                              borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )

                            ),
                            focusedErrorBorder : OutlineInputBorder
                            (

                              borderRadius : BorderRadius . circular ( 30 ),
                              borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )

                            ),
                            errorStyle : TextStyle ( fontSize : 20 , fontWeight : FontWeight . bold , color : Colors . yellow , backgroundColor : Colors . black ),

                            labelText : " كلمة المرور",
                            labelStyle : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ),
                            floatingLabelAlignment : FloatingLabelAlignment . center

                          ),

                          validator : ( val )
                          {

                            return null ;

                          },

                        )

                      ),
                      // End of Password TextField

                      SizedBox ( height : 10 ),

                      // Start Of Login Button
                      Opacity
                      (

                        opacity : 0.6,

                        child : Container
                        (

                          height : 50,
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

                            onPressed : ( ) async
                            {

                              UserCredential user = await signIn ( ) ;

                              if (user != null)
                              {

                                Navigator . pushReplacement ( context , MaterialPageRoute ( builder : ( _ ) => Doctor_data_view ( Email : Email . text  ) ) );

                              }

                            },

                            child : Text ( "تسجيل الدخول" , style : TextStyle ( color : Colors . white , fontSize : 25 ) )

                          )

                        )

                      ),
                      // Start Of Login Button

                      Container
                      (

                        margin : EdgeInsets . only ( top : 20 ),

                        child : Row
                        (

                          mainAxisAlignment : MainAxisAlignment . center,

                          children :
                          [

                            InkWell
                            (

                              onTap : ( ) { Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Signup ( ) ) ) ; },

                              child : Text ( "اضغط هنا " , style : TextStyle ( color : Colors . blue , fontSize : 20 , decoration : TextDecoration . underline ) )

                            ),

                            Text ( "اذا كنت لا تمتلك حساب" , style : TextStyle ( color: Colors . white , fontSize : 20 )  )

                          ]

                        )

                      )

                  ]

                )

              )

            )

          ]

        )

      )

    );

  }
  // End Of build Widget

 /* Stream < List < User > > Read_Users ( ) => FirebaseFirestore . instance . collection ( "Doctors" ) . snapshots ( ) . map
  (
    ( snapshot ) => snapshot . docs . map ( ( doc ) => User . fromjson ( doc . data ( ) ) ) . toList ( ),
  ) ;

  Widget Build_User ( User user ) => ListTile
  (
    title : Text ("Name : ${ user . Name } --- Coll : ${ user . Coll } ---- Dept : ${ user . Dept }"  )
  );*/


  signIn ( ) async
  {

    var formdata = formstate . currentState ;

    if ( formdata! . validate ( ) )
    {

      formdata . save ( ) ;

      try
      {

        UserCredential userCredential = await FirebaseAuth . instance . signInWithEmailAndPassword ( email : Email . text , password : Password . text ) ;
        return userCredential ;

      }

      on FirebaseAuthException catch ( e )
      {

        if ( e . code == 'user-not-found' )
        {

          AwesomeDialog
            (

              padding : EdgeInsets . only ( top : 20 , bottom : 40 , left : 10 , right : 10 ),
              autoHide : Duration ( seconds : 5 ),
              dialogBackgroundColor : Colors . black,
              borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 ),
              context : context,

              body : Text ( "لا يوجد حساب مسجل بهذا البريد الالكتروني" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , color : Colors . white ) )

          ) . show ( ) ;

        }

        else if ( e . code == 'wrong-password' )
        {

          AwesomeDialog
            (

              padding : EdgeInsets . only ( top : 20 , bottom : 40 ),
              autoHide : Duration ( seconds : 2 ),
              dialogBackgroundColor : Colors . black,
              borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 ),
              context : context,

              body : Text ( "كلمة المرور خاطئة" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , color : Colors . white ) )

          ) . show ( ) ;

        }

      }

      catch ( e ) { print ( e ) ; }

    }

    else

    {

      AwesomeDialog
        (

          padding : EdgeInsets . only ( top : 20 , bottom : 40 , left : 15 , right : 15 ),
          autoHide : Duration ( seconds : 5 ),
          dialogBackgroundColor : Colors . black,
          borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 ),
          context : context,

          body : Text ( "المعلومات التي قمت بادخالها غير صالحة" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , color : Colors . white ) )

      ) . show ( ) ;

    }

  }



}
// End Of _Signin Class