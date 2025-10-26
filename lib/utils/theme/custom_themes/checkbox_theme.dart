
import 'package:flutter/material.dart';

/// Custom Class for Light and Dark Text Themes
class ANBCheckboxTheme{
  ANBCheckboxTheme._();


  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),

    fillColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.selected)){
          return Colors.white;
        }else{
          return Colors.black;
        }
      }),

      fillColor: MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.selected)){
          return Colors.blue;
        }else{
          return Colors.transparent;
        }
      })
  );
}