class OrderDetail {
  final int orderDetailId;
  final int orderId;
  final int userId;
  final int plantId;
  final int quantity;

  OrderDetail({
    required this.orderDetailId,
    required this.orderId,
    required this.userId,
    required this.plantId,
    required this.quantity,
  });

}

List<OrderDetail> demoOrderDetails = [
  OrderDetail(
    orderDetailId: 1,
    orderId: 1,
    userId: 1,
    plantId: 101,
    quantity: 2,
  ),
  OrderDetail(
    orderDetailId: 2,
    orderId: 1,
    userId: 1,
    plantId: 102,
    quantity: 1,
  ),
  OrderDetail(
    orderDetailId: 3,
    orderId: 2,
    userId: 2,
    plantId: 103,
    quantity: 3,
  ),
  // Thêm các đối tượng OrderDetail khác nếu cần
];