import 'package:exerlog/UI/calendar/view/calendar_page.dart';
import 'package:exerlog/UI/workout/workout_page.dart';
import 'package:exerlog/src/core/base/base_state.dart';
import 'package:exerlog/src/core/base/extensions/context_extension.dart';
import 'package:exerlog/src/feature/authentication/controller/authentication_controller.dart';
import 'package:exerlog/src/widgets/simple_screen/simple_screen.dart';
import 'package:exerlog/src/widgets/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingScreen extends ConsumerStatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingScreenState();
}

class _LandingScreenState extends ConsumerState<LandingScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _controller = ref.read(AuthenticationController.controller);

    ref.listen(AuthenticationController.provider, (_, state) {
      if (state is SignUpSuccessState) {
        _navigateToWorkoutScreen();
      } else if (state is LoginSuccessState) {
        _navigateToCalendarScreen();
      } else if (state is ErrorState) {
        context.showSnackBar("Something went wrong");
      }
    });

    return ThemeProvider(
      builder: (context, theme) {
        return SimpleScreen(
          child: const SizedBox(),
        );
      },
    );
  }

  void _navigateToCalendarScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => CalendarPage(),
      ),
    );
  }

  Future<dynamic> _navigateToWorkoutScreen() {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => WorkoutPage(null),
      ),
    );
  }
}
