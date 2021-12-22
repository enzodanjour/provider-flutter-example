import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter_example/change_notifier/provider_controller.dart';
import 'package:tuple/tuple.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback(
      (timeStamp) async {
        await Future.delayed(
          const Duration(
            seconds: 1,
          ),
        );
        context.read<ProviderController>().alterarDados();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change notifier page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //rebuild only this
              Selector<ProviderController,String>(
                selector: (__,controller)=> controller.imgAvatar,
                builder: (_, imgAvatar, __) {
                  return CircleAvatar(
                    backgroundImage: NetworkImage(
                      imgAvatar,
                    ),
                    radius: 60,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Selector<ProviderController,String>(
                  //   selector: (__,controller)=>controller.name,
                  //   builder: (_, name, __) {
                  //     return Text(
                  //       name,
                  //     );
                  //   },
                  // ),
                  Selector<ProviderController,Tuple2<String,String>>(
                    //decide when rebuild
                    // shouldRebuild: (previus,next){},
                    selector: (__,controller)=> Tuple2(controller.birthDate,controller.name),
                    builder: (_, controller, __) {
                      return Text(
                        '${controller.item2}(${controller.item1})',
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ProviderController>().alterarNome();
                },
                child: const Text(
                  'Alterar nome',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
