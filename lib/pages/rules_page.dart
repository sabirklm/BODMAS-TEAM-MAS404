import 'package:flutter/material.dart';
import 'package:mas_404/widgets/widgets.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(
            width * 0.01,
            width * 0.001,
            width * 0.01,
            width * 0.01,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Game Rules",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "You will be given a result of an equation. The equation is hidden and you have to guess the equation in 3 steps",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Example",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "For example you are given a result. Now you have to start guessing the eqation from step1 to step3. Lets the result is 12",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Step1 ",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Row(
                children: const [
                  DisplayedChar(
                    char: "6",
                    fillColor: Colors.orange,
                  ),
                  DisplayedChar(
                    char: "x",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "2",
                    fillColor: Colors.grey,
                  ),
                  DisplayedChar(
                    char: "+",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "0",
                    fillColor: Colors.grey,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "According to the color indication x and multiply is in correct position as they are green but 6 is part of the equation but not in the correct position so it is indicated as orange color but those are not the part of the equation as 2 here colored as grey.",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "In the next steps you will get the same indication and you have to guss the eqation correctly",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Step2 ",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Row(
                children: const [
                  DisplayedChar(
                    char: "2",
                    fillColor: Colors.grey,
                  ),
                  DisplayedChar(
                    char: "x",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "3",
                    fillColor: Colors.grey,
                  ),
                  DisplayedChar(
                    char: "+",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "6",
                    fillColor: Colors.orange,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Step3 ",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Row(
                children: const [
                  DisplayedChar(
                    char: "1",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "x",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "6",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "+",
                    fillColor: Colors.green,
                  ),
                  DisplayedChar(
                    char: "1",
                    fillColor: Colors.green,
                  ),
                ],
              ),
              Text(
                "You won the game",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
