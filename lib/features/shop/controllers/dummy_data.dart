import '../../../routes/routes.dart';

import '../../../utils/constants/enums.dart';

import '../../../utils/constants/image_strings.dart';

import '../../personalization/models/address_model.dart';

import '../../personalization/models/user_model.dart';

import '../models/banner_model.dart';

import '../models/brand_category_model.dart';

import '../models/brand_model.dart';

import '../models/cart_item_model.dart';

import '../models/cart_model.dart';

import '../models/category_model.dart';

import '../models/order_model.dart';

import '../models/product_attribute_model.dart';

import '../models/product_category_model.dart';

import '../models/product_model.dart';

import '../models/product_review_model.dart';

import '../models/product_variation_model.dart';

class TDummyData {
  /// -- Banners

  static final List<BannerModel> banners = [
    BannerModel(imageUrl: YbImages.banner1, targetScreen: YbRoutes.order, active: false),
    BannerModel(imageUrl: YbImages.banner2, targetScreen: YbRoutes.cart, active: true),
    BannerModel(imageUrl: YbImages.banner3, targetScreen: YbRoutes.favourites, active: true),
    BannerModel(imageUrl: YbImages.banner4, targetScreen: YbRoutes.search, active: true),
    BannerModel(imageUrl: YbImages.banner5, targetScreen: YbRoutes.settings, active: true),
    BannerModel(imageUrl: YbImages.banner6, targetScreen: YbRoutes.userAddress, active: true),
    BannerModel(imageUrl: YbImages.banner8, targetScreen: YbRoutes.checkout, active: false),
  ];

  /// -- User

  static final UserModel user = UserModel(
    firstName: 'Yume',
    lastName: 'Bazaar',
    email: 'support@yumebazar.com',
    phoneNumber: '+9779851225093',
    profilePicture: YbImages.user,
    addresses: [
      AddressModel(
        id: '1',
        name: 'Yume Bazaar',
        phoneNumber: '+9779851225093',
        street: 'Old Baneshwor',
        city: 'Kathmandu',
        state: 'Bagmati',
        postalCode: '44500',
        country: 'Nepal',
      ),
      AddressModel(
        id: '6',
        name: 'Sanjeev Shrestha',
        phoneNumber: '+9779841993728',
        street: 'Kapan',
        city: 'Kathmandu',
        state: 'Bagmati',
        postalCode: '44500',
        country: 'Nepal',
      ),
      AddressModel(
        id: '2',
        name: 'Chandra Lal Shrestha',
        phoneNumber: '+9779841059093',
        street: 'Kapan',
        city: 'Kathmandu',
        state: 'Bagmati',
        postalCode: '44500',
        country: 'Nepal',
      ),
      AddressModel(
        id: '3',
        name: 'Ramila Nayaju',
        phoneNumber: '+9779841993722',
        street: 'Kapan',
        city: 'Kathmandu',
        state: 'Bagmati',
        postalCode: '44500',
        country: 'Nepal',
      ),
      AddressModel(
        id: '4',
        name: 'Mayank Agarwal',
        phoneNumber: '+9779841993721',
        street: 'Dilibazar',
        city: 'Kathmandu',
        state: 'Bagmati',
        postalCode: '44500',
        country: 'Nepal',
      ),
      AddressModel(
        id: '5',
        name: 'Yaman Maharjan',
        phoneNumber: '+9779841993720',
        street: 'Naxal',
        city: 'Kathmandu',
        state: 'Bagmati',
        postalCode: '44500',
        country: 'Nepal',
      )
    ],
    username: '',
    id: '',
  );

  /// -- Cart

