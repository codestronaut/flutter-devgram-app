part of 'components.dart';

class LikeButton extends StatefulWidget {
  LikeButton({Key key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border),
            color: isLiked ? Colors.redAccent : Colors.black,
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
          ),
          Text(
            '24.4k',
            style: secondaryText,
          ),
        ],
      ),
    );
  }
}
