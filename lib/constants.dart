import 'dart:convert';

import 'package:flutter/material.dart';

import 'Models/Account.dart';

const InputBorder whiteBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1.0, color: Colors.white54));

List<Account> doctorsList = [];
List<Account> patientsList = [];
List<Account> accountList = List<Account>.generate(10, (index) {
  return Account.fromJson(json.decode('''
  [{
  "name": "Arlina Shippard",
  "speciality": "Analog Circuit Design manager",
  "distance": 22.9,
  "imgPath": "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 4.7,
  "isDoctor": false,
  "isAvailable": false,
  "isFavourite": false
}, {
  "name": "Lew Christley",
  "speciality": "Web Developer IV",
  "distance": 3.5,
  "imgPath": "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 1.8,
  "isDoctor": false,
  "isAvailable": false,
  "isFavourite": true
}, {
  "name": "Sada Ramirez",
  "speciality": "Graphic Designer",
  "distance": 32.3,
  "imgPath": "https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 4.8,
  "isDoctor": true,
  "isAvailable": true,
  "isFavourite": true
}, {
  "name": "Evelyn Stainson",
  "speciality": "Dental Hygienist",
  "distance": 49.2,
  "imgPath": "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 8.3,
  "isDoctor": false,
  "isAvailable": true,
  "isFavourite": true
}, {
  "name": "Lanny Pedycan",
  "speciality": "Research Assistant I",
  "distance": 12.9,
  "imgPath": "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 8.9,
  "isDoctor": false,
  "isAvailable": true,
  "isFavourite": true
}, {
  "name": "Klaus MacAllan",
  "speciality": "Junior Executive",
  "distance": 18.5,
  "imgPath": "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 2.5,
  "isDoctor": true,
  "isAvailable": true,
  "isFavourite": false
}, {
  "name": "Dolli Varren",
  "speciality": "Statistician IV",
  "distance": 11.1,
  "imgPath": "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 7.0,
  "isDoctor": true,
  "isAvailable": false,
  "isFavourite": true
}, {
  "name": "Alexandre Elliman",
  "speciality": "Senior Cost Accountant",
  "distance": 12.3,
  "imgPath": "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 4.4,
  "isDoctor": false,
  "isAvailable": false,
  "isFavourite": true
}, {
  "name": "Fredia De Andreis",
  "speciality": "Environmental Specialist",
  "distance": 48.1,
  "imgPath": "https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 5.1,
  "isDoctor": true,
  "isAvailable": true,
  "isFavourite": true
}, {
  "name": "Jerad Calbreath",
  "speciality": "Social Worker",
  "distance": 33.0,
  "imgPath": "https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "rating": 8.8,
  "isDoctor": false,
  "isAvailable": false,
  "isFavourite": true
}]
  ''')[index]);
});
