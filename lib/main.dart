import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:ershad/main screens/Home Page.dart';

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

