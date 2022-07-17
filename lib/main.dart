// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, avoid_print, camel_case_types, non_constant_identifier_names, must_be_immutable, unused_local_variable, unused_field

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/Teachers/Control/C_Doctor_data_view.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:ershad/main screens/Done_Home Page.dart';



void main ( ) async
{
  WidgetsFlutterBinding . ensureInitialized ( ) ;
  await Firebase . initializeApp ( ) ;
  runApp ( My ( ) );

}

// Start Of My
class My extends StatelessWidget
{

  @override
  Widget build ( BuildContext context )
  {

    return MaterialApp
    (

        debugShowCheckedModeBanner : false,

        title : "Ershad",

        home : Home ()

    );

  }

}
// End Of My

