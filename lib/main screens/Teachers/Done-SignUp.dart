// Done

// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, unnecessary_new, deprecated_member_use, prefer_const_constructors, unnecessary_this, avoid_print, unnecessary_null_comparison, file_names, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main%20screens/Teachers/Done_Teachers.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

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

  var x = temp ( ) ;
  bool pass = true ;
  GlobalKey < FormState > formstate = new GlobalKey < FormState > ( ) ;

  final Email    = TextEditingController ( ) ;
  final Password = TextEditingController ( ) ;
  final Name     = TextEditingController ( ) ;
  final ID     = TextEditingController ( ) ;
  final Coll     = TextEditingController ( ) ;
  final Dept     = TextEditingController ( ) ;
  final Desc     = TextEditingController ( ) ;
  final Dgree    = TextEditingController ( ) ;
  final Offec    = TextEditingController ( ) ;
  final Contact  = TextEditingController ( ) ;

  @override
  void initState ( )
  {


    super . initState ( ) ;
    Email    . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Password . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Name     . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Coll     . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Dept     . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Desc     . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Dgree    . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Offec    . addListener ( ( ) => setState ( ( ) { } ) ) ;
    Contact  . addListener ( ( ) => setState ( ( ) { } ) ) ;

    /*ErrorWidget . builder = ( FlutterErrorDetails details )
    {

      return Material
      (

        child : Container
        (

          decoration : BoxDecoration ( gradient : LinearGradient ( colors : [ Color ( 0xff780206 ) , Color ( 0xFF061161 ) ] ) ),

          child : Column
          (

              mainAxisAlignment : MainAxisAlignment . center,

              children :
              [

                Text ( details . exception . toString ( ) , style : TextStyle ( fontSize : 20 , fontWeight : FontWeight . bold , color : Colors . white ) )

              ]

          )

        )

      );

    };*/

  }

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    String Tmpe = Coll . text ;

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title : Text ( "صفحة انشاء الحساب للمدرسين" ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true,

        actions :
        [

          IconButton
          (

            onPressed : ( ) async { Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ; },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ),

      body : Container
      (

        decoration : BoxDecoration ( image : DecorationImage ( image : AssetImage ( "pic/pic1.png" ), fit : BoxFit . fill , repeat : ImageRepeat . noRepeat ) ),
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

                   SizedBox ( height : 20 ),

                    // Start of البريد الالكتروني TextField
                    x . Text_Field ( label : " البريد الالكتروني" , hint : "" , controller : Email , keyboardType : TextInputType . emailAddress , textInputAction : TextInputAction . done , maxLines : 1 ),
                    // End of البريد الالكتروني TextField

                    SizedBox ( height : 30 ),

                    // Start of كلمة المرور TextField
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

                          filled : true,
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

                          if ( Password . text != "TTU_11298" )
                          {

                            return ( "كلمة المرور خاطئه" ) ;

                          }

                          return null ;

                        },

                      )

                    ),
                    // End of كلمة المرور TextField

                    SizedBox ( height : 30 ),

                    // Start of الاسم TextField
                    x . Text_Field ( label : " الاسم" , hint : "" , controller : Name , keyboardType : TextInputType . text , textInputAction : TextInputAction . done , maxLines : 1 ),
                    // End of الاسم TextField

                    SizedBox ( height : 30 ),

                  // Start of  الرقم الجامعي TextField
                  x . Text_Field ( label : " الرقم الجامعي" , hint : "لن يعرض الرقم للطالب وانما سوف يستعمل من اجل التعامل مع البيانات في التطبيق" , controller : ID , keyboardType : TextInputType . text , textInputAction : TextInputAction . done , maxLines : 2 ),
                  // End of  الرقم الجامعي TextField

                  SizedBox ( height : 30 ),

                    // Start of الكلية TextField
                    x . Type_Ahead ( label : " الكلية" , hint : "اسم الكلية التي تتبع لها" , Tmpe : Tmpe , controller : Coll , keyboardType : TextInputType . none ,  textInputAction : TextInputAction . done ,maxLines : 1  ),
                    // End of الكلية TextField

                    SizedBox ( height : 30 ),

                    // Start of القسم TextField
                    x . Type_Ahead ( label : " القسم" , hint : "اسم القسم الذي تتبع له" , Tmpe : Tmpe ,controller : Dept , keyboardType : TextInputType . none ,  textInputAction : TextInputAction . done ,maxLines : 1 ),
                    // End of القسم TextField

                    SizedBox ( height : 30 ),

                    // Start of الدرجة الجامعية TextField
                    x . Text_Field ( label : " الدرجة الجامعية" , hint : "الدرجة الحاصل عليها" , controller : Dgree , keyboardType : TextInputType . text , textInputAction : TextInputAction . done , maxLines : 1 ),
                    // End of الدرجة الجامعية TextField

                    SizedBox ( height : 30 ),

                    // Start of عنوان المكتب TextField
                    x . Text_Field ( label : " عنوان المكتب" , hint : "اسم المبنى الموجود فيه المكتب - الطابق - القسم" , controller : Offec , keyboardType : TextInputType . text , textInputAction : TextInputAction . done , maxLines : 1 ),
                    // End of عنوان المكتب TextField

                    SizedBox ( height : 30 ),

                      // Start of وسيلة التواصل TextField
                      x . Text_Field ( label : " وسيلة التواصل" , hint : "مثال : رقم هاتف او حساب تواصل اجتماعي او عنوان بريد الكتروني" , controller : Contact , keyboardType : TextInputType . text , textInputAction : TextInputAction . newline , maxLines : 3 ),
                      // End of وسيلة التواصل TextField

                    SizedBox ( height : 30 ),

                      // Start of نبذه عن المدرس TextField
                      x . Text_Field ( label : " نبذه عن المدرس" , hint : "" , controller : Desc , keyboardType : TextInputType . text , textInputAction : TextInputAction . newline , maxLines : 3 ),
                      // End of نبذه عن المدرس TextField

                    SizedBox ( height : 20 ),

                    // Start Of Sign Up Button
                    Opacity
                    (

                      opacity : 0.6,

                      child :
                      Container
                      (

                        height : 50,
                        width : 300,
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

                            UserCredential response = await SignUp ( Dept : Dept . text , Coll : Coll . text ) ;


                            if ( response != null )
                              {

                                Navigator . pushReplacement
                                (
                                  context , MaterialPageRoute
                                  (

                                    builder : ( _ ) => Teachers
                                    (

                                      Image1_url : "https://cdn.mosoah.com/wp-content/uploads/2019/07/20134500/%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D9%85%D8%AF%D8%B1%D8%B3%D9%8A%D9%86-%D9%81%D9%8A-%D8%AF%D8%A8%D9%8A.jpg",

                                      Image1_text : "إضافة أو تعديل بيانات المدرس",

                                      Image2_Url : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe5nhRn8KuW4FOuImeln5gyOe9wXOSuzYQEg&usqp=CAU",

                                      Image2text : "إضافة أو تعديل بيانات مادة"

                                    )

                                  )

                                );

                              }

                          },

                          child : Text ( "إنشاء الحساب" , style : TextStyle ( color : Colors . white , fontSize : 25 ) )

                        )


                      )

                    )
                    // End Of Sign Up Button

                ]

              )

            )

          ]

        )

      )

    );

  }
  // End Of build Widget

  SignUp ( { required String Coll , required String Dept } ) async
  {

    var formdata = formstate . currentState ;

    if ( formdata! . validate ( ) )
    {

      formdata . save ( ) ;

      try
      {

        //لاضافة بيانات الدكتور الى الفاير بيس
        UserCredential userCredential = await FirebaseAuth . instance . createUserWithEmailAndPassword ( email : Email . text , password : Password . text ) ;
        final docUser = FirebaseFirestore . instance . collection ( "المدرسين/$Coll/$Dept" ) . doc ( Name . text ) ;
        final user = User ( Name : Name . text , Id : ID . text , Coll : Coll , Contact : Contact . text , Dept : Dept , Desc : Desc . text , Dgree : Dgree . text , Offec : Offec . text ) ;
        final json = user . tojson ( );
        await docUser . set ( json ) ;
        //لاضافة بيانات الدكتور الى الفاير بيس

        // لاضافة اسم الدكتور الى قائمة اسماء مدرسين الكلية
        List < String > arr = [ Name . text ] ;
        final doc = FirebaseFirestore . instance . collection ( "المدرسين" ) . doc ( Coll ) ;
        var varibel = await FirebaseFirestore . instance . collection ( "المدرسين" ) . doc ( Coll ) . get ( ) . then ( ( value ) => doc . set ( { "مدرسين $Dept"  : FieldValue . arrayUnion ( arr ) } , SetOptions ( merge : true ) ) ) ;
        // لاضافة اسم الدكتور الى قائمة اسماء مدرسين الكلية


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

            body : Text ( "Password is to weak" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 25 , color : Colors . white ) )

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

            body : Text ( "تم استخدام هذا البريد الالكتروني سابقا في انشاء حساب اخر" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , color : Colors . white ) )

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
        autoHide : Duration ( seconds : 7 ),
        dialogBackgroundColor : Colors . black,
        borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 ),
        context : context,

        body : Text ( "المعلومات التي قمت بادخالها عير صالحة قم بالتاكد من ان جميع ما في الحقول صحيح" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , color : Colors . white ) )

      ) . show ( ) ;

    }

  }

}
// End Of _Signup Class

class User
{

  final String Name , Id , Coll , Dept , Desc , Dgree , Offec , Contact ;

  User ( { required this . Name  , required this . Id , required this . Coll , required this . Dept , required this . Desc , required this . Dgree , required this . Offec , required this . Contact } ) ;

  Map < String , dynamic > tojson ( ) => { "Name" : Name , "Id" : Id , "Coll" : Coll , "Dept" : Dept , "Desc" : Desc , "Dgree" : Dgree , "Offec" : Offec , "Contact" : Contact  } ;

  static User fromjson ( Map < String , dynamic > json ) => User ( Name : json [ "Name" ] , Id : json [ "Id" ] , Coll : json [ "Coll" ] , Dept : json [ "Dept" ] , Desc : json [ "Desc" ] , Dgree : json [ "Dgree" ] , Offec : json [ "Offec" ] , Contact : json [ "Contact" ] ) ;


}
