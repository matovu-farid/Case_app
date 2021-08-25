import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget{
  final MapEntry<String,String> nameRoute;

  const ChoiceButton({Key? key, required this.nameRoute}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
                              padding: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  left: 0,
                                  right: 0),
                              child: MaterialButton(
                                //choiceBox[index][choiceBox[index].keys.first]

                                onPressed: () {
                                  
                                  Navigator.of(context).pushNamed(
                                      nameRoute.value);
                                },
                                splashColor: Colors.amber,
                                hoverColor: Colors.red[200],
                                //highlightColor: ,

                                child: Container(
                                  color: Colors.green,
                                  child: Center(
                                      child: Padding(
                                    padding:
                                        const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${nameRoute.key}',
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18),
                                    ),
                                  )),
                                ),
                              ),
                            );
  }
}