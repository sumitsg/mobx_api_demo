import 'package:mobx/mobx.dart';
import 'package:mobx_api_demo/model/post_model.dart';
import 'package:mobx_api_demo/service/api_network_service.dart';

part 'post_store.g.dart';

class PostStore = _PostStore with _$PostStore;

abstract class _PostStore with Store {
  final NetworkService httpClient = NetworkService();

  @observable
  List<PostModel> postListFuture = [];
  @observable
  bool isLoading = false;

  @action
  Future fetchPost() async {
    showLoading();

    final result =
        await httpClient.getPost('https://jsonplaceholder.typicode.com/posts');

    hideLoading();
    if (result != null) {
      postListFuture = result;

      return postListFuture;
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

  void getThePost() => fetchPost();
}
