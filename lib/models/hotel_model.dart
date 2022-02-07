import 'package:lessontvelwe/models/owner_model.dart';

class HotelModel {
  String name;
  String location;
  String bedroom;
  String bathroom;
  String description;
  double range;
  OwnerModel owner;
  List<String> imageList;
  String perweek;
  String mapimg;

  HotelModel(
      this.name, this.location, this.bedroom, this.bathroom,this.description, this.imageList, this.owner, this.range, this.perweek, this.mapimg);
}