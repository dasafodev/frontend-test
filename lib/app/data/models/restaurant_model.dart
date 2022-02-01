// To parse this JSON data, do
//
//     final restaurants = restaurantsFromJson(jsonString);

import 'dart:convert';

Restaurants restaurantsFromJson(String str) =>
    Restaurants.fromJson(json.decode(str));

String restaurantsToJson(Restaurants data) => json.encode(data.toJson());

class Restaurants {
  Restaurants({
    required this.data,
    required this.paging,
  });

  List<Restaurant> data;
  Paging paging;

  factory Restaurants.fromJson(Map<String, dynamic> json) => Restaurants(
        data: List<Restaurant>.from(json["data"].map((x) => Restaurant.fromJson(x))),
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
    required this.numReviews,
    required this.timezone,
    required this.locationString,
    required this.photo,
    required this.awards,
    required this.doubleclickZone,
    required this.preferredMapEngine,
    required this.rawRanking,
    required this.rankingGeo,
    required this.rankingGeoId,
    required this.rankingPosition,
    required this.rankingDenominator,
    required this.rankingCategory,
    required this.ranking,
    required this.distance,
    required this.distanceString,
    required this.bearing,
    required this.rating,
    required this.isClosed,
    required this.openNowText,
    required this.isLongClosed,
    required this.priceLevel,
    required this.price,
    required this.description,
    required this.webUrl,
    required this.writeReview,
    required this.parentDisplayName,
    required this.isJfyEnabled,
    required this.nearestMetroStation,
    required this.phone,
    required this.website,
    required this.email,
    required this.address,
    required this.isCandidateForContactInfoSuppression,
  });

  String locationId;
  String name;
  String latitude;
  String longitude;
  String numReviews;
  String timezone;
  String locationString;
  Photo photo;
  List<dynamic> awards;
  String doubleclickZone;
  String preferredMapEngine;
  String rawRanking;
  String rankingGeo;
  String rankingGeoId;
  String rankingPosition;
  String rankingDenominator;
  String rankingCategory;
  String ranking;
  String distance;
  String distanceString;
  String bearing;
  String rating;
  bool isClosed;
  String openNowText;
  bool isLongClosed;
  String priceLevel;
  String price;
  String description;
  String webUrl;
  String writeReview;
  String parentDisplayName;
  bool isJfyEnabled;
  List<dynamic> nearestMetroStation;
  String phone;
  String website;
  String email;
  String address;
  bool isCandidateForContactInfoSuppression;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        locationId: json["location_id"],
        name: json["name"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        numReviews: json["num_reviews"],
        timezone: json["timezone"],
        locationString: json["location_string"],
        photo: Photo.fromJson(json["photo"]),
        awards: List<dynamic>.from(json["awards"].map((x) => x)),
        doubleclickZone: json["doubleclick_zone"],
        preferredMapEngine: json["preferred_map_engine"],
        rawRanking: json["raw_ranking"],
        rankingGeo: json["ranking_geo"],
        rankingGeoId: json["ranking_geo_id"],
        rankingPosition: json["ranking_position"],
        rankingDenominator: json["ranking_denominator"],
        rankingCategory: json["ranking_category"],
        ranking: json["ranking"],
        distance: json["distance"],
        distanceString: json["distance_string"],
        bearing: json["bearing"],
        rating: json["rating"],
        isClosed: json["is_closed"],
        openNowText: json["open_now_text"],
        isLongClosed: json["is_long_closed"],
        priceLevel: json["price_level"],
        price: json["price"],
        description: json["description"],
        webUrl: json["web_url"],
        writeReview: json["write_review"],
        parentDisplayName: json["parent_display_name"],
        isJfyEnabled: json["is_jfy_enabled"],
        nearestMetroStation:
            List<dynamic>.from(json["nearest_metro_station"].map((x) => x)),
        phone: json["phone"],
        website: json["website"],
        email: json["email"],
        address: json["address"],
        isCandidateForContactInfoSuppression:
            json["is_candidate_for_contact_info_suppression"],
      );

  Map<String, dynamic> toJson() => {
        "location_id": locationId,
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "num_reviews": numReviews,
        "timezone": timezone,
        "location_string": locationString,
        "photo": photo.toJson(),
        "awards": List<dynamic>.from(awards.map((x) => x)),
        "doubleclick_zone": doubleclickZone,
        "preferred_map_engine": preferredMapEngine,
        "raw_ranking": rawRanking,
        "ranking_geo": rankingGeo,
        "ranking_geo_id": rankingGeoId,
        "ranking_position": rankingPosition,
        "ranking_denominator": rankingDenominator,
        "ranking_category": rankingCategory,
        "ranking": ranking,
        "distance": distance,
        "distance_string": distanceString,
        "bearing": bearing,
        "rating": rating,
        "is_closed": isClosed,
        "open_now_text": openNowText,
        "is_long_closed": isLongClosed,
        "price_level": priceLevel,
        "price": price,
        "description": description,
        "web_url": webUrl,
        "write_review": writeReview,
        "parent_display_name": parentDisplayName,
        "is_jfy_enabled": isJfyEnabled,
        "nearest_metro_station":
            List<dynamic>.from(nearestMetroStation.map((x) => x)),
        "phone": phone,
        "website": website,
        "email": email,
        "address": address,
        "is_candidate_for_contact_info_suppression":
            isCandidateForContactInfoSuppression,
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
