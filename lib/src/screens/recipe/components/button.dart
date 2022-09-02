import 'package:flutter/material.dart';

class RecipeButton extends StatelessWidget {
  const RecipeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {},
                child: const ColoredBox(
                  color: Colors.white24,
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Icon(Icons.favorite_border),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.teal.shade800,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Start Cooking'),
                    Icon(Icons.keyboard_arrow_right_rounded)
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