  static final CartModel cart = CartModel(
    cartId: '001',
    items: [
      CartItemModel(
        productId: '001',
        variationId: '1',
        quantity: 1,
        title: products[0].title,
        image: products[0].thumbnail,
        brandName: products[0].brand!.name,
        price: products[0].productVariations![0].price,
        selectedVariation: products[0].productVariations![0].attributeValues,
      ),
      CartItemModel(
        productId: '002',
        variationId: '',
        quantity: 1,
        title: products[1].title,
        image: products[1].thumbnail,
        brandName: products[1].brand!.name,
        price: products[1].price,
        selectedVariation: products[1].productVariations != null ? products[1].productVariations![1].attributeValues : {},
      ),
    ],
  );

  /// -- Order

  static final List<OrderModel> orders = [
    OrderModel(id: 'CWT0012', status: OrderStatus.processing, items: cart.items, totalAmount: 265, orderDate: DateTime(2023, 09, 1), deliveryDate: DateTime(2023, 09, 9)),
    OrderModel(id: 'CWT0025', status: OrderStatus.shipped, items: cart.items, totalAmount: 369, orderDate: DateTime(2023, 10, 2), deliveryDate: DateTime(2023, 10, 6)),
    OrderModel(id: 'CWT0152', status: OrderStatus.delivered, items: cart.items, totalAmount: 254, orderDate: DateTime(2023, 11, 3), deliveryDate: DateTime(2023, 11, 8)),
    OrderModel(id: 'CWT0265', status: OrderStatus.delivered, items: cart.items, totalAmount: 355, orderDate: DateTime(2023, 12, 20), deliveryDate: DateTime(2023, 12, 25)),
    OrderModel(id: 'CWT1536', status: OrderStatus.delivered, items: cart.items, totalAmount: 115, orderDate: DateTime(2023, 12, 25), deliveryDate: DateTime(2024, 01, 1)),
  ];

  /// -- List of all Categories

  static final List<CategoryModel> categories = [
    CategoryModel(id: '1', image: YbImages.sportIcon, name: 'Sports', isFeatured: true),
    CategoryModel(id: '2', image: YbImages.electronicsIcon, name: 'Electronics', isFeatured: true),
    CategoryModel(id: '3', image: YbImages.clothIcon, name: 'Clothes', isFeatured: true),
    CategoryModel(id: '5', image: YbImages.furnitureIcon, name: 'Furniture', isFeatured: true),
    CategoryModel(id: '4', image: YbImages.animalIcon, name: 'Animals', isFeatured: true),
    CategoryModel(id: '6', image: YbImages.shoeIcon, name: 'Shoes', isFeatured: true),
    CategoryModel(id: '7', image: YbImages.cosmeticsIcon, name: 'Cosmetics', isFeatured: true),
    CategoryModel(id: '14', image: YbImages.jeweleryIcon, name: 'Jewelery', isFeatured: true),

    ///subcategories
    CategoryModel(id: '8', image: YbImages.sportIcon, name: 'Sport Shoes', parentId: '1', isFeatured: false),
    CategoryModel(id: '9', image: YbImages.sportIcon, name: 'Track suits', parentId: '3', isFeatured: false),
    CategoryModel(id: '10', image: YbImages.sportIcon, name: 'Sports Equipments', parentId: '1', isFeatured: false),

    //furniture
    CategoryModel(id: '11', image: YbImages.furnitureIcon, name: 'Bedroom furniture', parentId: '5', isFeatured: false),
    CategoryModel(id: '12', image: YbImages.furnitureIcon, name: 'Kitchen furniture', parentId: '5', isFeatured: false),
    CategoryModel(id: '13', image: YbImages.furnitureIcon, name: 'Office furniture', parentId: '5', isFeatured: false),

    //electronics
    CategoryModel(id: '14', image: YbImages.smartphoneIcon, name: 'Laptop', parentId: '2', isFeatured: false),
    CategoryModel(id: '15', image: YbImages.electronicsIcon, name: 'Mobile', parentId: '2', isFeatured: false),
    CategoryModel(id: '16', image: YbImages.clothIcon, name: 'Shirts', parentId: '3', isFeatured: false),
  ];

  /// -- List of all Brands

