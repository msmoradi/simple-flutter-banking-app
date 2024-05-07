import 'package:domain/entities/entity.dart';

class TourEntity extends Entity {
  final List<Tour> tours;
  final List<String> cites;

  TourEntity({
    required this.tours,
    required this.cites,
  });
}

class Tour {
  final int id;
  final String title;
  final String locationName;
  final String typeName;
  final String afterPrice;
  final String imageUrl;
  final String? ticketPrice;
  final String? beforePrice;
  final String? time;
  final bool isFree;

  Tour({
    required this.id,
    required this.title,
    required this.locationName,
    required this.typeName,
    required this.afterPrice,
    required this.imageUrl,
    this.ticketPrice,
    this.beforePrice,
    this.time,
    this.isFree = false,
  });
}
