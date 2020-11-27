part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 'F5F5F7'.toColor(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          user.username,
          style: primaryText.copyWith(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Image(
              image: AssetImage(
                'assets/user.png',
              ),
              height: 32.0,
              width: 32.0,
            ),
          ),
        ],
      ),
      body: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset('assets/user.png'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              user.username,
                              style: primaryHeadingText,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Image(
                              image: AssetImage('assets/correct.png'),
                              height: 16.0,
                              width: 16.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 12.0,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Column(
                                  children: [
                                    Text('Posts'),
                                    Text(
                                      '${user.userPost}',
                                      style: secondaryText,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 12.0,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Column(
                                  children: [
                                    Text('Posts'),
                                    Text(
                                      '${user.userFollowers}k',
                                      style: secondaryText,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 12.0,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Column(
                                  children: [
                                    Text('Posts'),
                                    Text(
                                      '${user.userFollowing}',
                                      style: secondaryText,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        FollowButton(),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          user.userbio,
                          style: primaryText,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Posts',
              style: secondaryText,
            ),
          ),
          Container(
            color: Colors.white,
            height: 500.0,
            child: Posts(),
          ),
        ],
      ),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: user.posts.map((postItem) {
        return Container(
          child: Image(
            image: AssetImage(postItem),
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}

var user = User(
  username: 'Aditya Rohman',
  userbio: 'Flutter Enthuisast. Hello There! Thank you for visiting my profile',
  userPost: 3,
  posts: [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ],
  userFollowers: 240,
  userFollowing: 100,
);