  static final List<BrandModel> brands = [
    BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike', productsCount: 265, isFeatured: true),
    BrandModel(id: '2', image: YbImages.adidasLogo, name: 'Adidas', productsCount: 95, isFeatured: true),
    BrandModel(id: '8', image: YbImages.kenwoodLogo, name: 'Kenwood', productsCount: 36, isFeatured: false),
    BrandModel(id: '9', image: YbImages.ikeaLogo, name: 'IKEA', productsCount: 36, isFeatured: false),
    BrandModel(id: '5', image: YbImages.appleLogo, name: 'Apple', productsCount: 16, isFeatured: true),
    BrandModel(id: '10', image: YbImages.acerlogo, name: 'Acer', productsCount: 36, isFeatured: false),
    BrandModel(id: '3', image: YbImages.jordanLogo, name: 'Jordan', productsCount: 36, isFeatured: true),
    BrandModel(id: '4', image: YbImages.pumaLogo, name: 'Puma', productsCount: 65, isFeatured: true),
    BrandModel(id: '6', image: YbImages.zaraLogo, name: 'ZARA', productsCount: 36, isFeatured: true),
    BrandModel(id: '7', image: YbImages.samsungLogo, name: 'Samsung', productsCount: 36, isFeatured: false),
  ];

  /// -- List of all Brand Categories

  static final List<BrandCategoryModel> brandCategory = [
    BrandCategoryModel(brandId: '1', categoryId: '1'),
    BrandCategoryModel(brandId: '1', categoryId: '8'),
    BrandCategoryModel(brandId: '1', categoryId: '9'),
    BrandCategoryModel(brandId: '1', categoryId: '10'),
    BrandCategoryModel(brandId: '2', categoryId: '1'),
    BrandCategoryModel(brandId: '2', categoryId: '8'),
    BrandCategoryModel(brandId: '2', categoryId: '9'),
    BrandCategoryModel(brandId: '2', categoryId: '10'),
    BrandCategoryModel(brandId: '3', categoryId: '1'),
    BrandCategoryModel(brandId: '3', categoryId: '8'),
    BrandCategoryModel(brandId: '3', categoryId: '9'),
    BrandCategoryModel(brandId: '3', categoryId: '10'),
    BrandCategoryModel(brandId: '4', categoryId: '1'),
    BrandCategoryModel(brandId: '4', categoryId: '8'),
    BrandCategoryModel(brandId: '4', categoryId: '9'),
    BrandCategoryModel(brandId: '4', categoryId: '10'),
    BrandCategoryModel(brandId: '5', categoryId: '15'),
    BrandCategoryModel(brandId: '5', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '14'),
    BrandCategoryModel(brandId: '6', categoryId: '3'),
    BrandCategoryModel(brandId: '6', categoryId: '16'),
    BrandCategoryModel(brandId: '7', categoryId: '2'),
    BrandCategoryModel(brandId: '8', categoryId: '5'),
    BrandCategoryModel(brandId: '8', categoryId: '11'),
    BrandCategoryModel(brandId: '8', categoryId: '12'),
    BrandCategoryModel(brandId: '8', categoryId: '13'),
    BrandCategoryModel(brandId: '9', categoryId: '5'),
    BrandCategoryModel(brandId: '9', categoryId: '11'),
    BrandCategoryModel(brandId: '9', categoryId: '12'),
    BrandCategoryModel(brandId: '9', categoryId: '13'),
  ];

  /// -- List of all Product Categories

