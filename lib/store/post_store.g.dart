// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostStore on _PostStore, Store {
  final _$postListFutureAtom = Atom(name: '_PostStore.postListFuture');

  @override
  List<PostModel> get postListFuture {
    _$postListFutureAtom.reportRead();
    return super.postListFuture;
  }

  @override
  set postListFuture(List<PostModel> value) {
    _$postListFutureAtom.reportWrite(value, super.postListFuture, () {
      super.postListFuture = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_PostStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchPostAsyncAction = AsyncAction('_PostStore.fetchPost');

  @override
  Future<dynamic> fetchPost() {
    return _$fetchPostAsyncAction.run(() => super.fetchPost());
  }

  @override
  String toString() {
    return '''
postListFuture: ${postListFuture},
isLoading: ${isLoading}
    ''';
  }
}
