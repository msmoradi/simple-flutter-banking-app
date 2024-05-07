class TourDto {
  final int id;
  final String title;
  final String locationName;
  final String typeName;
  final String afterPrice;
  final String imageUrl;
  final String? beforePrice;
  final String? time;
  final bool isFree;

  TourDto({
    required this.id,
    required this.title,
    required this.locationName,
    required this.typeName,
    required this.afterPrice,
    required this.imageUrl,
    this.beforePrice,
    this.time,
    this.isFree = false
  });
}
