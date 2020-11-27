part of 'pages.dart';

/*
 * Home Screen (Main Screen)
 */
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 'F5F5F7'.toColor(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Devgram',
          style: GoogleFonts.pacifico(color: Colors.black),
        ),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfilePage();
              }));
            },
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
      body: ListView(
        children: recentPost.map((post) {
          return PostCard(
            username: post.username,
            userImage: post.userProfile,
            postImage: post.postImage,
            postTitle: post.postTitle,
            postDesc: post.postDesc,
          );
        }).toList(),
      ),
    );
  }
}

var recentPost = [
  Post(
    username: 'Aditya',
    userProfile: 'assets/user.png',
    postImage: 'assets/1.jpg',
    postTitle: 'Craft With Me',
    postDesc:
        'Craft With Me is a edu tech website. You can learn, discuss, and contribute with showcasing your personal project and get the amazing feedback',
  ),
  Post(
    username: 'Aditya',
    userProfile: 'assets/user.png',
    postImage: 'assets/2.jpg',
    postTitle: 'ToDo App',
    postDesc:
        'I design this simple ToDo App for personal use. You can add todo daily and can easily edit the todo with your own preference',
  ),
  Post(
    username: 'Aditya',
    userProfile: 'assets/user.png',
    postImage: 'assets/3.jpg',
    postTitle: 'TokoSaya',
    postDesc:
        'I make the e-commerce design for selling any kind of stuff. You can post your goods and get the customer. This design is clean and beautiful',
  ),
];
