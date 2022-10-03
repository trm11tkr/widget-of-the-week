import 'package:flutter/material.dart';
import 'package:widget_of_the_week/gen/assets.gen.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class BackDropFilterPage extends StatelessWidget {
  const BackDropFilterPage({super.key});

  static const routeName = 'BackDropFilter';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'BackDropFilter',
      child: Center(
        child: Container(
          height: 600,
          width: 600,
          color: Colors.lightBlueAccent,
          child: Center(
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.hippo.path),
                  fit: BoxFit.cover,
                ),
              ),
              child: ClipRect(
                child: Center(
                  child: BackdropFilter(
                    filter: const ColorFilter.mode(
                      Colors.black54,
                      BlendMode.darken,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        _SearchField(),
                        _SearchButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.limeAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          'Search',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.limeAccent),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              height: 25,
              width: 25,
              child: Icon(Icons.search),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 30,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
