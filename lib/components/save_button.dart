part of 'components.dart';

class SaveButton extends StatefulWidget {
  SaveButton({Key key}) : super(key: key);

  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(isSaved ? Icons.bookmark : Icons.bookmark_border),
        color: Colors.black,
        onPressed: () {
          setState(() {
            isSaved = !isSaved;
          });
        },
      ),
    );
  }
}
