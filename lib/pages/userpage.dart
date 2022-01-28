import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_api_demo/store/ustore.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  Ustore store = Ustore();

  @override
  void initState() {
    // TODO: implement initState
    store.fetchUsers();
    super.initState();
  }

  @override
  build(BuildContext context) {
    return Observer(
      builder: (context) {
        return store.isLoading == true
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: store.userList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(store.userList[index].avatar),
                      radius: 25,
                    ),
                    title: Text(store.userList[index].name,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      store.userList[index].email,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    trailing: Text(
                      store.userList[index].followers.toString(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  );
                },
              );
      },
    );
  }

  Future _refresh() => store.fetchUsers();
}
