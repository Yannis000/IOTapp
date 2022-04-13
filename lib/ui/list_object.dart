import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.black12, Colors.black26]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                        ),
                      child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    object.name ?? "Objet $position",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Date de dernière utilisation : ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                                child: Text(
                                  DateFormat.yMd().add_Hms().format(DateTime.now()).toString(),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                    ),
                  ),
                );
              },
          );
  }
}
