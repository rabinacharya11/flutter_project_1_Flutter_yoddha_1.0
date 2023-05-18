import 'package:flutter/material.dart';
import 'package:project_1/core/widgets/primary_button.dart';
import 'package:project_1/features/startup_home/widgets/startup_top_rated_card.dart';

class LandingScren extends StatelessWidget {
  const LandingScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text(
            'Top Rated',
            style: TextStyle(fontSize: 40),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                models.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: StartUpTopRated(
                      imageUrl: models[index].imageUrl,
                      rating: models[index].rating),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

List<TopRatedModel> models = [
  TopRatedModel(
      imageUrl:
          'https://img.freepik.com/premium-vector/profile-african-american-man-vector-illustration-flat-style_194708-2315.jpg',
      rating: 3.5),
  TopRatedModel(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbtVB3-FvTcVVsPKbxgpSrO7nKSTURcfMgkHcD8LXse2dZ9RsqAQ4LTpx2GeeqKbEGrqw&usqp=CAU',
      rating: 4.5),
  TopRatedModel(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaV9eG4_UVWxVMaJRpZR-LUtRei6nX-tEn5jY_j02qjB1LEBBpLy5-5t3R5954vFJi8Rk&usqp=CAU',
      rating: 4.5),
  TopRatedModel(
      imageUrl:
          'https://img.freepik.com/premium-vector/profile-african-american-man-vector-illustration-flat-style_194708-2315.jpg',
      rating: 4.5),
  TopRatedModel(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbtVB3-FvTcVVsPKbxgpSrO7nKSTURcfMgkHcD8LXse2dZ9RsqAQ4LTpx2GeeqKbEGrqw&usqp=CAU',
      rating: 4.5),
  TopRatedModel(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaV9eG4_UVWxVMaJRpZR-LUtRei6nX-tEn5jY_j02qjB1LEBBpLy5-5t3R5954vFJi8Rk&usqp=CAU',
      rating: 4.5),
  TopRatedModel(
      imageUrl:
          'https://img.freepik.com/premium-vector/profile-african-american-man-vector-illustration-flat-style_194708-2315.jpg',
      rating: 4.5),
  TopRatedModel(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbtVB3-FvTcVVsPKbxgpSrO7nKSTURcfMgkHcD8LXse2dZ9RsqAQ4LTpx2GeeqKbEGrqw&usqp=CAU',
      rating: 4.5),
  TopRatedModel(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaV9eG4_UVWxVMaJRpZR-LUtRei6nX-tEn5jY_j02qjB1LEBBpLy5-5t3R5954vFJi8Rk&usqp=CAU',
      rating: 4.5),
];

class TopRatedModel {
  final String imageUrl;
  final double rating;

  TopRatedModel({
    required this.imageUrl,
    required this.rating,
  });
}
