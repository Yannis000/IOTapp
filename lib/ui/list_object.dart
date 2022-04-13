import 'package:flutter/material.dart';
import 'package:iot/model/model.dart';

class ObjectList extends StatelessWidget {
  final List<Model> objects;

  const ObjectList(this.objects, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, position) {
              Model object = objects[position];
                return InkWell(
                  onTap: () {
                    //Navigator.of(context).pushNamed(LaunchDetail.route,
                      //  arguments: LaunchDetailArguments(launch: launch));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),
                    child:
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                object.id.toString(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                  ),
                );
              },
            itemCount: objects.length,
          );
  }
}
