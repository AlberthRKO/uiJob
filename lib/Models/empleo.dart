import 'package:empleo/Models/company.dart';

class Empleo {
  String location;
  String role;

  Company company;

  bool isFavorite;

  Empleo({this.location, this.role, this.company, this.isFavorite = false});
}
