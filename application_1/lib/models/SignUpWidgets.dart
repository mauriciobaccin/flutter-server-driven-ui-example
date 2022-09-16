//https://app.quicktype.io/

import 'dart:convert';

List<SignUpWidgets> wsFromJson(String str) => List<SignUpWidgets>.from(
    json.decode(str).map((x) => SignUpWidgets.fromJson(x)));

class SignUpWidgets {
  SignUpWidgets({
    this.type,
    this.height,
    this.size,
    this.hint,
    this.obscure,
  });

  String? type;
  double? height;
  double? size;
  String? hint;
  bool? obscure;

  factory SignUpWidgets.fromJson(Map<String, dynamic> json) => SignUpWidgets(
        type: json["type"],
        height: json["height"] == null ? 0 : json["height"].toDouble(),
        size: json["size"] == null ? 0 : json["size"].toDouble(),
        hint: json["hint"] == null ? null : json["hint"],
        obscure: json["obscure"] == null ? null : json["obscure"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "height": height == null ? null : height,
        "size": size == null ? null : size,
        "hint": hint == null ? null : hint,
        "obscure": obscure == null ? null : obscure,
      };
}
