
class PostModel {
  final String fullName;
  final String views;
  final String description;
  final int totalComments;
  final String? image;
  final List<String> images;

  PostModel(
      {required this.fullName,
      required this.views,
      required this.description,
      required this.totalComments,
      this.image,
      this.images = const []});
}