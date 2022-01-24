class Profile {
  String? fullname;
  String? followings;
  String? image;
  String? imageHD;
  String? username;
  String? quick_bookings;
  String? created_at;
  String? dob;
  String? location;
  List? client_posting;
  Profile(
      {this.fullname,
      this.followings,
      this.image,
      this.imageHD,
      this.username,
      this.quick_bookings,
      this.created_at,
      this.dob,
      this.client_posting,this.location});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
        fullname: json['basic']['fullname'],
        followings: json['basic']['followings'].toString(),
        image: json['basic']['image'],
        imageHD: json['basic']['image_hd'],
        username: json['basic']['username'],
        quick_bookings: json['basic']['quick_bookings'].toString(),
        dob: json['basic']['dob'],
        created_at: json['basic']['created_at'],
       // client_posting: json['client_postings'],
        location: json['locations'][0]['city']);
  }
}

class Client {
  String? location;
  String? profession;
  String? experience;
  String? skills;
  bool? isActive;
  Client(
      {this.experience,
      this.location,
      this.profession,
      this.skills,
      this.isActive});
}