  static final List<ProductCategoryModel> productCategories = [
    ProductCategoryModel(productId: '001', categoryId: '1'),
    ProductCategoryModel(productId: '001', categoryId: '8'),
    ProductCategoryModel(productId: '004', categoryId: '3'),
    ProductCategoryModel(productId: '002', categoryId: '3'),
    ProductCategoryModel(productId: '002', categoryId: '16'),
    ProductCategoryModel(productId: '003', categoryId: '3'),
    ProductCategoryModel(productId: '005', categoryId: '1'),
    ProductCategoryModel(productId: '005', categoryId: '8'),
    ProductCategoryModel(productId: '040', categoryId: '2'),
    ProductCategoryModel(productId: '040', categoryId: '15'),
    ProductCategoryModel(productId: '006', categoryId: '2'),
    ProductCategoryModel(productId: '007', categoryId: '4'),
    ProductCategoryModel(productId: '009', categoryId: '1'),
    ProductCategoryModel(productId: '009', categoryId: '8'),
    ProductCategoryModel(productId: '009', categoryId: '6'),
    ProductCategoryModel(productId: '010', categoryId: '1'),
    ProductCategoryModel(productId: '010', categoryId: '8'),
    ProductCategoryModel(productId: '011', categoryId: '1'),
    ProductCategoryModel(productId: '011', categoryId: '8'),
    ProductCategoryModel(productId: '011', categoryId: '6'),
    ProductCategoryModel(productId: '012', categoryId: '1'),
    ProductCategoryModel(productId: '012', categoryId: '8'),
    ProductCategoryModel(productId: '012', categoryId: '6'),
    ProductCategoryModel(productId: '013', categoryId: '1'),
    ProductCategoryModel(productId: '013', categoryId: '8'),
    ProductCategoryModel(productId: '014', categoryId: '1'),
    ProductCategoryModel(productId: '014', categoryId: '9'),
    ProductCategoryModel(productId: '015', categoryId: '1'),
    ProductCategoryModel(productId: '015', categoryId: '9'),
    ProductCategoryModel(productId: '016', categoryId: '1'),
    ProductCategoryModel(productId: '016', categoryId: '9'),
    ProductCategoryModel(productId: '017', categoryId: '1'),
    ProductCategoryModel(productId: '017', categoryId: '9'),
    ProductCategoryModel(productId: '018', categoryId: '1'),
    ProductCategoryModel(productId: '018', categoryId: '10'),
    ProductCategoryModel(productId: '019', categoryId: '1'),
    ProductCategoryModel(productId: '019', categoryId: '10'),
    ProductCategoryModel(productId: '020', categoryId: '1'),
    ProductCategoryModel(productId: '020', categoryId: '10'),
    ProductCategoryModel(productId: '021', categoryId: '1'),
    ProductCategoryModel(productId: '021', categoryId: '10'),
    ProductCategoryModel(productId: '022', categoryId: '5'),
    ProductCategoryModel(productId: '022', categoryId: '11'),
    ProductCategoryModel(productId: '023', categoryId: '5'),
    ProductCategoryModel(productId: '023', categoryId: '11'),
    ProductCategoryModel(productId: '024', categoryId: '5'),
    ProductCategoryModel(productId: '024', categoryId: '11'),
    ProductCategoryModel(productId: '025', categoryId: '5'),
    ProductCategoryModel(productId: '025', categoryId: '11'),
    ProductCategoryModel(productId: '026', categoryId: '5'),
    ProductCategoryModel(productId: '026', categoryId: '12'),
    ProductCategoryModel(productId: '027', categoryId: '5'),
    ProductCategoryModel(productId: '027', categoryId: '12'),
    ProductCategoryModel(productId: '028', categoryId: '5'),
    ProductCategoryModel(productId: '028', categoryId: '12'),
    ProductCategoryModel(productId: '029', categoryId: '5'),
    ProductCategoryModel(productId: '029', categoryId: '13'),
    ProductCategoryModel(productId: '030', categoryId: '5'),
    ProductCategoryModel(productId: '030', categoryId: '13'),
    ProductCategoryModel(productId: '031', categoryId: '5'),
    ProductCategoryModel(productId: '031', categoryId: '13'),
    ProductCategoryModel(productId: '032', categoryId: '5'),
    ProductCategoryModel(productId: '032', categoryId: '13'),
    ProductCategoryModel(productId: '033', categoryId: '2'),
    ProductCategoryModel(productId: '033', categoryId: '14'),
    ProductCategoryModel(productId: '034', categoryId: '2'),
    ProductCategoryModel(productId: '034', categoryId: '14'),
    ProductCategoryModel(productId: '035', categoryId: '2'),
    ProductCategoryModel(productId: '035', categoryId: '14'),
    ProductCategoryModel(productId: '036', categoryId: '2'),
    ProductCategoryModel(productId: '036', categoryId: '14'),
    ProductCategoryModel(productId: '037', categoryId: '2'),
    ProductCategoryModel(productId: '037', categoryId: '15'),
    ProductCategoryModel(productId: '038', categoryId: '2'),
    ProductCategoryModel(productId: '038', categoryId: '15'),
    ProductCategoryModel(productId: '039', categoryId: '2'),
    ProductCategoryModel(productId: '039', categoryId: '15'),

    //040 after product 005

    ProductCategoryModel(productId: '008', categoryId: '2'),
  ];

