import 'package:appdid_task/auth/view/login_screen.dart';
import 'package:appdid_task/categories/categories_provider.dart';
import 'package:appdid_task/categories/search_meal_screen.dart';
import 'package:appdid_task/meals/meals_by_category_screen.dart';
import 'package:appdid_task/recipe/random_recipe_meal_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CategoriesListScreen extends ConsumerWidget {
  const CategoriesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return RandomMealScreen();
                },
              ));
            },
            child: Text("Random Meal"),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return SearchMealScreen();
                },
              ));
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () async {
              try {
                await FirebaseAuth.instance.signOut();

                await GoogleSignIn().signOut();

                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Logged out successfully')),
                  );

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                    (route) => false,
                  );
                }

                // Navigate back to login screen
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Logout failed: $e')),
                  );
                }
              }
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: categories.when(
        data: (data) {
          return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final category = data[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoriesCard(
                    imgUrl: category.strCategoryThumb,
                    title: category.strCategory),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () {
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  const CategoriesCard({super.key, required this.imgUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return MealsByCategoryScreen(categoryName: title);
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Img
            Image.network(
              imgUrl,
            ),
            // Title
            Text(title),
          ],
        ),
      ),
    );
  }
}
