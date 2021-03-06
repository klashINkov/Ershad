// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ershad/main%20screens/Teachers/SignIn.dart';
import 'package:ershad/main%20screens/personal%20lost.dart';
import 'package:flutter/material.dart';

import 'package:ershad/main screens/Colleges And Specialties/S_Colleges.dart';

import 'package:ershad/main screens/Teachers/Teachers.dart';



import 'package:ershad/main%20screens/Teachers/Doctor_view&_Edit_data.dart';

import 'package:ershad/main%20screens/Map.dart';



import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_typeahead/flutter_typeahead.dart';

class temp
{

  int  Index = 0 ;

  List < sts > Items =
  [

    sts ( College_Name : "كلية الهندسة"                       , image : "pic/engineering college.png" ),
    sts ( College_Name : "كلية العلوم"                        , image : "pic/sciences college.png" ),
    sts ( College_Name : "كلية تكنولوجيا المعلومات و الاتصالات" , image : "pic/it college.png" ),
    sts ( College_Name : "كلية الأعمال"                        , image : "pic/business  college.png" ),
    sts ( College_Name : "كلية الآداب"                         , image : "pic/arts college.png" ),
    sts ( College_Name : "كلية العلوم التربوية"               , image : "pic/educational sciences college.png" )

  ];

  List < String >  College_Name = [ "كلية الهندسة" , "كلية العلوم" , "كلية تكنولوجيا المعلومات و الاتصالات" , "كلية الأعمال" , "كلية الآداب" , "كلية العلوم التربوية" ] ;


  List < College_Depts > College_DeptS =
  [

    College_Depts ( Colleges_Depts : [ "قسـم هندسة القوى الكهربائية وهندسة الميكاترونيكس" , "قسم الموارد الطبيعية والهندسة الكيمياوية" , "قسم الهندسة المدنية" , "قسم الهندسة الميكانيكية", "قسم الهندسة الميكانيكية" , "قسم هندسة الاتصالات والالكترونيات و الحاسوب" ] ),

    College_Depts ( Colleges_Depts : [ "قسم الرياضيات" , "قسم العلوم الحياتية" , "قسم الفيزياء التطبيقية" , "قسم الكيمياء وتكنولوجيا الكيمياء" ] ),

    College_Depts ( Colleges_Depts : [ "قسم علم الحاسوب" , "قسم نظم المعلومات الحاسوبية" ] ),

    College_Depts ( Colleges_Depts : [ "قسم ادارة الاعمال" , "قسم اقتصاد الأعمال" , "قسم اقتصاد الأعمال" ] ),

    College_Depts ( Colleges_Depts : [ "قسم اللغة الإنجليزية وآدابها" , "قسم اللغة العربية وآدابها" ] ),

    College_Depts ( Colleges_Depts : [ "قسم المناهج والتدريس" , "قسم علم النفس التربوي" ] )

  ];

  List < College_Specialties > College_SpecialtieS =
  [

    College_Specialties ( Colleges_SpecialtieS : [ "الهندسة المدنية" , "هندسة القوى الكهربائية" , "هندسة الميكاترونيكس" , "الهندسة الميكانيكية : الإنتاج والآلات" , "الهندسة الميكانيكية : التكييف والتبريد والتدفئة" , "الهندسة الميكانيكية : المركبات" , "الهندسة الجيولوجية" , "هندسة الصناعات الكيميائية" , "هندسة التعدين" , "هندسة الحاسوب" , "هندسة الاتصالات والإلكترونيات" , "هندسة الطاقة المتجددة المتكاملة" , "هندسة الأنظمة الذكية" ] ),

    College_Specialties ( Colleges_SpecialtieS :  [ "الكيمياء" , "تكنولوجيا الكيمياء" , "الفيزياء التطبيقية" , "الرياضيات" , "العلوم الحياتية التطبيقية" ] ),

    College_Specialties ( Colleges_SpecialtieS : [ "نظم المعلومات الحاسوبية" , "حوسبة الاجهزة الذكية" , "علم الحاسوب : الذكاء الاصطناعي وعلم البيانات" ] ),

    College_Specialties ( Colleges_SpecialtieS :  [ "علوم مالية ومصرفية" , "إقتصاد الأعمال" , "إدارة الأعمال" , "المحاسبة" ]  ),

    College_Specialties ( Colleges_SpecialtieS : [ "اللغة العربية وآدابها" , "اللغة الإنجليزية وآدابها" ] ),

    College_Specialties ( Colleges_SpecialtieS : [ "تربية خاصة" , "معلم صف" ] )

  ];

