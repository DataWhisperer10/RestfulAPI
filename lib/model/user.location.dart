class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimeZone timezone;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
    required this.street,
  });
  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final coordinates = LocationCoordinate.fromMap(json['coordinates']);
    final street = LocationStreet.fromMap(json['street']);
    final timezone = LocationTimeZone.fromMap(json['timezone']);
    return UserLocation(
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postcode: json['postcode'].toString(),
        coordinates: coordinates,
        timezone: timezone,
        street: street);
  }
}

class LocationStreet {
  final int number;
  final String name;
  LocationStreet({required this.name, required this.number});
  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(name: json['name'], number: json['number']);
  }
}

class LocationCoordinate {
  final String latitude;
  final String longitude;
  LocationCoordinate({
    required this.latitude,
    required this.longitude,
  });
  factory LocationCoordinate.fromMap(Map<String, dynamic> json) {
    return LocationCoordinate(
        latitude: json['latitude'], longitude: json['longitude']);
  }
}

class LocationTimeZone {
  final String offset;
  final String description;
  LocationTimeZone({
    required this.description,
    required this.offset,
  });
  factory LocationTimeZone.fromMap(Map<String, dynamic> json) {
    return LocationTimeZone(
        description: json['description'], offset: json['offset']);
  }
}