  /// -- List of all Products

  static final List<ProductModel> products = [

    ProductModel(
      id: '009',
      title: 'Nike Air Jordon 19 Blue',
      stock: 15,
      price: 4000,
      isFeatured: false,
      thumbnail: YbImages.productImage19,
      description: 'This is a Product description for Nike Air Jordon. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage19, YbImages.productImage20, YbImages.productImage21, YbImages.productImage22],
      salePrice: 2000,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '010',

      title: 'Nike Air Jordon 6 Orange',

      stock: 15,

      price: 40000,

      thumbnail: YbImages.productImage20,

      description: 'This is a Product description for Nike Air Jordon. There are more things that can be added but i am just practicing and nothing else.',

      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),

      images: [YbImages.productImage20, YbImages.productImage23, YbImages.productImage21, YbImages.productImage22],

      // salePrice: 200,

      sku: 'ABR4568',

      categoryId: '8',

      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '011',
      title: 'Nike Air Max Red & Black',
      stock: 15,
      price: 20000,
      isFeatured: true,
      thumbnail: YbImages.productImage21,
      description: 'This is a Product description for Nike Air Max. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage21, YbImages.productImage20, YbImages.productImage19, YbImages.productImage22],
      salePrice: 14000,
      sku: 'ABR4568',
      categoryId: '6',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '012',
      title: 'Nike Basketball shoes Black & Green',
      stock: 15,
      price: 6000,
      isFeatured: false,
      thumbnail: YbImages.productImage22,
      description: 'This is a Product description for Nike Basketball shoes. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage22, YbImages.productImage20, YbImages.productImage21, YbImages.productImage23],
      salePrice: 4000,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '013',
      title: 'Nike wild horse shoes',
      stock: 15,
      price: 6000,
      isFeatured: false,
      thumbnail: YbImages.productImage23,
      description: 'This is a Product description for Nike wild horse shoes. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage23, YbImages.productImage20, YbImages.productImage21, YbImages.productImage22],
      salePrice: 4000,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),

    //Track suits

