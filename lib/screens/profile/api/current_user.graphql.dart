import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$CurrentUser {
  Query$CurrentUser({
    required this.currentUser,
    this.$__typename = 'Query',
  });

  factory Query$CurrentUser.fromJson(Map<String, dynamic> json) {
    final l$currentUser = json['currentUser'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUser(
      currentUser: Query$CurrentUser$currentUser.fromJson(
          (l$currentUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CurrentUser$currentUser currentUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentUser = currentUser;
    _resultData['currentUser'] = l$currentUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentUser = currentUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CurrentUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentUser = currentUser;
    final lOther$currentUser = other.currentUser;
    if (l$currentUser != lOther$currentUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CurrentUser on Query$CurrentUser {
  CopyWith$Query$CurrentUser<Query$CurrentUser> get copyWith =>
      CopyWith$Query$CurrentUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CurrentUser<TRes> {
  factory CopyWith$Query$CurrentUser(
    Query$CurrentUser instance,
    TRes Function(Query$CurrentUser) then,
  ) = _CopyWithImpl$Query$CurrentUser;

  factory CopyWith$Query$CurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentUser;

  TRes call({
    Query$CurrentUser$currentUser? currentUser,
    String? $__typename,
  });
  CopyWith$Query$CurrentUser$currentUser<TRes> get currentUser;
}

class _CopyWithImpl$Query$CurrentUser<TRes>
    implements CopyWith$Query$CurrentUser<TRes> {
  _CopyWithImpl$Query$CurrentUser(
    this._instance,
    this._then,
  );

  final Query$CurrentUser _instance;

  final TRes Function(Query$CurrentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CurrentUser(
        currentUser: currentUser == _undefined || currentUser == null
            ? _instance.currentUser
            : (currentUser as Query$CurrentUser$currentUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$CurrentUser$currentUser<TRes> get currentUser {
    final local$currentUser = _instance.currentUser;
    return CopyWith$Query$CurrentUser$currentUser(
        local$currentUser, (e) => call(currentUser: e));
  }
}

class _CopyWithStubImpl$Query$CurrentUser<TRes>
    implements CopyWith$Query$CurrentUser<TRes> {
  _CopyWithStubImpl$Query$CurrentUser(this._res);

  TRes _res;

  call({
    Query$CurrentUser$currentUser? currentUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$CurrentUser$currentUser<TRes> get currentUser =>
      CopyWith$Query$CurrentUser$currentUser.stub(_res);
}

const documentNodeQueryCurrentUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CurrentUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'currentUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'originalHeight'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'originalWidth'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$CurrentUser _parserFn$Query$CurrentUser(Map<String, dynamic> data) =>
    Query$CurrentUser.fromJson(data);
typedef OnQueryComplete$Query$CurrentUser = FutureOr<void> Function(
  dynamic,
  Query$CurrentUser?,
);

class Options$Query$CurrentUser
    extends graphql.QueryOptions<Query$CurrentUser> {
  Options$Query$CurrentUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CurrentUser? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    _parserFn$Query$CurrentUser(data),
                  ),
          onError: onError,
          document: documentNodeQueryCurrentUser,
          parserFn: _parserFn$Query$CurrentUser,
        );

  final OnQueryComplete$Query$CurrentUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CurrentUser
    extends graphql.WatchQueryOptions<Query$CurrentUser> {
  WatchOptions$Query$CurrentUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryCurrentUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CurrentUser,
        );
}

class FetchMoreOptions$Query$CurrentUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CurrentUser({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryCurrentUser,
        );
}

extension ClientExtension$Query$CurrentUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CurrentUser>> query$CurrentUser(
          [Options$Query$CurrentUser? options]) async =>
      await this.query(options ?? Options$Query$CurrentUser());
  graphql.ObservableQuery<Query$CurrentUser> watchQuery$CurrentUser(
          [WatchOptions$Query$CurrentUser? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CurrentUser());
  void writeQuery$CurrentUser({
    required Query$CurrentUser data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCurrentUser)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CurrentUser? readQuery$CurrentUser({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCurrentUser)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CurrentUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CurrentUser> useQuery$CurrentUser(
        [Options$Query$CurrentUser? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$CurrentUser());
graphql.ObservableQuery<Query$CurrentUser> useWatchQuery$CurrentUser(
        [WatchOptions$Query$CurrentUser? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$CurrentUser());

class Query$CurrentUser$Widget
    extends graphql_flutter.Query<Query$CurrentUser> {
  Query$CurrentUser$Widget({
    widgets.Key? key,
    Options$Query$CurrentUser? options,
    required graphql_flutter.QueryBuilder<Query$CurrentUser> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$CurrentUser(),
          builder: builder,
        );
}

class Query$CurrentUser$currentUser {
  Query$CurrentUser$currentUser({
    required this.id,
    required this.username,
    required this.email,
    required this.avatar,
    this.$__typename = 'UserObject',
  });

  factory Query$CurrentUser$currentUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUser$currentUser(
      id: (l$id as String),
      username: (l$username as String),
      email: (l$email as String),
      avatar: Query$CurrentUser$currentUser$avatar.fromJson(
          (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String username;

  final String email;

  final Query$CurrentUser$currentUser$avatar avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$email = email;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$email,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CurrentUser$currentUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CurrentUser$currentUser
    on Query$CurrentUser$currentUser {
  CopyWith$Query$CurrentUser$currentUser<Query$CurrentUser$currentUser>
      get copyWith => CopyWith$Query$CurrentUser$currentUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CurrentUser$currentUser<TRes> {
  factory CopyWith$Query$CurrentUser$currentUser(
    Query$CurrentUser$currentUser instance,
    TRes Function(Query$CurrentUser$currentUser) then,
  ) = _CopyWithImpl$Query$CurrentUser$currentUser;

  factory CopyWith$Query$CurrentUser$currentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentUser$currentUser;

  TRes call({
    String? id,
    String? username,
    String? email,
    Query$CurrentUser$currentUser$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$CurrentUser$currentUser$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$CurrentUser$currentUser<TRes>
    implements CopyWith$Query$CurrentUser$currentUser<TRes> {
  _CopyWithImpl$Query$CurrentUser$currentUser(
    this._instance,
    this._then,
  );

  final Query$CurrentUser$currentUser _instance;

  final TRes Function(Query$CurrentUser$currentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CurrentUser$currentUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as Query$CurrentUser$currentUser$avatar),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$CurrentUser$currentUser$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return CopyWith$Query$CurrentUser$currentUser$avatar(
        local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$CurrentUser$currentUser<TRes>
    implements CopyWith$Query$CurrentUser$currentUser<TRes> {
  _CopyWithStubImpl$Query$CurrentUser$currentUser(this._res);

  TRes _res;

  call({
    String? id,
    String? username,
    String? email,
    Query$CurrentUser$currentUser$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$CurrentUser$currentUser$avatar<TRes> get avatar =>
      CopyWith$Query$CurrentUser$currentUser$avatar.stub(_res);
}

class Query$CurrentUser$currentUser$avatar {
  Query$CurrentUser$currentUser$avatar({
    required this.originalHeight,
    required this.originalWidth,
    required this.url,
    this.$__typename = 'IllustrationObject',
  });

  factory Query$CurrentUser$currentUser$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$originalHeight = json['originalHeight'];
    final l$originalWidth = json['originalWidth'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$CurrentUser$currentUser$avatar(
      originalHeight: (l$originalHeight as int),
      originalWidth: (l$originalWidth as int),
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int originalHeight;

  final int originalWidth;

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$originalHeight = originalHeight;
    _resultData['originalHeight'] = l$originalHeight;
    final l$originalWidth = originalWidth;
    _resultData['originalWidth'] = l$originalWidth;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$originalHeight = originalHeight;
    final l$originalWidth = originalWidth;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$originalHeight,
      l$originalWidth,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CurrentUser$currentUser$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$originalHeight = originalHeight;
    final lOther$originalHeight = other.originalHeight;
    if (l$originalHeight != lOther$originalHeight) {
      return false;
    }
    final l$originalWidth = originalWidth;
    final lOther$originalWidth = other.originalWidth;
    if (l$originalWidth != lOther$originalWidth) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CurrentUser$currentUser$avatar
    on Query$CurrentUser$currentUser$avatar {
  CopyWith$Query$CurrentUser$currentUser$avatar<
          Query$CurrentUser$currentUser$avatar>
      get copyWith => CopyWith$Query$CurrentUser$currentUser$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CurrentUser$currentUser$avatar<TRes> {
  factory CopyWith$Query$CurrentUser$currentUser$avatar(
    Query$CurrentUser$currentUser$avatar instance,
    TRes Function(Query$CurrentUser$currentUser$avatar) then,
  ) = _CopyWithImpl$Query$CurrentUser$currentUser$avatar;

  factory CopyWith$Query$CurrentUser$currentUser$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentUser$currentUser$avatar;

  TRes call({
    int? originalHeight,
    int? originalWidth,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CurrentUser$currentUser$avatar<TRes>
    implements CopyWith$Query$CurrentUser$currentUser$avatar<TRes> {
  _CopyWithImpl$Query$CurrentUser$currentUser$avatar(
    this._instance,
    this._then,
  );

  final Query$CurrentUser$currentUser$avatar _instance;

  final TRes Function(Query$CurrentUser$currentUser$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? originalHeight = _undefined,
    Object? originalWidth = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CurrentUser$currentUser$avatar(
        originalHeight: originalHeight == _undefined || originalHeight == null
            ? _instance.originalHeight
            : (originalHeight as int),
        originalWidth: originalWidth == _undefined || originalWidth == null
            ? _instance.originalWidth
            : (originalWidth as int),
        url: url == _undefined || url == null ? _instance.url : (url as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CurrentUser$currentUser$avatar<TRes>
    implements CopyWith$Query$CurrentUser$currentUser$avatar<TRes> {
  _CopyWithStubImpl$Query$CurrentUser$currentUser$avatar(this._res);

  TRes _res;

  call({
    int? originalHeight,
    int? originalWidth,
    String? url,
    String? $__typename,
  }) =>
      _res;
}
