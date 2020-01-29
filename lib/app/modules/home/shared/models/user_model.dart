class UserModel {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  UserModel({this.id, this.email, this.first_name, this.last_name, this.avatar});

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        email = json["email"],
        first_name = json["first_name"],
        last_name = json["last_name"],
        avatar = json["avatar"];
}

class UserResponse {
  final List<UserModel> results;
  final String error;

  UserResponse(this.results, this.error);

  UserResponse.fromJson(Map<String, dynamic> json)
      : results = (json["data"] as List)
            .map((i) => new UserModel.fromJson(i))
            .toList(),
        error = "";

  UserResponse.withError(String errorValue)
      : results = List(),
        error = errorValue;
}
