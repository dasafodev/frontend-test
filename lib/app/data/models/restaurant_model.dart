// To parse this JSON data, do
//
//     final restaurants = restaurantsFromJson(jsonString);

import 'dart:convert';

Restaurants restaurantsFromJson(Map<String, dynamic> str) =>
    Restaurants.fromJson(str);

String restaurantsToJson(Restaurants data) => json.encode(data.toJson());

class Restaurants {
  Restaurants({
    required this.data,
    required this.paging,
  });

  List<Restaurant> data;
  Paging paging;

  factory Restaurants.fromJson(Map<String, dynamic> json) => Restaurants(
        data: List<Restaurant>.from(
            json["data"].map((x) => Restaurant.fromJson(x))),
        paging: Paging.fromJson(json["paging"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "paging": paging.toJson(),
      };
}

class Restaurant {
  Restaurant({
    required this.locationId,
    required this.name,
    required this.latitude,
    required this.longitude,
    this.photo,
    required this.description,
    required this.webUrl,
    required this.phone,
    required this.website,
    required this.email,
    required this.address,
  });

  String locationId;
  String name;
  String latitude;
  String longitude;
  Photo? photo;
  String description;
  String webUrl;
  String phone;
  String website;
  String email;
  String address;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        locationId: json["location_id"] ?? '',
        name: json["name"] ?? '',
        latitude: json["latitude"] ?? '',
        longitude: json["longitude"] ?? '',
        photo: json["photo"] != null ? Photo.fromJson(json["photo"]) : null,
        description: json["description"] ?? '',
        webUrl: json["web_url"] ?? '',
        phone: json["phone"] ?? '',
        website: json["website"] ?? '',
        email: json["email"] ?? '' ?? '',
        address: json["address"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "location_id": locationId,
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "photo": photo?.toJson(),
        "description": description,
        "web_url": webUrl,
        "phone": phone,
        "website": website,
        "email": email,
        "address": address,
      };
}

class Photo {
  Photo({
    required this.images,
    required this.isBlessed,
    required this.uploadedDate,
    required this.caption,
    required this.id,
    required this.helpfulVotes,
    required this.publishedDate,
  });

  Images images;
  bool isBlessed;
  String uploadedDate;
  String caption;
  String id;
  String helpfulVotes;
  String publishedDate;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        images: Images.fromJson(json["images"]),
        isBlessed: json["is_blessed"],
        uploadedDate: json["uploaded_date"],
        caption: json["caption"],
        id: json["id"],
        helpfulVotes: json["helpful_votes"],
        publishedDate: json["published_date"],
      );

  Map<String, dynamic> toJson() => {
        "images": images.toJson(),
        "is_blessed": isBlessed,
        "uploaded_date": uploadedDate,
        "caption": caption,
        "id": id,
        "helpful_votes": helpfulVotes,
        "published_date": publishedDate,
      };
}

class Images {
  Images({
    required this.small,
    required this.thumbnail,
    required this.original,
    required this.large,
    required this.medium,
  });

  Large small;
  Large thumbnail;
  Large original;
  Large large;
  Large medium;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        small: Large.fromJson(json["small"]),
        thumbnail: Large.fromJson(json["thumbnail"]),
        original: Large.fromJson(json["original"]),
        large: Large.fromJson(json["large"]),
        medium: Large.fromJson(json["medium"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small.toJson(),
        "thumbnail": thumbnail.toJson(),
        "original": original.toJson(),
        "large": large.toJson(),
        "medium": medium.toJson(),
      };
}

class Large {
  Large({
    required this.width,
    required this.url,
    required this.height,
  });

  String width;
  String url;
  String height;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        width: json["width"],
        url: json["url"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "url": url,
        "height": height,
      };
}

class Paging {
  Paging({
    required this.results,
    required this.totalResults,
  });

  String results;
  String totalResults;

  factory Paging.fromJson(Map<String, dynamic> json) => Paging(
        results: json["results"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
        "results": results,
        "total_results": totalResults,
      };
}
