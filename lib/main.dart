// ignore_for_file: library_private_types_in_public_api

import 'package:easy_stepper/easy_stepper.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EasyStepper',style: TextStyle(fontSize: 15,)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EasyStepper(
                activeStep: activeStep,
                lineLength: 70,
                stepShape: StepShape.rRectangle,
                stepBorderRadius: 15,
                borderThickness: 2,
                padding: 20,
                stepRadius: 28,
                activeStepTextColor: Colors.black,
                lineColor: Colors.green,
                activeStepBorderColor: Colors.green,
                finishedStepBorderColor: Colors.green,
                finishedStepTextColor: Colors.green,
                finishedStepBackgroundColor: Colors.green,
                activeStepIconColor: Colors.green,
                loadingAnimation: 'assets/lotties/loading_circle.json',
                
                steps: const [
                  EasyStep(
                    icon: Icon(Icons.add_task_rounded),
                    title: 'Order Placed',
                  ),
                  EasyStep(
                    icon: Icon(Icons.category_rounded),
                    title: 'Preparing',
                  ),
                  EasyStep(
                    icon: Icon(Icons.local_shipping_rounded),
                    title: 'Shipping',
                  ),
                  EasyStep(
                    icon: Icon(Icons.door_back_door_outlined),
                    title: 'On The Way',
                  ),
                  EasyStep(
                    icon: Icon(Icons.check_circle_outline_outlined),
                    title: 'Delivered',
                  ),
                  EasyStep(
                    icon: Icon(Icons.reviews_outlined),
                    activeIcon: Icon(Icons.reviews_rounded),
                    title: 'Add Review',
                  ),
                ],
                onStepReached: (index) => setState(() => activeStep = index),
              ),
            ],
          ),
        ),
      )
    );
  }
}
