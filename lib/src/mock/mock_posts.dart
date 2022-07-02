import 'package:instagra_clone/src/model/post_model.dart';
import 'package:instagra_clone/src/utils/assets.dart';

final stories = [
  NetworkAssets.batManAvatar,
  NetworkAssets.ironManAvatar,
  NetworkAssets.flutterBirdAvatar,
  NetworkAssets.carAvatar,
];
final mockPosts = [
  PostModel(
      fullName: 'Hammad Parveez',
      views: '19,532',
      description: 'I am a Flutter Lover',
      totalComments: 20,
      image: NetworkAssets.ironManAvatar),
  PostModel(
      fullName: 'Mason Brian',
      views: '205',
      description: 'Hammad is my coding teacher',
      totalComments: 50,
      images: [NetworkAssets.superManAvatar, NetworkAssets.ironManAvatar]),
  PostModel(
      fullName: 'Jose Lara',
      views: '50,153',
      description: 'Hammad is my good friend',
      totalComments: 12,
      images: [NetworkAssets.batManAvatar, NetworkAssets.flutterBirdAvatar]),
  PostModel(
      fullName: 'Alex Murphy',
      views: '105',
      description: 'I love Flutter more than my girlfriend',
      totalComments: 20,
      image: NetworkAssets.carAvatar),
];
