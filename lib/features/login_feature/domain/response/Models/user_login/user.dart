class User {
  num? id;
  String? name;
  String? email;
  DateTime? emailVerifiedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromUserId315NameJarodOHaraEmailDellaOharaExampleComEmailVerifiedAt20240331T220703000000ZCreatedAt20240331T220703000000ZUpdatedAt20240331T220703000000ZTokenEyJ0eXAiOiJkv1QiLcJhbGciOiJsUzI1NiJ9EyJhdWQiOiIxIiwianRpIjoiNgEzMtAyOwIwZdQzYwe2NtJhZtFiYzRiOde2ZDc5ZwYxZwq1YmYzYjdhMmRlZgq1Mtq4ZmNmYjU5MgFlZDg2NDdhZtYwZtYzZjA5YTg4ZjciLcJpYxQiOjE3Mti2Odm4NDguMjk4MzgyLcJuYmYiOjE3Mti2Odm4NDguMjk4Mzg0LcJleHAiOjE3NdQyMTk4NDguMjk1OdIxLcJzdWIiOiIzMtUiLcJzY29wZxMiOltdfQTxr0tf2Dk2Mfpn9kXVq7OCthxItv1r7AK1u47HJsM4XeVRc2AMiyVlmUhcwTdr5Phw60FNkOJfQ5qSc9Nbh4hjrgRy7WFoHmTvY6pihxLavUl08iOCTaxna3yd5hcxREy9fhxSLePeCmY8m1uXapqyivVuCipjQx7SzWkLNcWPmdgfTwRGxwqzHgaGhKpex9SQg8jWYmFqCj6xvlCplZKuJ7aE9hJrDcG4JbOqNzwkt1fq2Y0ly1w523YBpGYlD4CfGt5AuzWcNe3eiDyB9FyvPVTfWyb1lUsHjkLDv2Kypbje7pHfOfw9hKiLmJdHKbvSx4g90VvImFx9kIfLCdgSgdeGelvrOUy0oZ7qIzW7pYvabuiNriEc2iGkTq4E3I7J3sYFpWp44t96L9Tv82qH6hPyFtEmf5a4Ukep4W37kEqTthst2umOqcrhAdfRqNp0iFQnSwlLkCiHjlUw6nPXzBxRfnlV7QWmhGoCl34I7mVhT8OtwmOGi0uqouoSKwFUs6kMe0q0EoqRNjprF9mxbyAdarKzyxOddvRovo5rwCfgyQoQgrPxbsGrjdNjP3CqLrVqHlh7eUbTN6SbscRfk4WwkGeHTdAr3C5yj6Rgyk0Fc2R6Ac4nWqVfIyp73sCneyEyjVi5poRi(
      Map<String, dynamic> json) {
    return User(
      id: num.tryParse(json['id'].toString()),
      name: json['name']?.toString(),
      email: json['email']?.toString(),
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.tryParse(json['email_verified_at'].toString()),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.tryParse(json['created_at'].toString()),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.tryParse(json['updated_at'].toString()),
    );
  }

  Map<String, dynamic>
      toUserId315NameJarodOHaraEmailDellaOharaExampleComEmailVerifiedAt20240331T220703000000ZCreatedAt20240331T220703000000ZUpdatedAt20240331T220703000000ZTokenEyJ0eXAiOiJkv1QiLcJhbGciOiJsUzI1NiJ9EyJhdWQiOiIxIiwianRpIjoiNgEzMtAyOwIwZdQzYwe2NtJhZtFiYzRiOde2ZDc5ZwYxZwq1YmYzYjdhMmRlZgq1Mtq4ZmNmYjU5MgFlZDg2NDdhZtYwZtYzZjA5YTg4ZjciLcJpYxQiOjE3Mti2Odm4NDguMjk4MzgyLcJuYmYiOjE3Mti2Odm4NDguMjk4Mzg0LcJleHAiOjE3NdQyMTk4NDguMjk1OdIxLcJzdWIiOiIzMtUiLcJzY29wZxMiOltdfQTxr0tf2Dk2Mfpn9kXVq7OCthxItv1r7AK1u47HJsM4XeVRc2AMiyVlmUhcwTdr5Phw60FNkOJfQ5qSc9Nbh4hjrgRy7WFoHmTvY6pihxLavUl08iOCTaxna3yd5hcxREy9fhxSLePeCmY8m1uXapqyivVuCipjQx7SzWkLNcWPmdgfTwRGxwqzHgaGhKpex9SQg8jWYmFqCj6xvlCplZKuJ7aE9hJrDcG4JbOqNzwkt1fq2Y0ly1w523YBpGYlD4CfGt5AuzWcNe3eiDyB9FyvPVTfWyb1lUsHjkLDv2Kypbje7pHfOfw9hKiLmJdHKbvSx4g90VvImFx9kIfLCdgSgdeGelvrOUy0oZ7qIzW7pYvabuiNriEc2iGkTq4E3I7J3sYFpWp44t96L9Tv82qH6hPyFtEmf5a4Ukep4W37kEqTthst2umOqcrhAdfRqNp0iFQnSwlLkCiHjlUw6nPXzBxRfnlV7QWmhGoCl34I7mVhT8OtwmOGi0uqouoSKwFUs6kMe0q0EoqRNjprF9mxbyAdarKzyxOddvRovo5rwCfgyQoQgrPxbsGrjdNjP3CqLrVqHlh7eUbTN6SbscRfk4WwkGeHTdAr3C5yj6Rgyk0Fc2R6Ac4nWqVfIyp73sCneyEyjVi5poRi() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (emailVerifiedAt != null)
        'email_verified_at': emailVerifiedAt?.toIso8601String(),
      if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
      if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
