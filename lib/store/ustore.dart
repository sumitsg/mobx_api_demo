import 'package:mobx/mobx.dart';
import 'package:mobx_api_demo/model/user_data_model.dart';
import 'package:mobx_api_demo/service/api_network_service.dart';

part 'ustore.g.dart';

class Ustore = _Ustore with _$Ustore;

abstract class _Ustore with Store {
  final NetworkService apiService = NetworkService();

  @observable
  List<Datum> userList = [];

  @observable
  bool isLoading = false;

  @action
  Future fetchUsers() async {
    showLoading();

    final result =
        await apiService.getDatum('https://reqres.in/api/users?page=1');

    hideLoading();

    if (result != null) {
      userList = result;

      return userList;
    } else {
      print('No Data Received');
    }
  }

  showLoading() {
    isLoading = true;
    return;
  }

  hideLoading() {
    isLoading = false;
    return;
  }

  void getTheUser() {
    fetchUsers();
  }
}
