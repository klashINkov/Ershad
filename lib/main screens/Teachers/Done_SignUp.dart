
// Done

// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, unnecessary_new, deprecated_member_use, prefer_const_constructors, unnecessary_this, avoid_print, unnecessary_null_comparison, file_names

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Teachers/Done_teachers.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:awesome_dialog/awesome_dialog.dart';

// Start Of Signup Class
class Signup extends StatefulWidget
{

  @override
  State < Signup > createState ( ) => _Signup ( ) ;

}
// End Of Signup Class

// Start Of _Signup Class
class _Signup extends State < Signup >
{

  final Email_cont = TextEditingController ( ) ;
  String Password_cont = "" ;

  bool pass = true ;

  GlobalKey < FormState > formstate = new GlobalKey < FormState > ( ) ;
  @override
  void initState ( )
  {

    super . initState ( ) ;
    Email_cont . addListener ( ( ) => setState ( ( ) { } ) ) ;

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

        title : Text ( "Teachers Sign UP Page" ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true,

        actions :
        [

          IconButton
          (

            onPressed : ( ) async
            {

              Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ;

            },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ),

      body : Container
      (

        decoration : BoxDecoration
        (

          image : DecorationImage
          (

            image : AssetImage ( "pic/pic1.png" ),
            fit : BoxFit . fill,
            repeat : ImageRepeat . noRepeat

          )

        ),

        child : ListView
        (

          children :
          [

            Container
            (

              padding : EdgeInsets . all ( 20 ),

              child : Form
              (

                key : formstate,

                child : Column
                (

                  children :
                  [

                     SizedBox ( height : 60 ),

                      // Start of Email TextField
                      Opacity
                      (

                        opacity : 0.6,

                        child : TextFormField
                        (

                          controller : Email_cont,
                          keyboardType : TextInputType . emailAddress,
                          style : TextStyle ( color : Colors . white , fontSize : 18 ),

                          decoration : InputDecoration
                          (

                            filled : true,
                            fillColor : Colors . black,

                            suffixIcon : Email_cont . text . isEmpty ?
                            Container ( width : 0 )
                            :
                            IconButton
                            (

                              icon : Icon ( Icons . close , color : Colors . white ),
                              onPressed : ( ) => Email_cont . clear ( )

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

                            errorBorder : OutlineInputBorder
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

                            labelText : "Email",
                            labelStyle : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ),
                            floatingLabelAlignment : FloatingLabelAlignment . center,

                          ),

                          validator : ( value )
                          {

                            if  ( !( value! . contains ( "@" , 0 ) ) || !( value . contains ( "." , 0 )  ) )
                            {

                              return "The Email Format Is Wrong" ;

                            }

                            return null ;

                          },

                        )

                      ),
                      // End of Email TextField

                      SizedBox ( height : 260 ),

                      // Start of Password TextField
                      Opacity
                      (

                        opacity : 0.6,

                        child : TextFormField
                        (

                          onChanged : ( val ) => setState ( ( ) => this . Password_cont = val ),
                          onFieldSubmitted : ( val ) => setState ( ( ) => this . Password_cont = val ),
                          obscureText : pass,
                          style : TextStyle ( color : Colors . white , fontSize : 18 ),

                          decoration : InputDecoration
                          (

                            filled : true,
                            fillColor : Colors . black,

                            suffixIcon : IconButton
                            (

                              icon : pass ?
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
                            focusedErrorBorder: OutlineInputBorder
                            (

                              borderRadius : BorderRadius . circular ( 30 ),
                              borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )

                            ),
                            errorStyle : TextStyle ( fontSize : 20 , fontWeight : FontWeight . bold , color : Colors . yellow , backgroundColor : Colors . black ),

                            labelText : " Password ",
                            labelStyle : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ),
                            floatingLabelAlignment : FloatingLabelAlignment . center

                          ),

                          validator : ( val )
                          {

                            if ( Password_cont != "TTU_11298" )
                            {

                              return ( "Wrong Password" ) ;

                            }

                            return null ;

                          },

                        )

                      ),
                      // End of Password TextField

                      SizedBox ( height : 30 ),

                      // Start Of Sign Up Button
                      Opacity
                      (

                        opacity : 0.6,

                        child : Container
                        (

                          height : 50,
                          width : 250,
                          margin : EdgeInsets . only ( top : 20 ),

                          decoration : BoxDecoration
                          (

                            color : Colors . black,
                            border : Border . all ( color : Colors . blueAccent . shade700 , width : 5 ),
                            borderRadius : BorderRadius . circular ( 20 )

                          ),

                          child : FlatButton
                          (

                            onPressed : ( ) async
                            {

                              UserCredential response = await signUp ( ) ;

                              if ( response != null )
                                {

                                  Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Control ( ) ) ) ;

                                }

                            },

                            child : Text ( "Sign Up" , style : TextStyle ( color : Colors . white , fontSize : 25 ) )

                          )


                        )

                      )
                      // End Of Sign Up Button

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

  signUp ( ) async
  {

    var formdata = formstate . currentState ;

    if ( formdata! . validate ( ) )
    {

      formdata . save ( ) ;

      try
      {

        UserCredential userCredential = await FirebaseAuth . instance . createUserWithEmailAndPassword ( email : Email_cont . text , password : Password_cont ) ;
        return userCredential ;

      }

      on FirebaseAuthException catch ( e )
      {

        if ( e . code == "weak-password" )
        {

          AwesomeDialog
          (

            padding : EdgeInsets . only ( top : 20 , bottom : 40 ),
            autoHide : Duration ( seconds : 2 ),
            dialogBackgroundColor : Colors . black,
            borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 ),
            context : context,

            body : Text
            (

              "Password is to weak",
              textAlign : TextAlign . center,
              style : TextStyle ( fontSize : 25 , color : Colors . white )

            )

          ) . show ( ) ;

        }

        else if ( e . code == "email-already-in-use" )
        {

          AwesomeDialog
          (

            padding : EdgeInsets . only ( top : 20 , bottom : 40 , left : 15 , right : 15 ),
            autoHide : Duration ( seconds : 5 ),
            dialogBackgroundColor : Colors . black,
            borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 ),
            context : context,

            body : Text
            (

              "The account already exists for that email",
              textAlign : TextAlign . center,
              style : TextStyle ( fontSize : 20 , color : Colors . white ),

            )

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

        body : Text
        (

          "Not Valid",
          textAlign : TextAlign . center,
          style : TextStyle ( fontSize : 20 , color : Colors . white ),

        )

      ) . show ( ) ;

    }

  }

}
// End Of _Signup Class