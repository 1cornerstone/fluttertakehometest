

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_models/product_screen_view_model.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductsScreenViewModel>.reactive(
        viewModelBuilder: ()=>ProductsScreenViewModel(),
        builder: (builder,viewModel,_)=>Scaffold(
          body: ListView(

          ),

    ));
  }
}
