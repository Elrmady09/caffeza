import '../core/constants/app_images.dart';
import '../features/product_detail/data/models/product_model.dart';

final List<ProductModel> dummyProducts = [
  ProductModel(
    name: "Caffe Mocha",
    type: "Deep Foam",
    price: "4.53",
    image: AppImages.Imagecard_1,
    description: "A Caffe Mocha is a chocolate-flavored variant of a caffe latte. It is typically made with espresso, steamed milk, and chocolate syrup or cocoa powder. It’s a sweet, rich, and creamy beverage, often topped with whipped cream or milk foam.",
  ),
  ProductModel(
    name: "Flat White",
    type: "Espresso Blend",
    price: "5.20",
    image: AppImages.Imagecard_2,
    description: "A Flat White is a smooth and velvety coffee drink that originated in Australia and New Zealand. It is made with a shot of espresso and microfoamed milk, resulting in a creamy texture and balanced flavor without too much foam.",
  ),
  ProductModel(
    name: "Latte",
    type: "Creamy",
    price: "4.90",
    image: AppImages.Imagecard_3,
    description: "A Latte, or 'Caffè Latte', is made with one shot of espresso and a generous amount of steamed milk. It’s topped with a light layer of foam and is known for its mild flavor and creamy texture, making it a popular choice for milk coffee lovers.",
  ),
  ProductModel(
    name: "Cappuccino",
    type: "Milk Foam",
    price: "4.75",
    image: AppImages.Imagecard_4,
    description: "A Cappuccino is a balanced espresso-based beverage composed of equal parts espresso, steamed milk, and milk foam. It has a rich flavor with a thick, foamy top, and is often dusted with cocoa or cinnamon.",
  ),
];