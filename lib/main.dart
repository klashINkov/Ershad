// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ershad/main screens/Done_Home Page.dart';

void main ( ) async
{
  WidgetsFlutterBinding . ensureInitialized ( ) ;
  await Firebase . initializeApp ( ) ;
  runApp ( My ( ) );

}

class My extends StatelessWidget
{

  @override
  Widget build ( BuildContext context )
  {

    return MaterialApp
    (

        debugShowCheckedModeBanner : false,

        title : "Ershad",

        home : Home ( )

    );

  }

}