    ProductModel(
      id: '014',
      title: 'Nike Track suit red',
      stock: 15,
      price: 5000,
      isFeatured: true,
      thumbnail: YbImages.productImage26,
      description: 'This is a Product description for Nike Track suit red. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage26, YbImages.productImage24, YbImages.productImage25, YbImages.productImage27],

      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '9',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '015',
      title: 'Nike Track suit Black',
      stock: 15,
      price: 2000,
      thumbnail: YbImages.productImage24,
      description: 'This is a Product description for Nike Track suit Black. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage24, YbImages.productImage26, YbImages.productImage25, YbImages.productImage27],

      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '9',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '016',
      title: 'Nike Track suit Blue',
      stock: 15,
      price: 1000,
      thumbnail: YbImages.productImage25,
      description: 'This is a Product description for Nike Track suit Blue. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage25, YbImages.productImage24, YbImages.productImage26, YbImages.productImage27],

      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '9',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '017',
      title: 'Nike Track suit Parrot Green',
      stock: 15,
      price: 3500,
      thumbnail: YbImages.productImage27,
      description: 'This is a Product description for Nike Track suit Parrot Green. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: YbImages.nikeLogo, name: 'Nike'),
      images: [YbImages.productImage27, YbImages.productImage24, YbImages.productImage25, YbImages.productImage26],

      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '9',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    //Sports Equipments

    ProductModel(
      id: '018',
      title: 'Adidas Football',
      stock: 15,
      price: 4000,
      isFeatured: true,
      thumbnail: YbImages.productImage28,
      description: 'This is a Product description for Football. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: YbImages.adidasLogo, name: 'Adidas'),
      images: [YbImages.productImage28, YbImages.productImage29, YbImages.productImage30, YbImages.productImage31],

      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '10',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '019',
      title: 'Baseball Bat',
      stock: 15,
      price: 3000,
      thumbnail: YbImages.productImage29,
      description: 'This is a Product description for Baseball Bat. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: YbImages.adidasLogo, name: 'Adidas'),
      images: [YbImages.productImage29, YbImages.productImage28, YbImages.productImage30, YbImages.productImage31],

      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '10',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '020',
      title: 'Cricket Bat',
      stock: 15,
      price: 2500,
      thumbnail: YbImages.productImage30,
      description: 'This is a Product description for Cricket Bat. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: YbImages.adidasLogo, name: 'Adidas'),
      images: [YbImages.productImage30, YbImages.productImage29, YbImages.productImage28, YbImages.productImage31],

      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '10',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),

    ProductModel(
      id: '021',
      title: 'Tennis Racket',
      stock: 15,
      price: 5400,
      thumbnail: YbImages.productImage31,
      description: 'This is a Product description for Tennis Racket. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: YbImages.adidasLogo, name: 'Adidas'),
      images: [YbImages.productImage31, YbImages.productImage29, YbImages.productImage30, YbImages.productImage28],

      // salePrice: 400,1

      sku: 'ABR4568',
      categoryId: '10',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],

      productType: 'ProductType.single',
    ),
  ];

  /// -- Sorting Filters for search

  static final sortingFilters = [
    SortFilterModel(id: '1', name: 'Name'),
    SortFilterModel(id: '2', name: 'Lowest Price'),
    SortFilterModel(id: '3', name: 'Most Popular'),
    SortFilterModel(id: '4', name: 'Highest Price'),
    SortFilterModel(id: '5', name: 'Newest'),
    SortFilterModel(id: '6', name: 'Most Suitable'),
  ];

  /// -- Product Reviews

  static final List<ProductReviewModel> productReviews = [
    ProductReviewModel(
      id: '01',
      userId: '001',
      userName: 'Ram Tamang',
      rating: 4.5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: YbImages.userProfileImage2,
      comment: 'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
      companyComment:
          'Thank you for your kind words, John! We are delighted to hear about your smooth experience with the app. We always strive to offer an intuitive interface for our users. Stay tuned for more updates!',
    ),
    ProductReviewModel(
      id: '02',
      userId: '002',
      userName: 'Sita Shrestha',
      rating: 3.5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: YbImages.userProfileImage1,
      comment: 'I am genuinely impressed with the app design and the variety of products available. The filter and sort features have made shopping so much easier for me!',
      companyComment:
          'Thank you so much, Sophia! We are thrilled to hear you are enjoying the app and finding the features useful. Our goal is to make your shopping experience as efficient and pleasant as possible. Keep exploring, and happy shopping!',
    ),
    ProductReviewModel(
      id: '03',
      userId: '003',
      userName: 'Shyam Thapa',
      rating: 5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: YbImages.userProfileImage3,
      comment: 'The app is pretty fast, and the product recommendations are on point! I would love to see more features in the future.',
      companyComment:
          'Thanks for the feedback, Alex! We are thrilled to hear you enjoyed the speed and recommendations. We are constantly working on introducing new features, so keep an eye out for the next update!',
    ),
  ];
}

class SortFilterModel {
  String id;

  String name;

  SortFilterModel({required this.id, required this.name});
}