  // Start Of Item Widget ==> لعرض بيانات المادة
  Widget Item ( { required String txt1 , required String txt2 , required  double txt_pad , required double size1 , required double size2 } ) =>
  Container
  (

    margin : EdgeInsets . only ( bottom : 5 , left : 10 , right : 10 ),
    height : 220,

    decoration : BoxDecoration
    (
      color : Colors . black,
      borderRadius : BorderRadius . circular ( 200 ),
      image : DecorationImage ( image : AssetImage ( "pic/pic1.png" ) , fit : BoxFit . fill , repeat : ImageRepeat . noRepeat )
    ),

    child : Column
    (

      children :
      [

        Padding
        (

          padding : EdgeInsets . only ( top : 20 ),

          child : Text ( txt1 , style : TextStyle ( color : Colors . white , fontWeight : FontWeight . bold , fontSize : size1 ) )

        ),

        Padding
        (

          padding : EdgeInsets . only ( top : txt_pad ),

          child : Center
          (

            child : Text ( txt2 , textAlign : TextAlign . center , style : TextStyle ( color : Colors . white , fontWeight : FontWeight . bold , fontSize : size2 ) )

          )

        )

      ]

    )

  );
  // End Of Item Widget ==> لعرض بيانات المادة

  // Start Of Arrows Widget ==> اسهم القوائم
  Widget Arrows ( { required double top , required double left , required IconData icon } ) =>
  Padding
  (

    padding : EdgeInsets . only (  top  : top , left : left ),
    child : Icon ( icon , color : Colors . white , size : 80 )

  );
  // End Of Arrows Widget ==> اسهم القوائم

