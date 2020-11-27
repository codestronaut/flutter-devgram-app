part of 'components.dart';

class FollowButton extends StatefulWidget {
  FollowButton({Key key}) : super(key: key);

  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: isFollowed ? Colors.grey : Colors.amber,
        onPressed: () {
          setState(() {
            isFollowed = !isFollowed;
          });
        },
        child: Text(
          isFollowed ? 'Unfollow' : 'Follow',
          style: secondaryText.copyWith(
              color: isFollowed ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
