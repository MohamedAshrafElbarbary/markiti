import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiti_app/features/home/manager/products_cubit/product_cubit.dart';
import 'package:markiti_app/features/home/view/best_for_you_view.dart';
import 'package:markiti_app/features/home/view/brands_view.dart';
import 'package:markiti_app/features/home/view/buy_again_view.dart';
import 'package:markiti_app/features/home/view/categories_view.dart';
import 'package:markiti_app/features/home/view/popular_porducts_view.dart';
import 'package:markiti_app/features/home/view/widgets/best_for_you_list_view.dart';
import 'package:markiti_app/features/home/view/widgets/brands_list_view.dart';
import 'package:markiti_app/features/home/view/widgets/buy_again_list_view.dart';
import 'package:markiti_app/features/home/view/widgets/category_grid_view.dart';
import 'package:markiti_app/features/home/view/widgets/home_app_bar_and_search_bar.dart';
import 'package:markiti_app/features/home/view/widgets/home_title_text.dart';
import 'package:markiti_app/features/home/view/widgets/popular_products_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getAllProduct();
    context.read<ProductCubit>().getBrand();
    context.read<ProductCubit>().getCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            const SizedBox(height: 48),
            HomeAppBarAndSearchBar(),
            HomeTitleText(
              onTap: () {
                Navigator.pushNamed(context, PopularPorductsView.routeName);
              },
              text: 'Popular Product',
            ),
            const SizedBox(height: 8),
            // products
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                if (state is ProductsSuccess) {
                  return PopularProductsListView(
                    productModel: state.productModel,
                  );
                } else if (state is ProductsLoading) {
                  return CircularProgressIndicator();
                } else {
                  return Text('some thing went wrong');
                }
              },
            ),
            HomeTitleText(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  CategoriesView.routeName,
                  arguments: BlocProvider.of<ProductCubit>(
                    context,
                  ).categoryList,
                );
              },
              text: 'Category',
            ),
            const SizedBox(height: 8),
            // category
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                if (state is CategorySuccess) {
                  return CategoryGridView(categoryModel: state.categoryModel);
                } else if (state is CategoryLoading) {
                  return CircularProgressIndicator();
                } else {
                  return Text('some thing went wrong');
                }
              },
            ),
            HomeTitleText(
              onTap: () {
                Navigator.pushNamed(context, BestForYouView.routeName);
              },
              text: 'Best for You',
            ),
            BestForYouListView(),
            const SizedBox(height: 8),
            //
            HomeTitleText(
              onTap: () {
                Navigator.pushNamed(context, BrandsView.routeName);
              },
              text: 'Brands',
            ),
            // brands
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                if (state is BrandsSuccess) {
                  return BrandsListView(brandModel: state.brandModel);
                } else if (state is BrandsLoading) {
                  return CircularProgressIndicator();
                } else {
                  return Text('some thing went wrong');
                }
              },
            ),

            //
            HomeTitleText(
              onTap: () {
                Navigator.pushNamed(context, BuyAgainView.routeName);
              },
              text: 'Buy Again',
            ),
            BuyAgainListView(),
          ],
        ),
      ),
    );
  }
}
