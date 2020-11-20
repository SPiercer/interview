class Account {
  String imgPath;
  String name;
  String speciality;
  double distance;
  double rating;
  bool isDoctor;
  bool isFavourite;

  Account(
      {this.imgPath,
      this.distance,
      this.isDoctor,
      this.isFavourite,
      this.speciality,
      this.name,
      this.rating});
}
