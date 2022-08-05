import 'package:flutter/material.dart'; 

class TextStyler extends Text {
  TextStyler(String data,
  {color:const Color.fromARGB(255, 23, 56, 94),
  textAlign:TextAlign.left,factor:1.0,
  fontWeight:FontWeight.normal,fontSize:10.0,}):
  super(data, 
  textAlign: textAlign,
  textScaleFactor: factor,

  style: TextStyle(
    color: color, 
    fontWeight: fontWeight, 
    fontSize: fontSize,  
  )
  );
}