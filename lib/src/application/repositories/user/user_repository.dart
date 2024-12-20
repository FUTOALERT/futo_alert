// Project imports:
import 'package:futo_alert/src/core/utils/enums.dart';

abstract interface class UserRepository {
  // User getUser();
  // Future<void> updateUser(User user);
  String getToken();
  String getRefreshToken();
  void saveToken(String token);
  void saveRefreshToken(String token);
  void saveCurrentState(CurrentState val);
  CurrentState getCurrentState();
  bool? getRememberMe();
  void saveRememberMe(bool val);

  // Future<BaseResponse<User>> getUserProfile();

  // Future<BaseResponse<User>> updateUserProfile(
  //     {required UpdateUserModel data, required String userId});

  String getFCMToken();
  void saveFCMTokenLocally(String val);
  bool getBalanceVisibility();
  void setBalanceVisibility();
}
