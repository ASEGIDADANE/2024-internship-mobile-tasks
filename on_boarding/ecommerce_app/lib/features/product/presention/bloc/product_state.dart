


import 'package:equatable/equatable.dart';

import '../../Domain/entities/product.dart';



abstract class ProductState extends Equatable{
  const ProductState();

  @override
  List<Object ?> get props => [];
}

class IntialState extends ProductState {}

class LoadedSingleProductState extends ProductState {
  final Product product;

  const LoadedSingleProductState (data, {
    required this.product
  });

  @override
  List<Object ?> get props => [product];
}

class LoadedAllProductState extends ProductState {
  final List<Product> products;

  const LoadedAllProductState ({
    required this.products, required List allProducts
  });

  @override

  List<Object ?> get props => [products]; 
}

class SuccessDelete extends ProductState {
  final bool deleted;

  const SuccessDelete ({
    required this.deleted
  });

  @override

  List<Object?> get props => [deleted];
}


class SuccessAdd extends ProductState {
  final bool add;

  const SuccessAdd ({
    required this.add
  });

  @override

  List<Object?> get props => [add];
}

class SuccessEdit extends ProductState {
  final bool edited;

  const SuccessEdit ({
    required this.edited
  });

  @override

  List<Object?> get props => [edited];
}


class ErrorState extends ProductState {
  final String messages;

  const ErrorState (message, {
    required this.messages
  });

  @override
  List<Object ?> get props => [messages];
}


class LoadingState extends ProductState {}
