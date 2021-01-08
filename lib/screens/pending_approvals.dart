//
//
// // import 'package:cupertino_stepper/cupertino_stepper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:timelines/timelines.dart';
//
//
//   class PendingApprovalScreen extends StatefulWidget {
//     PendingApprovalScreen({Key key, this.title}) : super(key: key);
//
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
//   }
//
//   class _MyHomePageState extends State<PendingApprovalScreen> {
//     final List<_MyHomePageState> processes;
//
//   _MyHomePageState(this.processes);
//
//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//   appBar: AppBar(
//   title: Text("timeline"),
//   ),
//   body:
//   Container(
//     height: 500,
//     child: Padding(
//     padding: const EdgeInsets.all(20.0),
//       child: FixedTimeline.tileBuilder(
//       theme: TimelineThemeData(
//       nodePosition: 0,
//       color: Color(0xff989898),
//       indicatorTheme: IndicatorThemeData(
//       position: 0,
//       size: 20.0,
//       ),
//       connectorTheme: ConnectorThemeData(
//       thickness: 2.5,
//       ),
//       ),
//       builder: TimelineTileBuilder.connected(
//       connectionDirection: ConnectionDirection.before,
//       itemCount: processes.length,
//       contentsBuilder: (_, index) {
//       // if (processes[index].isCompleted) return null;
//
//       return Padding(
//       padding: EdgeInsets.only(left: 8.0),
//       child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//       Text(
//       "hi"
//       ),
//
//       ],
//       ),
//       );
//       },
//       indicatorBuilder: (_, index) {
//       if (processes[index].isCompleted) {
//       return DotIndicator(
//       color: Color(0xff66c97f),
//       child: Icon(
//       Icons.check,
//       color: Colors.white,
//       size: 12.0,
//       ),
//       );
//       } else {
//       return OutlinedDotIndicator(
//       borderWidth: 2.5,
//       );
//       }
//       },
//       connectorBuilder: (_, index, ___) => SolidLineConnector(
//       color: processes[index].isCompleted ? Color(0xff66c97f) : null,
//       ),
//       ),
//       ),
//       ),
//   ),
//
//   TimelineTile(
//     oppositeContents: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text('opposite\ncontents'),
//     ),
//     contents: Card(
//       child: Container(
//         padding: EdgeInsets.all(8.0),
//         child: Text('contents'),
//       ),
//     ),
//     node: TimelineNode(
//       indicator: OutlinedDotIndicator(),
//       startConnector: SolidLineConnector(),
//       endConnector: SolidLineConnector(),
//     ),
//   )
//   );
//   }
//   }
// // class StepperPage extends StatefulWidget {
// //   @override
// //   _StepperPageState createState() => _StepperPageState();
// // }
// //
// // class _StepperPageState extends State<StepperPage> {
// //   int currentStep = 0;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return CupertinoPageScaffold(
// //       navigationBar: CupertinoNavigationBar(
// //         middle: Text('CupertinoStepper for Flutter'),
// //       ),
// //       child: SafeArea(
// //         child: OrientationBuilder(
// //           builder: (BuildContext context, Orientation orientation) {
// //             switch (orientation) {
// //               case Orientation.portrait:
// //                 return _buildStepper(StepperType.vertical);
// //               case Orientation.landscape:
// //                 return _buildStepper(StepperType.horizontal);
// //               default:
// //                 throw UnimplementedError(orientation.toString());
// //             }
// //           },
// //         ),
// //       ),
// //     );
// //   }
// //
// //   CupertinoStepper _buildStepper(StepperType type) {
// //     final canCancel = currentStep > 0;
// //     final canContinue = currentStep < 3;
// //     return CupertinoStepper(
// //       type: type,
// //       currentStep: currentStep,
// //       onStepTapped: (step) => setState(() => currentStep = step),
// //       onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
// //       onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
// //       steps: [
// //         for (var i = 0; i < 3; ++i)
// //           _buildStep(
// //             title: Text('Step ${i + 1}'),
// //             isActive: i == currentStep,
// //             state: i == currentStep
// //                 ? StepState.editing
// //                 : i < currentStep ? StepState.complete : StepState.indexed,
// //           ),
// //         _buildStep(
// //           title: Text('Error'),
// //           state: StepState.error,
// //         ),
// //         _buildStep(
// //           title: Text('Disabled'),
// //           state: StepState.disabled,
// //         )
// //       ],
// //     );
// //   }
// //
// //   Step _buildStep({
// //     @required Widget title,
// //     StepState state = StepState.indexed,
// //     bool isActive = false,
// //   }) {
// //     return Step(
// //       title: title,
// //       subtitle: Text('Subtitle'),
// //       state: state,
// //       isActive: isActive,
// //       content: LimitedBox(
// //         maxWidth: 300,
// //         maxHeight: 300,
// //         child: Text("hi"),
// //       ),
// //     );
// //   }
// // }