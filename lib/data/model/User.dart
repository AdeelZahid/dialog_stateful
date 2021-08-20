class User {
  int id;
  int? roleId;
  String? name;
  String? email;
  String? comment;
  String? endDate;
  bool? isEndDate;
  String? language;

  String? loginId;
  String? password;

  User({
    this.id = -1,
    this.name,
    this.email,
    this.comment,
    this.endDate,
    this.isEndDate = false,
    this.language,
    this.loginId,
    this.password,
    this.roleId,
  });

  void printUser() {
    print("id: ${this.id}"
        "Name: ${this.name}   email: ${this.email}   comment: ${this.comment}   endDate: ${this.endDate}   loginId: ${this.loginId}   password: ${this.password}  ");
  }
}
