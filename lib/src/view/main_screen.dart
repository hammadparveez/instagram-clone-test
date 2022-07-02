import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagra_clone/src/mock/mock_posts.dart';
import 'package:instagra_clone/src/model/post_model.dart';
import 'package:instagra_clone/src/utils/assets.dart';
import 'package:instagra_clone/src/utils/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          titleSpacing: 8,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text('Instagram',
              style: kAppBarTitleStyle.copyWith(fontSize: 24)),
          actions: [
            _buildActionIcon(Assets.paperPlaneIcon),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 0),
                itemCount: 20,
                separatorBuilder: (_, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  var child = Container(
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.black12),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                          image: NetworkImage(NetworkAssets.carAvatar),
                        ),
                      ),
                    ),
                  );
                  if (index == 0) {
                    return Row(
                      children: [
                        Container(
                          height: 76,
                          width: 76,
                          margin: const EdgeInsets.all(4),
                          alignment: Alignment.bottomRight,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    NetworkAssets.flutterBirdAvatar),
                              )),
                          child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              )),
                        ),
                        child,
                      ],
                    );
                  }
                  return child;
                },
              ),
            ),
            const Divider(thickness: .2),
            ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 8),
                physics: const ClampingScrollPhysics(),
                itemCount: mockPosts.length,
                separatorBuilder: (_, index) => const SizedBox(height: 25),
                itemBuilder: ((context, index) {
                  final post = mockPosts[index];
                  return SizedBox(
                    height: 450,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      NetworkAssets.flutterBirdAvatar)),
                              const SizedBox(width: 10),
                              Text(
                                post.fullName,
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  iconSize: 20,
                                  icon: Icon(Icons.more_vert)),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: _buildPostImage(post),
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  _buildPostIcon(Assets.heartIcon),
                                  _buildPostIcon(Assets.commentIcon),
                                  _buildPostIcon(Assets.paperPlaneIcon),
                                  const Spacer(),
                                  _buildPostIcon(Assets.bookmarkIcon),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '19,319 views',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      'FlutterDev ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Learn about Flutter, This is an awesome framework ',
                                        maxLines: 1,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 12,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('View all 18 comments',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('Hammad Parveez',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding:
                                              EdgeInsets.only(top: 16),
                                          prefixIconConstraints: BoxConstraints(
                                              maxHeight: 38, maxWidth: 38),
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 8, 0),
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  NetworkAssets
                                                      .flutterBirdAvatar),
                                            ),
                                          ),
                                          border: InputBorder.none,
                                          hintText: 'Add a comment...',
                                          hintStyle: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '2 days ago',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }

  _buildPostImage(PostModel post) {
    if (post.images.isNotEmpty) {
      return PageView.builder(
          itemCount: post.images.length,
          itemBuilder: (_, index) {
            var image = post.images[index];
            return Stack(
              children: [
                Image.network(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 4,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black.withOpacity(.4)),
                      child: Text('${index + 1}/${post.images.length}',
                          style: TextStyle(color: Colors.white)),
                    ))
              ],
            );
          });
    }
    return Image.network(
      NetworkAssets.hulkAvatar,
      fit: BoxFit.cover,
    );
  }

  GestureDetector _buildPostIcon(String iconPath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 4, 4),
        child: SvgPicture.asset(
          iconPath,
          fit: BoxFit.cover,
          height: 24,
          width: 24,
        ),
      ),
    );
  }

  Widget _buildActionIcon(String path) {
    return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          path,
          height: 30,
          width: 30,
        ));
  }
}
