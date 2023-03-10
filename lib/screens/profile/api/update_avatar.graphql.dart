import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:manga_love_mobile/graphql_scalars.dart';

class Variables$Mutation$UpdateAvatar {
  factory Variables$Mutation$UpdateAvatar({required MultipartFile avatar}) =>
      Variables$Mutation$UpdateAvatar._({
        r'avatar': avatar,
      });

  Variables$Mutation$UpdateAvatar._(this._$data);

  factory Variables$Mutation$UpdateAvatar.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$avatar = data['avatar'];
    result$data['avatar'] = fileFromJson(l$avatar);
    return Variables$Mutation$UpdateAvatar._(result$data);
  }

  Map<String, dynamic> _$data;

  MultipartFile get avatar => (_$data['avatar'] as MultipartFile);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$avatar = avatar;
    result$data['avatar'] = fileToJson(l$avatar);
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAvatar<Variables$Mutation$UpdateAvatar>
      get copyWith => CopyWith$Variables$Mutation$UpdateAvatar(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateAvatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    return Object.hashAll([l$avatar]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAvatar<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAvatar(
    Variables$Mutation$UpdateAvatar instance,
    TRes Function(Variables$Mutation$UpdateAvatar) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAvatar;

  factory CopyWith$Variables$Mutation$UpdateAvatar.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAvatar;

  TRes call({MultipartFile? avatar});
}

class _CopyWithImpl$Variables$Mutation$UpdateAvatar<TRes>
    implements CopyWith$Variables$Mutation$UpdateAvatar<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAvatar(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAvatar _instance;

  final TRes Function(Variables$Mutation$UpdateAvatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? avatar = _undefined}) =>
      _then(Variables$Mutation$UpdateAvatar._({
        ..._instance._$data,
        if (avatar != _undefined && avatar != null)
          'avatar': (avatar as MultipartFile),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAvatar<TRes>
    implements CopyWith$Variables$Mutation$UpdateAvatar<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAvatar(this._res);

  TRes _res;

  call({MultipartFile? avatar}) => _res;
}

class Mutation$UpdateAvatar {
  Mutation$UpdateAvatar({
    required this.currentUserUpdate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAvatar.fromJson(Map<String, dynamic> json) {
    final l$currentUserUpdate = json['currentUserUpdate'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAvatar(
      currentUserUpdate: Mutation$UpdateAvatar$currentUserUpdate.fromJson(
          (l$currentUserUpdate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAvatar$currentUserUpdate currentUserUpdate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentUserUpdate = currentUserUpdate;
    _resultData['currentUserUpdate'] = l$currentUserUpdate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentUserUpdate = currentUserUpdate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentUserUpdate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAvatar) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentUserUpdate = currentUserUpdate;
    final lOther$currentUserUpdate = other.currentUserUpdate;
    if (l$currentUserUpdate != lOther$currentUserUpdate) {
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

extension UtilityExtension$Mutation$UpdateAvatar on Mutation$UpdateAvatar {
  CopyWith$Mutation$UpdateAvatar<Mutation$UpdateAvatar> get copyWith =>
      CopyWith$Mutation$UpdateAvatar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAvatar<TRes> {
  factory CopyWith$Mutation$UpdateAvatar(
    Mutation$UpdateAvatar instance,
    TRes Function(Mutation$UpdateAvatar) then,
  ) = _CopyWithImpl$Mutation$UpdateAvatar;

  factory CopyWith$Mutation$UpdateAvatar.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAvatar;

  TRes call({
    Mutation$UpdateAvatar$currentUserUpdate? currentUserUpdate,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate<TRes> get currentUserUpdate;
}

class _CopyWithImpl$Mutation$UpdateAvatar<TRes>
    implements CopyWith$Mutation$UpdateAvatar<TRes> {
  _CopyWithImpl$Mutation$UpdateAvatar(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAvatar _instance;

  final TRes Function(Mutation$UpdateAvatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentUserUpdate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAvatar(
        currentUserUpdate: currentUserUpdate == _undefined ||
                currentUserUpdate == null
            ? _instance.currentUserUpdate
            : (currentUserUpdate as Mutation$UpdateAvatar$currentUserUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate<TRes> get currentUserUpdate {
    final local$currentUserUpdate = _instance.currentUserUpdate;
    return CopyWith$Mutation$UpdateAvatar$currentUserUpdate(
        local$currentUserUpdate, (e) => call(currentUserUpdate: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateAvatar<TRes>
    implements CopyWith$Mutation$UpdateAvatar<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAvatar(this._res);

  TRes _res;

  call({
    Mutation$UpdateAvatar$currentUserUpdate? currentUserUpdate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate<TRes>
      get currentUserUpdate =>
          CopyWith$Mutation$UpdateAvatar$currentUserUpdate.stub(_res);
}

const documentNodeMutationUpdateAvatar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateAvatar'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'avatar')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'currentUserUpdate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'avatar'),
                value: VariableNode(name: NameNode(value: 'avatar')),
              )
            ]),
          )
        ],
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
            name: NameNode(value: 'avatar'),
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
                name: NameNode(value: 'url'),
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
                name: NameNode(value: 'originalHeight'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'status'),
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
Mutation$UpdateAvatar _parserFn$Mutation$UpdateAvatar(
        Map<String, dynamic> data) =>
    Mutation$UpdateAvatar.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateAvatar = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateAvatar?,
);

class Options$Mutation$UpdateAvatar
    extends graphql.MutationOptions<Mutation$UpdateAvatar> {
  Options$Mutation$UpdateAvatar({
    String? operationName,
    required Variables$Mutation$UpdateAvatar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAvatar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAvatar? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAvatar>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateAvatar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAvatar,
          parserFn: _parserFn$Mutation$UpdateAvatar,
        );

  final OnMutationCompleted$Mutation$UpdateAvatar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateAvatar
    extends graphql.WatchQueryOptions<Mutation$UpdateAvatar> {
  WatchOptions$Mutation$UpdateAvatar({
    String? operationName,
    required Variables$Mutation$UpdateAvatar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAvatar? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateAvatar,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateAvatar,
        );
}

extension ClientExtension$Mutation$UpdateAvatar on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateAvatar>> mutate$UpdateAvatar(
          Options$Mutation$UpdateAvatar options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateAvatar> watchMutation$UpdateAvatar(
          WatchOptions$Mutation$UpdateAvatar options) =>
      this.watchMutation(options);
}

class Mutation$UpdateAvatar$HookResult {
  Mutation$UpdateAvatar$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateAvatar runMutation;

  final graphql.QueryResult<Mutation$UpdateAvatar> result;
}

Mutation$UpdateAvatar$HookResult useMutation$UpdateAvatar(
    [WidgetOptions$Mutation$UpdateAvatar? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateAvatar());
  return Mutation$UpdateAvatar$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateAvatar> useWatchMutation$UpdateAvatar(
        WatchOptions$Mutation$UpdateAvatar options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateAvatar
    extends graphql.MutationOptions<Mutation$UpdateAvatar> {
  WidgetOptions$Mutation$UpdateAvatar({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAvatar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAvatar? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAvatar>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateAvatar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAvatar,
          parserFn: _parserFn$Mutation$UpdateAvatar,
        );

  final OnMutationCompleted$Mutation$UpdateAvatar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateAvatar
    = graphql.MultiSourceResult<Mutation$UpdateAvatar> Function(
  Variables$Mutation$UpdateAvatar, {
  Object? optimisticResult,
  Mutation$UpdateAvatar? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateAvatar = widgets.Widget Function(
  RunMutation$Mutation$UpdateAvatar,
  graphql.QueryResult<Mutation$UpdateAvatar>?,
);

class Mutation$UpdateAvatar$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateAvatar> {
  Mutation$UpdateAvatar$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateAvatar? options,
    required Builder$Mutation$UpdateAvatar builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateAvatar(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateAvatar$currentUserUpdate {
  Mutation$UpdateAvatar$currentUserUpdate({
    required this.id,
    required this.avatar,
    this.$__typename = 'UserObject',
  });

  factory Mutation$UpdateAvatar$currentUserUpdate.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAvatar$currentUserUpdate(
      id: (l$id as String),
      avatar: Mutation$UpdateAvatar$currentUserUpdate$avatar.fromJson(
          (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Mutation$UpdateAvatar$currentUserUpdate$avatar avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAvatar$currentUserUpdate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateAvatar$currentUserUpdate
    on Mutation$UpdateAvatar$currentUserUpdate {
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate<
          Mutation$UpdateAvatar$currentUserUpdate>
      get copyWith => CopyWith$Mutation$UpdateAvatar$currentUserUpdate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAvatar$currentUserUpdate<TRes> {
  factory CopyWith$Mutation$UpdateAvatar$currentUserUpdate(
    Mutation$UpdateAvatar$currentUserUpdate instance,
    TRes Function(Mutation$UpdateAvatar$currentUserUpdate) then,
  ) = _CopyWithImpl$Mutation$UpdateAvatar$currentUserUpdate;

  factory CopyWith$Mutation$UpdateAvatar$currentUserUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAvatar$currentUserUpdate;

  TRes call({
    String? id,
    Mutation$UpdateAvatar$currentUserUpdate$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes> get avatar;
}

class _CopyWithImpl$Mutation$UpdateAvatar$currentUserUpdate<TRes>
    implements CopyWith$Mutation$UpdateAvatar$currentUserUpdate<TRes> {
  _CopyWithImpl$Mutation$UpdateAvatar$currentUserUpdate(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAvatar$currentUserUpdate _instance;

  final TRes Function(Mutation$UpdateAvatar$currentUserUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAvatar$currentUserUpdate(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as Mutation$UpdateAvatar$currentUserUpdate$avatar),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar(
        local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateAvatar$currentUserUpdate<TRes>
    implements CopyWith$Mutation$UpdateAvatar$currentUserUpdate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAvatar$currentUserUpdate(this._res);

  TRes _res;

  call({
    String? id,
    Mutation$UpdateAvatar$currentUserUpdate$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes> get avatar =>
      CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar.stub(_res);
}

class Mutation$UpdateAvatar$currentUserUpdate$avatar {
  Mutation$UpdateAvatar$currentUserUpdate$avatar({
    required this.id,
    required this.url,
    required this.originalWidth,
    required this.originalHeight,
    required this.status,
    this.$__typename = 'IllustrationObject',
  });

  factory Mutation$UpdateAvatar$currentUserUpdate$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$url = json['url'];
    final l$originalWidth = json['originalWidth'];
    final l$originalHeight = json['originalHeight'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAvatar$currentUserUpdate$avatar(
      id: (l$id as String),
      url: (l$url as String),
      originalWidth: (l$originalWidth as int),
      originalHeight: (l$originalHeight as int),
      status: (l$status as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String url;

  final int originalWidth;

  final int originalHeight;

  final String status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$originalWidth = originalWidth;
    _resultData['originalWidth'] = l$originalWidth;
    final l$originalHeight = originalHeight;
    _resultData['originalHeight'] = l$originalHeight;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$url = url;
    final l$originalWidth = originalWidth;
    final l$originalHeight = originalHeight;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$url,
      l$originalWidth,
      l$originalHeight,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAvatar$currentUserUpdate$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$originalWidth = originalWidth;
    final lOther$originalWidth = other.originalWidth;
    if (l$originalWidth != lOther$originalWidth) {
      return false;
    }
    final l$originalHeight = originalHeight;
    final lOther$originalHeight = other.originalHeight;
    if (l$originalHeight != lOther$originalHeight) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Mutation$UpdateAvatar$currentUserUpdate$avatar
    on Mutation$UpdateAvatar$currentUserUpdate$avatar {
  CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar<
          Mutation$UpdateAvatar$currentUserUpdate$avatar>
      get copyWith => CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes> {
  factory CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar(
    Mutation$UpdateAvatar$currentUserUpdate$avatar instance,
    TRes Function(Mutation$UpdateAvatar$currentUserUpdate$avatar) then,
  ) = _CopyWithImpl$Mutation$UpdateAvatar$currentUserUpdate$avatar;

  factory CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAvatar$currentUserUpdate$avatar;

  TRes call({
    String? id,
    String? url,
    int? originalWidth,
    int? originalHeight,
    String? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes>
    implements CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes> {
  _CopyWithImpl$Mutation$UpdateAvatar$currentUserUpdate$avatar(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAvatar$currentUserUpdate$avatar _instance;

  final TRes Function(Mutation$UpdateAvatar$currentUserUpdate$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? url = _undefined,
    Object? originalWidth = _undefined,
    Object? originalHeight = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAvatar$currentUserUpdate$avatar(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        url: url == _undefined || url == null ? _instance.url : (url as String),
        originalWidth: originalWidth == _undefined || originalWidth == null
            ? _instance.originalWidth
            : (originalWidth as int),
        originalHeight: originalHeight == _undefined || originalHeight == null
            ? _instance.originalHeight
            : (originalHeight as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes>
    implements CopyWith$Mutation$UpdateAvatar$currentUserUpdate$avatar<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAvatar$currentUserUpdate$avatar(this._res);

  TRes _res;

  call({
    String? id,
    String? url,
    int? originalWidth,
    int? originalHeight,
    String? status,
    String? $__typename,
  }) =>
      _res;
}
