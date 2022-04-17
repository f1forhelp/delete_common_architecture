import 'package:basic_structure/app_init.dart';
import 'package:basic_structure/core/%20utils/helper/ui_helper.dart';
import 'package:basic_structure/presentation/pages/temp/cubit/screen1_cubit.dart';
import 'package:basic_structure/presentation/pages/temp/screen2.dart';
import 'package:basic_structure/presentation/widgets/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen1 extends StatefulWidget {
  static const String id = "Screen1";
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<Screen1Cubit>(
      onStateReady: (p0) {
        p0.incrementy(5);
      },
      child: BlocConsumer<Screen1Cubit, Screen1State>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                UiHelper.h4(),
                Text("Screen 1"),
                Text("Count ${state.count}"),
                UiHelper.h4(),
                CustomTextButton(
                  bgColor: Colors.pink,
                  label: "Increment",
                  ontap: () {
                    context.read<Screen1Cubit>().incrementy(1);
                  },
                ),
                UiHelper.h4(),
                CustomTextButton(
                  bgColor: Colors.pink,
                  label: "Next Screen",
                  ontap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2(),
                        ));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BaseView<T extends StateStreamableSource<Object?>>
    extends StatefulWidget {
  final Function(T)? onStateReady;
  final Widget? child;
  BaseView({this.onStateReady, this.child});
  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends StateStreamableSource<Object?>>
    extends State<BaseView<T>> {
  T state = AppInit.getIt<T>();
  @override
  void initState() {
    if (widget.onStateReady != null) {
      widget.onStateReady!(state);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<T>.value(
      value: state,
      child: widget.child,
    );
  }
}






// lass Screen1 extends StatefulWidget {
//   static const String id = "Screen1";
//   const Screen1({Key? key}) : super(key: key);

//   @override
//   State<Screen1> createState() => _Screen1State();
// }

// class _Screen1State extends State<Screen1> {
//   @override
//   void initState() {
//     var model = AppInit.getIt<Screen1Cubit>()..incrementy();

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<Screen1Cubit>.value(
//       value: AppInit.getIt<Screen1Cubit>(),
//       child: BlocConsumer<Screen1Cubit, Screen1State>(
//         listener: (context, state) {
//           // TODO: implement listener
//         },
//         builder: (context, state) {
//           return Scaffold(
//             body: Column(
//               children: [
//                 UiHelper.h4(),
//                 Text("Screen 1"),
//                 Text("Count ${state.count}"),
//                 UiHelper.h4(),
//                 CustomTextButton(
//                   bgColor: Colors.pink,
//                   label: "Increment",
//                   ontap: () {
//                     context.read<Screen1Cubit>().incrementy();
//                   },
//                 ),
//                 UiHelper.h4(),
//                 CustomTextButton(
//                   bgColor: Colors.pink,
//                   label: "Next Screen",
//                   ontap: () {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => Screen2(),
//                         ));
//                   },
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }