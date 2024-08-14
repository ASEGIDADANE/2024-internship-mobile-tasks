import 'package:flutter_bloc/flutter_bloc.dart';

import './product_event.dart';
import './product_state.dart';


class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(mockAllProductUsecase, mockShowProductById, mockUpdateProductUsecase, mockDeleteProductbyidUsecase, mockAddProducctUsecase) : super(IntialState()) {

    on<GetSingleProductEvent>((event, emit) {});

    on<LoadAllProductEvent>((event, emit) {});

    on<UpdateProductEvent>((event, emit) {});

    on<DeleteProductEvent>((event, emit) {});
    
    on<CreateProductEvent>((event, emit) {});


  }
}



 