  // Start Of Pic Widget ==> لقسم المدرسين
  Widget Pic ( { required BuildContext context , required String image , required String txt ,required bool flag } ) =>
  Expanded
  (

    flex : 5,

    child : InkWell
    (

      onTap : ( ) async
      {

        if ( txt == "مُدرس")
        {

          if ( flag == false )
              Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Signin ( ) ) ) ;

          else
            {

              String path = "" , Doc = "" , Name , Coll , Dept , Current_courses , Office_hours , Dgree , Office_Address , Contact , Desc ;
              AwesomeDialog
              (

                padding : EdgeInsets . only ( top : 20 , bottom : 40 , left : 15 , right : 15 ),
                autoHide : Duration ( seconds : 5 ),
                dialogBackgroundColor : Colors . black54,
                borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 ),
                dialogBorderRadius : BorderRadius . circular ( 50 ),
                context : context,

                body : Text ( "الرجاء الانتظار لحين تجهيز بياناتك\n\nوقت الانتظار املؤه بالاستغفار\n\nإذكر الله" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , color : Colors . white ) )

              ) . show ( ) ;

              for ( int i = 0 ; i < College_Name . length ; i++ )
              {

                for ( int k = 0 ; k < College_DeptS [ i ] . Colleges_Depts . length ; k++ )
                {

                  final  varr =  FirebaseFirestore . instance . collection ( "المدرسين/${ College_Name [ i ] }/${ College_DeptS [ i ] . Colleges_Depts [ k ] }" ) ;

                  await varr . where( "Email" , isEqualTo : FirebaseAuth . instance . currentUser! . email . toString ( )  ) . get ( ) . then
                  (

                    (value)
                    {

                      value . docs . forEach
                      (

                        ( element )
                        {

                          Doc = element . id ;
                          path = varr . path ;

                        }

                      );

                    }

                  );

                }

              }

              var varibel = await FirebaseFirestore . instance . collection ( path ) . doc ( Doc ) . get ( ) ;

              Name = varibel [ "Name" ] ;
              Coll = varibel [ "Coll" ] ;
              Dept = varibel [ "Dept" ] ;
              Current_courses = varibel [ "Current_courses" ] ;
              Office_hours = varibel [ "Office_hours" ] ;
              Dgree = varibel [ "Dgree" ] ;
              Office_Address = varibel [ "Office_Address" ] ;
              Contact = varibel [ "Contact" ] ;
              Desc = varibel [ "Desc" ] ;

              Navigator . pushReplacement ( context , MaterialPageRoute ( builder : ( _ ) => Doctor_data_view ( Name : Name , Coll : Coll , Dept : Dept , Current_courses : Current_courses , Office_hours : Office_hours , Dgree : Dgree , Office_Address : Office_Address , Contact : Contact , Desc : Desc , What_Do_You_Wont : "View" ) ) ) ;


            }

        }

        else
          Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Colleges ( num : 2 ) ) ) ;

      },

      child : Material
      (

        child : Ink . image
        (

          image : NetworkImage ( image ),
          width : 410,
          fit : BoxFit . fill,

          child : Padding
          (

            padding : EdgeInsets . only ( top : 280 ),

            child : Opacity
            (

              opacity : 0.6,

              child : Container
              (

                color : Colors . black,

                child : Text ( txt , textAlign : TextAlign . center , style : TextStyle ( fontSize : 35 , fontWeight : FontWeight . bold , color : Colors . white ) )

              )

            )

          )

        )

      )

    )

  );
  // End Of Pic Widget ==> لقسم المدرسين

  // Start Of Text Field Widget ==> لمعلومات المواد و المدرسين
  Widget Text_Field ( { required String label , required String hint , required TextEditingController controller , required TextInputType keyboardType , required TextInputAction textInputAction , required double opacity } ) =>
  Container
  (

    child : Opacity
    (

      opacity : opacity,

      child : Stack
      (

        children :
        [

          Container
          (

            child : TextFormField
            (

              textInputAction : textInputAction,
              controller : controller,
              keyboardType : keyboardType,
              style : TextStyle ( fontSize : 25 , color : Colors . white ),
              textAlign : TextAlign . center,
              cursorColor : Colors . white,
              cursorWidth : 5,
              maxLines : label == " وسيلة التواصل"  || label == " الساعات المكتبة" ? 3 :
                         label == " نبذه عن المدرس" || label == " نبذه عن المادة"  ? 12 :
                         label == " الرقم الجامعي"  ? 2 :
                         label == " المساقات الحالية" ? 8 : 1  ,

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
                ),

                errorBorder : OutlineInputBorder
                (
                  borderRadius : BorderRadius . circular ( 50 ),
                  borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )
                ),
                focusedErrorBorder : OutlineInputBorder
                (
                  borderRadius : BorderRadius . circular ( 50 ),
                  borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )
                ),
                errorStyle : TextStyle ( fontSize : 18 , fontWeight : FontWeight . bold , color : Colors . yellow , backgroundColor : Colors . black ),

                hintText : hint,
                hintStyle : TextStyle ( color : Colors . white, fontSize : 20 ),

                labelText :  label,
                labelStyle : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ),
                floatingLabelStyle : TextStyle ( fontSize : 30 , backgroundColor : Colors . transparent , color : Colors . white ),
                floatingLabelAlignment : FloatingLabelAlignment . center

              ),

              validator : ( val )
              {

                if ( label == " البريد الالكتروني" )
                {
                  if  ( !( val! . contains ( "@" , 0 ) ) || !( val . contains ( "." , 0 )  ) )
                      return "صيغة البريد الالكتروني خاطئة" ;
                }

                else if ( label == " رقم المادة" && controller . text != "" )
                {

                  if ( val! . length < 7 )
                    return "لا يمكن ان تكون خانات رقم المادة اقل من 7 خانات" ;

                  if ( val . length > 7 )
                    return "لا يمكن ان يكون رقم المادة اكثر من 7 خانات" ;

                }

                else if ( val == "" )
                  return "لا يمكن ان يكون حقل$label فارغا" ;

                return null ;

              }

            )

          ),

          suffixIcon ( controller , label )

        ]

      )

    )

  );
  // End Of Text Field Widget ==> لمعلومات المواد و المدرسين

  // Start Of Text Field Widget ==> للكلية والقسم - تسجيل حساب المدرس
  Widget Type_Ahead ( { required String label , required String hint , required TextEditingController controller , required TextInputType keyboardType , required TextInputAction textInputAction , required double opacity } ) =>
  Opacity
  (
    opacity : opacity,

    child : Container
    (

      decoration : BoxDecoration
      (
        color : Colors . black,
        borderRadius : BorderRadius . circular ( 50 )
      ),

      child : Stack
      (

        children :
        [

          TypeAheadFormField
          (

            suggestionsBoxDecoration : SuggestionsBoxDecoration ( color : Colors . transparent ),

            suggestionsCallback : label == " القسم" ?

            ( val ) => College_DeptS [ Index ] . Colleges_Depts . where ( ( element ) => element . toLowerCase ( ) . contains ( val . toLowerCase ( ) ) ) :

            label == " التخصص" ?

            ( val ) => College_SpecialtieS [ Index ] . Colleges_SpecialtieS . where ( ( element ) => element . toLowerCase ( ) . contains ( val . toLowerCase ( ) ) ) :

            ( val ) => College_Name . where ( ( element ) => element . toLowerCase ( ) . contains ( val . toLowerCase ( ) ) ),

            itemBuilder :  ( _ , String element ) => Opacity
            (

              opacity : 0.6 ,

              child : Container
              (

                margin : EdgeInsets . all ( 10 ),

                decoration : BoxDecoration
                (
                  color : Colors . black,
                  border :  Border . all ( color : Colors . blueAccent . shade700 , width : 5 ),
                  borderRadius : BorderRadius . circular ( 50 )
                ),

                child : ListTile
                (

                  title : Text ( element , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , fontWeight : FontWeight . bold , color : Colors . white ) )

                )

              )

            ),

            onSuggestionSelected : ( String val )  { controller . text = val ;
              Index = val . contains( "كلية" ) ? College_Name . indexOf ( val ) : Index = Index ;
              },
            getImmediateSuggestions : true,
            hideSuggestionsOnKeyboardHide : true,
            hideOnEmpty : true,

            textFieldConfiguration : TextFieldConfiguration
            (

              textInputAction : textInputAction,
              controller : controller,
              keyboardType : keyboardType,
              style : TextStyle ( fontSize : 25 , color : Colors . white ),
              textAlign : TextAlign . center,
              cursorColor : Colors . white,
              cursorWidth : 5,
              maxLines :  label == " التخصص" || label == " القسم" ? 2 : 1,

              decoration : InputDecoration
              (

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
                  ),

                  errorBorder : OutlineInputBorder
                  (
                    borderRadius : BorderRadius . circular ( 50 ),
                    borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )
                  ),
                  focusedErrorBorder : OutlineInputBorder
                  (
                    borderRadius : BorderRadius . circular ( 50 ),
                    borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )
                  ),
                  errorStyle : TextStyle ( fontSize : 18 , fontWeight : FontWeight . bold , color : Colors . yellow , backgroundColor : Colors . black ),

                  hintText : hint,
                  hintStyle : TextStyle ( color : Colors . white, fontSize : 20 ),

                  labelText :  label,
                  labelStyle : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ),
                  floatingLabelStyle : TextStyle ( fontSize : 30 , backgroundColor : Colors . transparent , color : Colors . white ),
                  floatingLabelAlignment : FloatingLabelAlignment . center

              ),

            ),

            validator : ( val )
            {

              if ( val == "" )
              {

                return "لا يمكن ان يكون حقل$label فارغا" ;

              }

              return null ;

            }

          ),

          suffixIcon ( controller , label )

        ]

      )

    )

  );
  // End Of Text Field Widget ==> للكلية والقسم - تسجيل حساب المدرس

  // Start Of TXT Function ==> للخارطه
  Widget TXT ( { required String txt , required double size , required int quarterTurns , required double bottom , required double top , required double left , required BuildContext context } ) =>
  Opacity
  (

    opacity : 0.7,

    child : RotatedBox
    (

      quarterTurns : quarterTurns,

      child : Container
      (

        margin : EdgeInsets . only ( bottom : bottom , top : top , left : left ),
        padding : EdgeInsets . only ( left : 10 , right : 10 ),

        decoration : BoxDecoration
        (
          color : Colors . black,
          border : Border . all ( color : Colors . white , width : 5 ),
          borderRadius : BorderRadius . circular ( 50 )
        ),

        child : InkWell

        (

          onTap : ( ) => Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Map ( What_Do_You_Wont : "building floors" ) ) ),

          child : Text ( txt , textAlign : TextAlign . center , style : TextStyle ( color : Colors . white , fontSize : size ) )

        )

      )

    )

  );
  // End Of TXT Function ==> للخارطه

  // Start Of TexT Function ==> لعرض بيانات المدرس للطالب
  Widget TexT ( { required String text , required String label } ) =>
  Stack
  (

    children :
    [

      Container
      (

        margin : EdgeInsets . only ( top : 15 ),
        padding : EdgeInsets . only ( top: 10 , bottom: 10 ),
        height : label == "عنوان المكتب" || label == "وسيلة التواصل" ? 150 :
                 label == "القسم" ? 120 :
                 label == "المساقات الحالية"? 300  :
                 label == "الساعات المكتبية" ? 150 :
                 label == "النبذه" ? 400 : 90,

        decoration : BoxDecoration
        (
          color : Colors . black,
          border : Border . all ( color : Colors . blueAccent . shade700 , width : 5 ),
          borderRadius : BorderRadius . circular ( 50 )
        ),

        child : Center
        (

          child : SingleChildScrollView
          (

            child : Text
            (

              text,
              maxLines : 100,
              textAlign : TextAlign . center,
              style : TextStyle
              (

                color : Colors . white,
                fontSize : 25,
                fontWeight : FontWeight . bold

              ),

            )

          )

        )

      ),

      Center
      (

        child : Text ( label , textAlign : TextAlign . center , style : TextStyle ( color : Colors . white , fontSize : 25 , fontWeight : FontWeight . bold ) )

      )

    ]

  );
  // End Of TexT Function ==> لعرض بيانات المدرس للطالب

  // Start Of sdfa Widget ==> للصفحة الرئيسية
  Widget sdfa ( { required String text , required double size , required double top , required double left , required BuildContext context } ) =>
  Opacity
  (

    opacity : 0.7,

    child : InkWell
    (

      onTap :  ( )
      {

        if ( text ==  "المدرسين" )
          Navigator . push
          (
            context , MaterialPageRoute
            (

              builder : ( _ ) => Teachers
              (
                Image1_url : "https://cdn.mosoah.com/wp-content/uploads/2019/07/20134500/%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D9%85%D8%AF%D8%B1%D8%B3%D9%8A%D9%86-%D9%81%D9%8A-%D8%AF%D8%A8%D9%8A.jpg",
                Image1_text : "مُدرس",
                Image2_Url : "https://www.aljazeera.net/wp-content/uploads/2020/07/%D8%B5%D9%88%D8%B1%D8%A9-%D9%85%D9%8A%D8%AF%D8%A7%D9%86-2020-07-28T025900.778.png?resize=770%2C513",
                Image2text : "طالب"
              )

            )

          );

        else if ( text == "الكليات و التخصصات" )
          Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Colleges ( num : 0 ) ) ) ;

        else if ( text == "الخارطة" )
          Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Map ( What_Do_You_Wont : "Map" ) ) ) ;

        else
          Navigator . push ( context , MaterialPageRoute ( builder : ( context ) => Personal_Lost ( ) ) ) ;

      },

      child : Container
      (
        height : 158,
        width : 350,

        padding : EdgeInsets . only ( top : top , left : left ),

        decoration : BoxDecoration
        (
          border : Border . all ( color : Colors . blueAccent . shade700 , width : 20 ),
          borderRadius : text == "المدرسين" || text == "المفقودات" ?
          BorderRadius . only ( topLeft : Radius . circular ( 500 ) , bottomRight : Radius . circular ( 500 ) ) :
          BorderRadius . only ( topRight : Radius . circular ( 500 ) , bottomLeft : Radius . circular ( 500 ) ),
          color : Colors . black ,
          image : DecorationImage
          (
            image : AssetImage ( "pic/pic1.png" ),
            fit : BoxFit . contain,
          )

        ),

        child : Text ( text , style : TextStyle ( fontSize : size , color : Colors . white , fontWeight : FontWeight . bold ) )

      )

    )

  );
  // End Of sdfa Widget ==> للصفحة الرئيسية

  Widget suffixIcon ( TextEditingController controller , String txt )
  {

    if ( controller . text . isEmpty )
        return SizedBox ( ) ;

    else
      return Padding
      (

            padding : EdgeInsets . only
            (

              left : 349,
              top :
                    txt == " نبذه عن المادة" || txt == " نبذه عن المدرس" ? 165 :
                    txt == " الساعات المكتبة" ? 40 :
                    txt == " المساقات الحالية" ? 110 :
                    txt == " القسم" ? 20 :
                    txt == " وسيلة التواصل" ? 35 :
                    10

            ),

            child : IconButton
            (

              icon : Icon ( Icons . close , color : Colors . white , size : 30 ),
              onPressed : ( ) => controller . clear ( )

            )

          );

  }

}

class sts
{

  String College_Name ;
  String image ;

  sts ( { required this . College_Name , required this . image  } ) ;

}

class College_Depts
{

  List < String > Colleges_Depts ;
  College_Depts ( { required this . Colleges_Depts } ) ;

}

class College_Specialties
{

  List < String > Colleges_SpecialtieS ;
  College_Specialties ( { required this . Colleges_SpecialtieS } ) ;

}