import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
class SimplePreferences{

  static SharedPreferences _preferences;
  


  static Future init() async => 
  _preferences = await SharedPreferences.getInstance();
}

