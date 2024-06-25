class CyclesModel {
  final String id;
  final String name;
  final String image;
  final String price;
  final String description;

  CyclesModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price});

        factory CyclesModel.initWithoutData() => CyclesModel(
          id: "",
        name: "",
        description: "",
        image: "",
        price: "",
      );

  factory CyclesModel.fromJson(Map<dynamic, dynamic> json) => CyclesModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
      );
}
