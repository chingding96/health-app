import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:pratyush_s_healthapp/core/app_export.dart';
import 'package:pratyush_s_healthapp/widgets/custom_elevated_button.dart';
import 'package:pratyush_s_healthapp/widgets/custom_outlined_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.cyan300,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 17, top: 46, right: 17, bottom: 46),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgHidoclogo,
                            height: getVerticalSize(368),
                            width: getHorizontalSize(338)),
                        CustomOutlinedButton(
                            text: "lbl_login".tr,
                            margin: getMargin(left: 3, top: 87, right: 3),
                            onTap: () {
                              onTapLogin(context);
                            }),
                        CustomElevatedButton(
                            text: "lbl_sign_up".tr,
                            margin: getMargin(left: 3, top: 15, right: 3),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle: CustomTextStyles.titleSmallTeal300,
                            onTap: () {
                              onTapSignup(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginScreen.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signupScreen.
  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
