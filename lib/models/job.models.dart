import './company.models.dart';

class Job {
  String location;
  String role;
  Company company;
  bool favorite;

  Job({required this.location, required this.role, required this.company, this.favorite = false});
}
