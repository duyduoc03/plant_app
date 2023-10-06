import 'package:plant_app/model/plant.dart';
import 'package:plant_app/model/user.dart';

class Wishlist {
  final int wishlistId;
  final User user;
  final Plant plant;

  Wishlist({
    required this.wishlistId,
    required this.user,
    required this.plant,
  });


}
List<Wishlist> demoWishlists = [
  Wishlist(
    wishlistId: 1,
    user: demoUsers[0],
    plant: demoPlants[0],
  ),
  Wishlist(
    wishlistId: 1,
    user: demoUsers[2],
    plant: demoPlants[4],
  ),
  Wishlist(
    wishlistId: 2,
    user: demoUsers[2],
    plant: demoPlants[1],
  ),
  Wishlist(
    wishlistId: 2,
    user: demoUsers[2],
    plant: demoPlants[1],
  ),
  // Thêm các đối tượng Wishlist khác nếu cần
];