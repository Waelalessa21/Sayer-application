import 'package:get/get.dart';
import 'package:sayeer/screens/login/login.dart';

class OTPController {
  void resendOTP() {
    //في حال تم اعادة ارسال الرمز
  }

  void verifyButton() {
    // هنا ننقل اليوزر للاب بعد التحقق من الرمز
  }

  void backButton() {
    Get.off(() => LoginScreen());
  }
}
