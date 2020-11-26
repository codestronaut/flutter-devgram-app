part of 'widgets.dart';

/*
 * Card Component (For Main Screen)
 * Type: Component
 */
class PostCard extends StatelessWidget {
  final String username;
  final String userImage;
  final String postImage;
  final String postTitle;
  final String postDesc;
  const PostCard(
      {Key key,
      this.username,
      this.userImage,
      this.postImage,
      this.postTitle,
      this.postDesc});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(userImage),
                        height: 24.0,
                        width: 24.0,
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        username,
                        style: secondaryText,
                      )
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Image.asset(postImage),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(),
                SaveButton(),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postTitle,
                  style: primaryHeadingText,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  postDesc,
                  style: primaryText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
