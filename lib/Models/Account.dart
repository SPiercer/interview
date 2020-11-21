class Account {
  String imgPath;
  String name;
  String speciality;
  double distance;
  double rating;
  bool isDoctor;
  bool isFavourite;
  bool isAvailable;

  Account(
      {this.imgPath,
      this.distance,
      this.isDoctor,
      this.isFavourite,
      this.speciality,
      this.name,
      this.rating,
      this.isAvailable});

  Account.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        speciality = json['speciality'],
        distance = json['distance'],
        imgPath = json['imgPath'],
        rating = json['rating'],
        isDoctor = json['isDoctor'],
        isAvailable = json['isAvailable'],
        isFavourite = json['isFavourite'];
}
