import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class User{
  final int id;
  final String name;
  final String email;
  final String image;
  final int phone;
  final String address;

  User(this.id,this.name,this.email,this.image,this.phone,this.address);

}

