
// import 'package:equatable/equatable.dart';

// import '../../Domain/entities/product.dart';

// abstract class ProductEvent  extends Equatable{
//   const ProductEvent ();

//   @override
//   List<Object ?> get props => [];
// }

// class LoadAllProductEvent extends ProductEvent {
//   const LoadAllProductEvent ();

//   @override
//   List<Object ?> get props => [];
// }

// class GetSingleProductEvent extends ProductEvent {
//   final int id;
//   const GetSingleProductEvent(id, {
//     id=
//   });
//   @override
//   List<Object ?> get props => [id];
// }


// class DeleteProductEvent extends ProductEvent {
//   final int id;
//   const DeleteProductEvent(id, {
//     required this.id
//   });
//   @override
//   List<Object ?> get props => [id];
// }


// class CreateProductEvent extends ProductEvent {
//   final Product ecommerceEntity;
//   const CreateProductEvent(testProduct, {
//     required this.ecommerceEntity
//   });
//   @override
//   List<Object ?> get props => [ecommerceEntity];

//   // Product get newProduct => null;
// }


// class UpdateProductEvent extends ProductEvent {
//   final Product ecommerceEntity;
//   final int id;
//   const UpdateProductEvent(testProduct, id, {
//     required this.ecommerceEntity,
//     required this.id
//   });
//   @override
//   List<Object ?> get props => [ecommerceEntity,id];
// }
import 'package:equatable/equatable.dart';

import '../../Domain/entities/product.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object?> get props => [];
}

class LoadAllProductEvent extends ProductEvent {
  const LoadAllProductEvent();

  @override
  List<Object?> get props => [];
}

class GetSingleProductEvent extends ProductEvent {
  final int id;

  const GetSingleProductEvent(String productid, {required this.id});

  @override
  List<Object?> get props => [id];
}

class DeleteProductEvent extends ProductEvent {
  final int id;

  const DeleteProductEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

class CreateProductEvent extends ProductEvent {
  final Product ecommerceEntity;

  const CreateProductEvent({required this.ecommerceEntity});

  @override
  List<Object?> get props => [ecommerceEntity];
}

class UpdateProductEvent extends ProductEvent {
  final Product ecommerceEntity;
  final int id;

  const UpdateProductEvent({required this.ecommerceEntity, required this.id});

  @override
  List<Object?> get props => [ecommerceEntity, id];
}
