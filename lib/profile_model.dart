class Profile {
  String? fullname;
  String? followings;
  String? image;
  String? imageHD;
  String? username;
  String? quick_bookings;
  String? created_at;
  String? dob;
 List<Client>? client_posting;
 Profile({this.fullname,this.followings,this.image,this.imageHD,this.username,this.quick_bookings,this.created_at,this.dob,this.client_posting});

factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      fullname: json['fullname'],
      followings: json['followings'],
      image: json['image'],
      imageHD: json['image_hd'],
      username: json['username'],
      quick_bookings: json['quick_bookings'],
      dob: json['dob'],
      created_at: json['created_at'],
      client_posting: json['client_postings']
    );
  }

}


class Client {
  String? location;
  String? profession;
  String? experience;
  String? skills;
  bool? isActive;
  Client({this.experience,this.location,this.profession,this.skills,this.isActive});
}
