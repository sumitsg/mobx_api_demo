// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_api_demo/store/post_store.dart';

class PostList extends StatefulWidget {
  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  PostStore postStore = PostStore();

  @override
  void initState() {
    // TODO: implement initState
    postStore.fetchPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return postStore.isLoading == true
            ? const Center(child: CircularProgressIndicator())
            : RefreshIndicator(
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: postStore.postListFuture.length,
                  itemBuilder: (context, index) {
                    final postData = postStore.postListFuture[index];

                    return ExpansionTile(
                      title: Text(
                        postData.title,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      children: [
                        Text(postData.body),
                      ],
                    );
                  },
                ),
                onRefresh: _refresh,
              );
      },
    );
  }

  Future _refresh() => postStore.fetchPost();
}
