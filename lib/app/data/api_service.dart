import 'dart:convert';

List<ApiServiceResponse> apiServiceResponseFromJson(String str) =>
    List<ApiServiceResponse>.from(
        json.decode(str).map((x) => ApiServiceResponse.fromJson(x)));

String apiServiceResponseToJson(List<ApiServiceResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiServiceResponse {
  String? id;
  String? name;
  Data? data;

  ApiServiceResponse({
    this.id,
    this.name,
    this.data,
  });

  factory ApiServiceResponse.fromJson(Map<String, dynamic> json) =>
      ApiServiceResponse(
        id: json["id"]?.toString(), // Ensure id is treated as a String
        name: json["name"],
        data: json["data"] != null ? Data.fromJson(json["data"]) : null, // Handle null data
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "data": data?.toJson(),
  };
}

class Data {
  String? dataColor;
  String? dataCapacity;
  int? capacityGb;
  double? dataPrice;
  String? dataGeneration;
  int? year;
  String? cpuModel;
  String? hardDiskSize;
  String? strapColour;
  String? caseSize;
  String? color;
  String? description;
  String? capacity;
  double? screenSize;
  String? generation;
  String? price;

  Data({
    this.dataColor,
    this.dataCapacity,
    this.capacityGb,
    this.dataPrice,
    this.dataGeneration,
    this.year,
    this.cpuModel,
    this.hardDiskSize,
    this.strapColour,
    this.caseSize,
    this.color,
    this.description,
    this.capacity,
    this.screenSize,
    this.generation,
    this.price,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    dataColor: json["color"]?.toString(),
    dataCapacity: json["capacity"]?.toString(),
    capacityGb: json["capacity GB"] is int
        ? json["capacity GB"]
        : int.tryParse(json["capacity GB"]?.toString() ?? '0'),
    dataPrice: json["price"] is double
        ? json["price"]
        : double.tryParse(json["price"]?.toString() ?? '0.0'),
    dataGeneration: json["generation"]?.toString(),
    year: json["year"] is int
        ? json["year"]
        : int.tryParse(json["year"]?.toString() ?? '0'),
    cpuModel: json["CPU model"]?.toString(),
    hardDiskSize: json["Hard disk size"]?.toString(),
    strapColour: json["Strap Colour"]?.toString(),
    caseSize: json["Case Size"]?.toString(),
    color: json["Color"]?.toString(),
    description: json["Description"]?.toString(),
    capacity: json["Capacity"]?.toString(),
    screenSize: json["Screen size"] is double
        ? json["Screen size"]
        : double.tryParse(json["Screen size"]?.toString() ?? '0.0'),
    generation: json["Generation"]?.toString(),
    price: json["Price"]?.toString(),
  );

  Map<String, dynamic> toJson() => {
    "color": dataColor ?? '',
    "capacity": dataCapacity ?? '',
    "capacity GB": capacityGb ?? 0,
    "price": dataPrice ?? 0.0,
    "generation": dataGeneration ?? '',
    "year": year ?? 0,
    "CPU model": cpuModel ?? '',
    "Hard disk size": hardDiskSize ?? '',
    "Strap Colour": strapColour ?? '',
    "Case Size": caseSize ?? '',
    "Color": color ?? '',
    "Description": description ?? '',
    "Capacity": capacity ?? '',
    "Screen size": screenSize ?? 0.0,
    "Generation": generation ?? '',
    "Price": price ?? '',
  };
}
