import 'dart:convert';

List<City> cityFromJson(List<dynamic> str) => List<City>.from(str.map((x) => City.fromJson(x)));

String cityToJson(List<City> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class City {
    City({
        required this.name,
        required this.latitude,
        required this.longitude,
        required this.country,
        required this.population,
        required this.isCapital,
    });

    String name;
    double latitude;
    double longitude;
    String country;
    int population;
    bool isCapital;

    factory City.fromJson(Map<String, dynamic> json) => City(
        name: json["name"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        country: json["country"],
        population: json["population"],
        isCapital: json["is_capital"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "country": country,
        "population": population,
        "is_capital": isCapital,
    };
}
