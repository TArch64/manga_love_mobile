import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SignUp {
  factory Variables$Mutation$SignUp({
    required String email,
    required String username,
    required String password,
  }) =>
      Variables$Mutation$SignUp._({
        r'email': email,
        r'username': username,
        r'password': password,
      });

  Variables$Mutation$SignUp._(this._$data);

  factory Variables$Mutation$SignUp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$SignUp._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  String get username => (_$data['username'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$SignUp<Variables$Mutation$SignUp> get copyWith =>
      CopyWith$Variables$Mutation$SignUp(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SignUp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$email = email;
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SignUp<TRes> {
  factory CopyWith$Variables$Mutation$SignUp(
    Variables$Mutation$SignUp instance,
    TRes Function(Variables$Mutation$SignUp) then,
  ) = _CopyWithImpl$Variables$Mutation$SignUp;

  factory CopyWith$Variables$Mutation$SignUp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignUp;

  TRes call({
    String? email,
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Variables$Mutation$SignUp<TRes>
    implements CopyWith$Variables$Mutation$SignUp<TRes> {
  _CopyWithImpl$Variables$Mutation$SignUp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SignUp _instance;

  final TRes Function(Variables$Mutation$SignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Mutation$SignUp._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SignUp<TRes>
    implements CopyWith$Variables$Mutation$SignUp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignUp(this._res);

  TRes _res;

  call({
    String? email,
    String? username,
    String? password,
  }) =>
      _res;
}

class Mutation$SignUp {
  Mutation$SignUp({
    required this.authSignUp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignUp.fromJson(Map<String, dynamic> json) {
    final l$authSignUp = json['authSignUp'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUp(
      authSignUp: Mutation$SignUp$authSignUp.fromJson(
          (l$authSignUp as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignUp$authSignUp authSignUp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authSignUp = authSignUp;
    _resultData['authSignUp'] = l$authSignUp.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authSignUp = authSignUp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$authSignUp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignUp) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$authSignUp = authSignUp;
    final lOther$authSignUp = other.authSignUp;
    if (l$authSignUp != lOther$authSignUp) {
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

extension UtilityExtension$Mutation$SignUp on Mutation$SignUp {
  CopyWith$Mutation$SignUp<Mutation$SignUp> get copyWith =>
      CopyWith$Mutation$SignUp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SignUp<TRes> {
  factory CopyWith$Mutation$SignUp(
    Mutation$SignUp instance,
    TRes Function(Mutation$SignUp) then,
  ) = _CopyWithImpl$Mutation$SignUp;

  factory CopyWith$Mutation$SignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUp;

  TRes call({
    Mutation$SignUp$authSignUp? authSignUp,
    String? $__typename,
  });
  CopyWith$Mutation$SignUp$authSignUp<TRes> get authSignUp;
}

class _CopyWithImpl$Mutation$SignUp<TRes>
    implements CopyWith$Mutation$SignUp<TRes> {
  _CopyWithImpl$Mutation$SignUp(
    this._instance,
    this._then,
  );

  final Mutation$SignUp _instance;

  final TRes Function(Mutation$SignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authSignUp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignUp(
        authSignUp: authSignUp == _undefined || authSignUp == null
            ? _instance.authSignUp
            : (authSignUp as Mutation$SignUp$authSignUp),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$SignUp$authSignUp<TRes> get authSignUp {
    final local$authSignUp = _instance.authSignUp;
    return CopyWith$Mutation$SignUp$authSignUp(
        local$authSignUp, (e) => call(authSignUp: e));
  }
}

class _CopyWithStubImpl$Mutation$SignUp<TRes>
    implements CopyWith$Mutation$SignUp<TRes> {
  _CopyWithStubImpl$Mutation$SignUp(this._res);

  TRes _res;

  call({
    Mutation$SignUp$authSignUp? authSignUp,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$SignUp$authSignUp<TRes> get authSignUp =>
      CopyWith$Mutation$SignUp$authSignUp.stub(_res);
}

const documentNodeMutationSignUp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignUp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        name: NameNode(value: 'authSignUp'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'email'),
                value: VariableNode(name: NameNode(value: 'email')),
              ),
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
Mutation$SignUp _parserFn$Mutation$SignUp(Map<String, dynamic> data) =>
    Mutation$SignUp.fromJson(data);
typedef OnMutationCompleted$Mutation$SignUp = FutureOr<void> Function(
  dynamic,
  Mutation$SignUp?,
);

class Options$Mutation$SignUp extends graphql.MutationOptions<Mutation$SignUp> {
  Options$Mutation$SignUp({
    String? operationName,
    required Variables$Mutation$SignUp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignUp? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignUp>? update,
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
                    data == null ? null : _parserFn$Mutation$SignUp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignUp,
          parserFn: _parserFn$Mutation$SignUp,
        );

  final OnMutationCompleted$Mutation$SignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SignUp
    extends graphql.WatchQueryOptions<Mutation$SignUp> {
  WatchOptions$Mutation$SignUp({
    String? operationName,
    required Variables$Mutation$SignUp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUp? typedOptimisticResult,
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
          document: documentNodeMutationSignUp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SignUp,
        );
}

extension ClientExtension$Mutation$SignUp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignUp>> mutate$SignUp(
          Options$Mutation$SignUp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignUp> watchMutation$SignUp(
          WatchOptions$Mutation$SignUp options) =>
      this.watchMutation(options);
}

class Mutation$SignUp$HookResult {
  Mutation$SignUp$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SignUp runMutation;

  final graphql.QueryResult<Mutation$SignUp> result;
}

Mutation$SignUp$HookResult useMutation$SignUp(
    [WidgetOptions$Mutation$SignUp? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$SignUp());
  return Mutation$SignUp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignUp> useWatchMutation$SignUp(
        WatchOptions$Mutation$SignUp options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignUp
    extends graphql.MutationOptions<Mutation$SignUp> {
  WidgetOptions$Mutation$SignUp({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignUp? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignUp>? update,
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
                    data == null ? null : _parserFn$Mutation$SignUp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignUp,
          parserFn: _parserFn$Mutation$SignUp,
        );

  final OnMutationCompleted$Mutation$SignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SignUp = graphql.MultiSourceResult<Mutation$SignUp>
    Function(
  Variables$Mutation$SignUp, {
  Object? optimisticResult,
  Mutation$SignUp? typedOptimisticResult,
});
typedef Builder$Mutation$SignUp = widgets.Widget Function(
  RunMutation$Mutation$SignUp,
  graphql.QueryResult<Mutation$SignUp>?,
);

class Mutation$SignUp$Widget extends graphql_flutter.Mutation<Mutation$SignUp> {
  Mutation$SignUp$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SignUp? options,
    required Builder$Mutation$SignUp builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SignUp(),
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

class Mutation$SignUp$authSignUp {
  Mutation$SignUp$authSignUp({
    required this.token,
    this.$__typename = 'AuthObject',
  });

  factory Mutation$SignUp$authSignUp.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUp$authSignUp(
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
    if (!(other is Mutation$SignUp$authSignUp) ||
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

extension UtilityExtension$Mutation$SignUp$authSignUp
    on Mutation$SignUp$authSignUp {
  CopyWith$Mutation$SignUp$authSignUp<Mutation$SignUp$authSignUp>
      get copyWith => CopyWith$Mutation$SignUp$authSignUp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignUp$authSignUp<TRes> {
  factory CopyWith$Mutation$SignUp$authSignUp(
    Mutation$SignUp$authSignUp instance,
    TRes Function(Mutation$SignUp$authSignUp) then,
  ) = _CopyWithImpl$Mutation$SignUp$authSignUp;

  factory CopyWith$Mutation$SignUp$authSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUp$authSignUp;

  TRes call({
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SignUp$authSignUp<TRes>
    implements CopyWith$Mutation$SignUp$authSignUp<TRes> {
  _CopyWithImpl$Mutation$SignUp$authSignUp(
    this._instance,
    this._then,
  );

  final Mutation$SignUp$authSignUp _instance;

  final TRes Function(Mutation$SignUp$authSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignUp$authSignUp(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SignUp$authSignUp<TRes>
    implements CopyWith$Mutation$SignUp$authSignUp<TRes> {
  _CopyWithStubImpl$Mutation$SignUp$authSignUp(this._res);

  TRes _res;

  call({
    String? token,
    String? $__typename,
  }) =>
      _res;
}
