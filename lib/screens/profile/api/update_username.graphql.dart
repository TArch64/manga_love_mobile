import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateUsername {
  factory Variables$Mutation$UpdateUsername({required String username}) =>
      Variables$Mutation$UpdateUsername._({
        r'username': username,
      });

  Variables$Mutation$UpdateUsername._(this._$data);

  factory Variables$Mutation$UpdateUsername.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Variables$Mutation$UpdateUsername._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUsername<Variables$Mutation$UpdateUsername>
      get copyWith => CopyWith$Variables$Mutation$UpdateUsername(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUsername) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    return Object.hashAll([l$username]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUsername<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUsername(
    Variables$Mutation$UpdateUsername instance,
    TRes Function(Variables$Mutation$UpdateUsername) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUsername;

  factory CopyWith$Variables$Mutation$UpdateUsername.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUsername;

  TRes call({String? username});
}

class _CopyWithImpl$Variables$Mutation$UpdateUsername<TRes>
    implements CopyWith$Variables$Mutation$UpdateUsername<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUsername(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUsername _instance;

  final TRes Function(Variables$Mutation$UpdateUsername) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? username = _undefined}) =>
      _then(Variables$Mutation$UpdateUsername._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUsername<TRes>
    implements CopyWith$Variables$Mutation$UpdateUsername<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUsername(this._res);

  TRes _res;

  call({String? username}) => _res;
}

class Mutation$UpdateUsername {
  Mutation$UpdateUsername({
    required this.currentUserUpdate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUsername.fromJson(Map<String, dynamic> json) {
    final l$currentUserUpdate = json['currentUserUpdate'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUsername(
      currentUserUpdate: Mutation$UpdateUsername$currentUserUpdate.fromJson(
          (l$currentUserUpdate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateUsername$currentUserUpdate currentUserUpdate;

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
    if (!(other is Mutation$UpdateUsername) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateUsername on Mutation$UpdateUsername {
  CopyWith$Mutation$UpdateUsername<Mutation$UpdateUsername> get copyWith =>
      CopyWith$Mutation$UpdateUsername(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUsername<TRes> {
  factory CopyWith$Mutation$UpdateUsername(
    Mutation$UpdateUsername instance,
    TRes Function(Mutation$UpdateUsername) then,
  ) = _CopyWithImpl$Mutation$UpdateUsername;

  factory CopyWith$Mutation$UpdateUsername.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUsername;

  TRes call({
    Mutation$UpdateUsername$currentUserUpdate? currentUserUpdate,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateUsername$currentUserUpdate<TRes>
      get currentUserUpdate;
}

class _CopyWithImpl$Mutation$UpdateUsername<TRes>
    implements CopyWith$Mutation$UpdateUsername<TRes> {
  _CopyWithImpl$Mutation$UpdateUsername(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUsername _instance;

  final TRes Function(Mutation$UpdateUsername) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentUserUpdate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUsername(
        currentUserUpdate: currentUserUpdate == _undefined ||
                currentUserUpdate == null
            ? _instance.currentUserUpdate
            : (currentUserUpdate as Mutation$UpdateUsername$currentUserUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateUsername$currentUserUpdate<TRes>
      get currentUserUpdate {
    final local$currentUserUpdate = _instance.currentUserUpdate;
    return CopyWith$Mutation$UpdateUsername$currentUserUpdate(
        local$currentUserUpdate, (e) => call(currentUserUpdate: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUsername<TRes>
    implements CopyWith$Mutation$UpdateUsername<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUsername(this._res);

  TRes _res;

  call({
    Mutation$UpdateUsername$currentUserUpdate? currentUserUpdate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateUsername$currentUserUpdate<TRes>
      get currentUserUpdate =>
          CopyWith$Mutation$UpdateUsername$currentUserUpdate.stub(_res);
}

const documentNodeMutationUpdateUsername = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUsername'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
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
            name: NameNode(value: 'username'),
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
]);
Mutation$UpdateUsername _parserFn$Mutation$UpdateUsername(
        Map<String, dynamic> data) =>
    Mutation$UpdateUsername.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUsername = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateUsername?,
);

class Options$Mutation$UpdateUsername
    extends graphql.MutationOptions<Mutation$UpdateUsername> {
  Options$Mutation$UpdateUsername({
    String? operationName,
    required Variables$Mutation$UpdateUsername variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUsername? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUsername? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUsername>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateUsername(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUsername,
          parserFn: _parserFn$Mutation$UpdateUsername,
        );

  final OnMutationCompleted$Mutation$UpdateUsername? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateUsername
    extends graphql.WatchQueryOptions<Mutation$UpdateUsername> {
  WatchOptions$Mutation$UpdateUsername({
    String? operationName,
    required Variables$Mutation$UpdateUsername variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUsername? typedOptimisticResult,
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
          document: documentNodeMutationUpdateUsername,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateUsername,
        );
}

extension ClientExtension$Mutation$UpdateUsername on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUsername>> mutate$UpdateUsername(
          Options$Mutation$UpdateUsername options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateUsername> watchMutation$UpdateUsername(
          WatchOptions$Mutation$UpdateUsername options) =>
      this.watchMutation(options);
}

class Mutation$UpdateUsername$HookResult {
  Mutation$UpdateUsername$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateUsername runMutation;

  final graphql.QueryResult<Mutation$UpdateUsername> result;
}

Mutation$UpdateUsername$HookResult useMutation$UpdateUsername(
    [WidgetOptions$Mutation$UpdateUsername? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUsername());
  return Mutation$UpdateUsername$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUsername>
    useWatchMutation$UpdateUsername(
            WatchOptions$Mutation$UpdateUsername options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateUsername
    extends graphql.MutationOptions<Mutation$UpdateUsername> {
  WidgetOptions$Mutation$UpdateUsername({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUsername? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUsername? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUsername>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateUsername(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUsername,
          parserFn: _parserFn$Mutation$UpdateUsername,
        );

  final OnMutationCompleted$Mutation$UpdateUsername? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateUsername
    = graphql.MultiSourceResult<Mutation$UpdateUsername> Function(
  Variables$Mutation$UpdateUsername, {
  Object? optimisticResult,
  Mutation$UpdateUsername? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateUsername = widgets.Widget Function(
  RunMutation$Mutation$UpdateUsername,
  graphql.QueryResult<Mutation$UpdateUsername>?,
);

class Mutation$UpdateUsername$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUsername> {
  Mutation$UpdateUsername$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateUsername? options,
    required Builder$Mutation$UpdateUsername builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateUsername(),
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

class Mutation$UpdateUsername$currentUserUpdate {
  Mutation$UpdateUsername$currentUserUpdate({
    required this.id,
    required this.username,
    this.$__typename = 'UserObject',
  });

  factory Mutation$UpdateUsername$currentUserUpdate.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$username = json['username'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUsername$currentUserUpdate(
      id: (l$id as String),
      username: (l$username as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String username;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUsername$currentUserUpdate) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUsername$currentUserUpdate
    on Mutation$UpdateUsername$currentUserUpdate {
  CopyWith$Mutation$UpdateUsername$currentUserUpdate<
          Mutation$UpdateUsername$currentUserUpdate>
      get copyWith => CopyWith$Mutation$UpdateUsername$currentUserUpdate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUsername$currentUserUpdate<TRes> {
  factory CopyWith$Mutation$UpdateUsername$currentUserUpdate(
    Mutation$UpdateUsername$currentUserUpdate instance,
    TRes Function(Mutation$UpdateUsername$currentUserUpdate) then,
  ) = _CopyWithImpl$Mutation$UpdateUsername$currentUserUpdate;

  factory CopyWith$Mutation$UpdateUsername$currentUserUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUsername$currentUserUpdate;

  TRes call({
    String? id,
    String? username,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUsername$currentUserUpdate<TRes>
    implements CopyWith$Mutation$UpdateUsername$currentUserUpdate<TRes> {
  _CopyWithImpl$Mutation$UpdateUsername$currentUserUpdate(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUsername$currentUserUpdate _instance;

  final TRes Function(Mutation$UpdateUsername$currentUserUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? username = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUsername$currentUserUpdate(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateUsername$currentUserUpdate<TRes>
    implements CopyWith$Mutation$UpdateUsername$currentUserUpdate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUsername$currentUserUpdate(this._res);

  TRes _res;

  call({
    String? id,
    String? username,
    String? $__typename,
  }) =>
      _res;
}
