import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables_Mutation_SignIn {
  factory Variables_Mutation_SignIn({
    required String username,
    required String password,
  }) =>
      Variables_Mutation_SignIn._({
        r'username': username,
        r'password': password,
      });

  Variables_Mutation_SignIn._(this._$data);

  factory Variables_Mutation_SignIn.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables_Mutation_SignIn._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith_Variables_Mutation_SignIn<Variables_Mutation_SignIn> get copyWith =>
      CopyWith_Variables_Mutation_SignIn(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_SignIn) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_SignIn<TRes> {
  factory CopyWith_Variables_Mutation_SignIn(
    Variables_Mutation_SignIn instance,
    TRes Function(Variables_Mutation_SignIn) then,
  ) = _CopyWithImpl_Variables_Mutation_SignIn;

  factory CopyWith_Variables_Mutation_SignIn.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_SignIn;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl_Variables_Mutation_SignIn<TRes>
    implements CopyWith_Variables_Mutation_SignIn<TRes> {
  _CopyWithImpl_Variables_Mutation_SignIn(
    this._instance,
    this._then,
  );

  final Variables_Mutation_SignIn _instance;

  final TRes Function(Variables_Mutation_SignIn) _then;

  static const _undefined = {};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables_Mutation_SignIn._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_SignIn<TRes>
    implements CopyWith_Variables_Mutation_SignIn<TRes> {
  _CopyWithStubImpl_Variables_Mutation_SignIn(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

class Mutation_SignIn {
  Mutation_SignIn({
    required this.authSignIn,
    required this.$__typename,
  });

  factory Mutation_SignIn.fromJson(Map<String, dynamic> json) {
    final l$authSignIn = json['authSignIn'];
    final l$$__typename = json['__typename'];
    return Mutation_SignIn(
      authSignIn: Mutation_SignIn_authSignIn.fromJson(
          (l$authSignIn as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_SignIn_authSignIn authSignIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authSignIn = authSignIn;
    _resultData['authSignIn'] = l$authSignIn.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authSignIn = authSignIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$authSignIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_SignIn) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$authSignIn = authSignIn;
    final lOther$authSignIn = other.authSignIn;
    if (l$authSignIn != lOther$authSignIn) {
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

extension UtilityExtension_Mutation_SignIn on Mutation_SignIn {
  CopyWith_Mutation_SignIn<Mutation_SignIn> get copyWith =>
      CopyWith_Mutation_SignIn(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_SignIn<TRes> {
  factory CopyWith_Mutation_SignIn(
    Mutation_SignIn instance,
    TRes Function(Mutation_SignIn) then,
  ) = _CopyWithImpl_Mutation_SignIn;

  factory CopyWith_Mutation_SignIn.stub(TRes res) =
      _CopyWithStubImpl_Mutation_SignIn;

  TRes call({
    Mutation_SignIn_authSignIn? authSignIn,
    String? $__typename,
  });
  CopyWith_Mutation_SignIn_authSignIn<TRes> get authSignIn;
}

class _CopyWithImpl_Mutation_SignIn<TRes>
    implements CopyWith_Mutation_SignIn<TRes> {
  _CopyWithImpl_Mutation_SignIn(
    this._instance,
    this._then,
  );

  final Mutation_SignIn _instance;

  final TRes Function(Mutation_SignIn) _then;

  static const _undefined = {};

  TRes call({
    Object? authSignIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_SignIn(
        authSignIn: authSignIn == _undefined || authSignIn == null
            ? _instance.authSignIn
            : (authSignIn as Mutation_SignIn_authSignIn),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Mutation_SignIn_authSignIn<TRes> get authSignIn {
    final local$authSignIn = _instance.authSignIn;
    return CopyWith_Mutation_SignIn_authSignIn(
        local$authSignIn, (e) => call(authSignIn: e));
  }
}

class _CopyWithStubImpl_Mutation_SignIn<TRes>
    implements CopyWith_Mutation_SignIn<TRes> {
  _CopyWithStubImpl_Mutation_SignIn(this._res);

  TRes _res;

  call({
    Mutation_SignIn_authSignIn? authSignIn,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Mutation_SignIn_authSignIn<TRes> get authSignIn =>
      CopyWith_Mutation_SignIn_authSignIn.stub(_res);
}

const documentNodeMutationSignIn = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignIn'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'authSignIn'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
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
Mutation_SignIn _parserFn_Mutation_SignIn(Map<String, dynamic> data) =>
    Mutation_SignIn.fromJson(data);
typedef OnMutationCompleted_Mutation_SignIn = FutureOr<void> Function(
  dynamic,
  Mutation_SignIn?,
);

class Options_Mutation_SignIn extends graphql.MutationOptions<Mutation_SignIn> {
  Options_Mutation_SignIn({
    String? operationName,
    required Variables_Mutation_SignIn variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted_Mutation_SignIn? onCompleted,
    graphql.OnMutationUpdate<Mutation_SignIn>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn_Mutation_SignIn(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignIn,
          parserFn: _parserFn_Mutation_SignIn,
        );

  final OnMutationCompleted_Mutation_SignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions_Mutation_SignIn
    extends graphql.WatchQueryOptions<Mutation_SignIn> {
  WatchOptions_Mutation_SignIn({
    String? operationName,
    required Variables_Mutation_SignIn variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
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
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationSignIn,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Mutation_SignIn,
        );
}

extension ClientExtension_Mutation_SignIn on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation_SignIn>> mutate_SignIn(
          Options_Mutation_SignIn options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation_SignIn> watchMutation_SignIn(
          WatchOptions_Mutation_SignIn options) =>
      this.watchMutation(options);
}

class Mutation_SignIn_HookResult {
  Mutation_SignIn_HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation_Mutation_SignIn runMutation;

  final graphql.QueryResult<Mutation_SignIn> result;
}

Mutation_SignIn_HookResult useMutation_SignIn(
    [WidgetOptions_Mutation_SignIn? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions_Mutation_SignIn());
  return Mutation_SignIn_HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation_SignIn> useWatchMutation_SignIn(
        WatchOptions_Mutation_SignIn options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions_Mutation_SignIn
    extends graphql.MutationOptions<Mutation_SignIn> {
  WidgetOptions_Mutation_SignIn({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted_Mutation_SignIn? onCompleted,
    graphql.OnMutationUpdate<Mutation_SignIn>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn_Mutation_SignIn(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignIn,
          parserFn: _parserFn_Mutation_SignIn,
        );

  final OnMutationCompleted_Mutation_SignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation_Mutation_SignIn = graphql.MultiSourceResult<Mutation_SignIn>
    Function(
  Variables_Mutation_SignIn, {
  Object? optimisticResult,
});
typedef Builder_Mutation_SignIn = widgets.Widget Function(
  RunMutation_Mutation_SignIn,
  graphql.QueryResult<Mutation_SignIn>?,
);

class Mutation_SignIn_Widget extends graphql_flutter.Mutation<Mutation_SignIn> {
  Mutation_SignIn_Widget({
    widgets.Key? key,
    WidgetOptions_Mutation_SignIn? options,
    required Builder_Mutation_SignIn builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions_Mutation_SignIn(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation_SignIn_authSignIn {
  Mutation_SignIn_authSignIn({
    required this.token,
    required this.$__typename,
  });

  factory Mutation_SignIn_authSignIn.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation_SignIn_authSignIn(
      token: (l$token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_SignIn_authSignIn) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
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

extension UtilityExtension_Mutation_SignIn_authSignIn
    on Mutation_SignIn_authSignIn {
  CopyWith_Mutation_SignIn_authSignIn<Mutation_SignIn_authSignIn>
      get copyWith => CopyWith_Mutation_SignIn_authSignIn(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Mutation_SignIn_authSignIn<TRes> {
  factory CopyWith_Mutation_SignIn_authSignIn(
    Mutation_SignIn_authSignIn instance,
    TRes Function(Mutation_SignIn_authSignIn) then,
  ) = _CopyWithImpl_Mutation_SignIn_authSignIn;

  factory CopyWith_Mutation_SignIn_authSignIn.stub(TRes res) =
      _CopyWithStubImpl_Mutation_SignIn_authSignIn;

  TRes call({
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_SignIn_authSignIn<TRes>
    implements CopyWith_Mutation_SignIn_authSignIn<TRes> {
  _CopyWithImpl_Mutation_SignIn_authSignIn(
    this._instance,
    this._then,
  );

  final Mutation_SignIn_authSignIn _instance;

  final TRes Function(Mutation_SignIn_authSignIn) _then;

  static const _undefined = {};

  TRes call({
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_SignIn_authSignIn(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Mutation_SignIn_authSignIn<TRes>
    implements CopyWith_Mutation_SignIn_authSignIn<TRes> {
  _CopyWithStubImpl_Mutation_SignIn_authSignIn(this._res);

  TRes _res;

  call({
    String? token,
    String? $__typename,
  }) =>
      _res;
}
