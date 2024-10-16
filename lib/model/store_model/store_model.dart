
// Data model for nearby stores
class Store {
  final String name;
  final String description;
  final String distance;
  final String rating;
  final String deliveryTime;
  final String imageUrl;
  final String offer;
  final String availableItems;

  Store({
    required this.name,
    required this.description,
    required this.distance,
    required this.rating,
    required this.deliveryTime,
    required this.imageUrl,
    required this.offer,
    required this.availableItems,
  });
}