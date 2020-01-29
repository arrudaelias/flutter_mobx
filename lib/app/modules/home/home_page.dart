import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/home/components/user_card_component.dart';
import 'package:flutter_app/app/modules/home/home_controller.dart';
import 'package:flutter_app/app/modules/home/shared/models/user_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('MobX Counter'),
        actions: <Widget>[
          Observer(
            builder: (_) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text('${controller.value}',
                      style: Theme.of(context).textTheme.title)),
            ),
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (_, index) {
              UserModel model = controller.list[index];
              return Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: UserCard(item: model),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Adicionar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
