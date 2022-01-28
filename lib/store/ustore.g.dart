// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ustore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Ustore on _Ustore, Store {
  final _$userListAtom = Atom(name: '_Ustore.userList');

  @override
  List<Datum> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(List<Datum> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_Ustore.isLoading');

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

  final _$fetchUsersAsyncAction = AsyncAction('_Ustore.fetchUsers');

  @override
  Future<dynamic> fetchUsers() {
    return _$fetchUsersAsyncAction.run(() => super.fetchUsers());
  }

  @override
  String toString() {
    return '''
userList: ${userList},
isLoading: ${isLoading}
    ''';
  }
}
