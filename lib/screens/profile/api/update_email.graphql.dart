import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateEmail {
  factory Variables$Mutation$UpdateEmail({required String email}) =>
      Variables$Mutation$UpdateEmail._({
        r'email': email,
      });

  Variables$Mutation$UpdateEmail._(this._$data);

  factory Variables$Mutation$UpdateEmail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    return Variables$Mutation$UpdateEmail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateEmail<Variables$Mutation$UpdateEmail>
      get copyWith => CopyWith$Variables$Mutation$UpdateEmail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateEmail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    return Object.hashAll([l$email]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateEmail<TRes> {
  factory CopyWith$Variables$Mutation$UpdateEmail(
    Variables$Mutation$UpdateEmail instance,
    TRes Function(Variables$Mutation$UpdateEmail) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateEmail;

  factory CopyWith$Variables$Mutation$UpdateEmail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateEmail;

  TRes call({String? email});
}

class _CopyWithImpl$Variables$Mutation$UpdateEmail<TRes>
    implements CopyWith$Variables$Mutation$UpdateEmail<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateEmail(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateEmail _instance;

  final TRes Function(Variables$Mutation$UpdateEmail) _then;

  static const _undefined = {};

  TRes call({Object? email = _undefined}) =>
      _then(Variables$Mutation$UpdateEmail._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateEmail<TRes>
    implements CopyWith$Variables$Mutation$UpdateEmail<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateEmail(this._res);

  TRes _res;

  call({String? email}) => _res;
}

class Mutation$UpdateEmail {
  Mutation$UpdateEmail({
    required this.currentUserUpdate,
    required this.$__typename,
  });

  factory Mutation$UpdateEmail.fromJson(Map<String, dynamic> json) {
    final l$currentUserUpdate = json['currentUserUpdate'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateEmail(
      currentUserUpdate: Mutation$UpdateEmail$currentUserUpdate.fromJson(
          (l$currentUserUpdate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateEmail$currentUserUpdate currentUserUpdate;

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
    if (!(other is Mutation$UpdateEmail) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateEmail on Mutation$UpdateEmail {
  CopyWith$Mutation$UpdateEmail<Mutation$UpdateEmail> get copyWith =>
      CopyWith$Mutation$UpdateEmail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateEmail<TRes> {
  factory CopyWith$Mutation$UpdateEmail(
    Mutation$UpdateEmail instance,
    TRes Function(Mutation$UpdateEmail) then,
  ) = _CopyWithImpl$Mutation$UpdateEmail;

  factory CopyWith$Mutation$UpdateEmail.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateEmail;

  TRes call({
    Mutation$UpdateEmail$currentUserUpdate? currentUserUpdate,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateEmail$currentUserUpdate<TRes> get currentUserUpdate;
}

class _CopyWithImpl$Mutation$UpdateEmail<TRes>
    implements CopyWith$Mutation$UpdateEmail<TRes> {
  _CopyWithImpl$Mutation$UpdateEmail(
    this._instance,
    this._then,
  );

  final Mutation$UpdateEmail _instance;

  final TRes Function(Mutation$UpdateEmail) _then;

  static const _undefined = {};

  TRes call({
    Object? currentUserUpdate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateEmail(
        currentUserUpdate:
            currentUserUpdate == _undefined || currentUserUpdate == null
                ? _instance.currentUserUpdate
                : (currentUserUpdate as Mutation$UpdateEmail$currentUserUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateEmail$currentUserUpdate<TRes> get currentUserUpdate {
    final local$currentUserUpdate = _instance.currentUserUpdate;
    return CopyWith$Mutation$UpdateEmail$currentUserUpdate(
        local$currentUserUpdate, (e) => call(currentUserUpdate: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateEmail<TRes>
    implements CopyWith$Mutation$UpdateEmail<TRes> {
  _CopyWithStubImpl$Mutation$UpdateEmail(this._res);

  TRes _res;

  call({
    Mutation$UpdateEmail$currentUserUpdate? currentUserUpdate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateEmail$currentUserUpdate<TRes> get currentUserUpdate =>
      CopyWith$Mutation$UpdateEmail$currentUserUpdate.stub(_res);
}

const documentNodeMutationUpdateEmail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateEmail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
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
                name: NameNode(value: 'email'),
                value: VariableNode(name: NameNode(value: 'email')),
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
            name: NameNode(value: 'email'),
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
Mutation$UpdateEmail _parserFn$Mutation$UpdateEmail(
        Map<String, dynamic> data) =>
    Mutation$UpdateEmail.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateEmail = FutureOr<void> Function(
  dynamic,
  Mutation$UpdateEmail?,
);

class Options$Mutation$UpdateEmail
    extends graphql.MutationOptions<Mutation$UpdateEmail> {
  Options$Mutation$UpdateEmail({
    String? operationName,
    required Variables$Mutation$UpdateEmail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateEmail? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateEmail>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateEmail(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateEmail,
          parserFn: _parserFn$Mutation$UpdateEmail,
        );

  final OnMutationCompleted$Mutation$UpdateEmail? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateEmail
    extends graphql.WatchQueryOptions<Mutation$UpdateEmail> {
  WatchOptions$Mutation$UpdateEmail({
    String? operationName,
    required Variables$Mutation$UpdateEmail variables,
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
          document: documentNodeMutationUpdateEmail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateEmail,
        );
}

extension ClientExtension$Mutation$UpdateEmail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateEmail>> mutate$UpdateEmail(
          Options$Mutation$UpdateEmail options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateEmail> watchMutation$UpdateEmail(
          WatchOptions$Mutation$UpdateEmail options) =>
      this.watchMutation(options);
}

class Mutation$UpdateEmail$HookResult {
  Mutation$UpdateEmail$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateEmail runMutation;

  final graphql.QueryResult<Mutation$UpdateEmail> result;
}

Mutation$UpdateEmail$HookResult useMutation$UpdateEmail(
    [WidgetOptions$Mutation$UpdateEmail? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateEmail());
  return Mutation$UpdateEmail$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateEmail> useWatchMutation$UpdateEmail(
        WatchOptions$Mutation$UpdateEmail options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateEmail
    extends graphql.MutationOptions<Mutation$UpdateEmail> {
  WidgetOptions$Mutation$UpdateEmail({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateEmail? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateEmail>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateEmail(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateEmail,
          parserFn: _parserFn$Mutation$UpdateEmail,
        );

  final OnMutationCompleted$Mutation$UpdateEmail? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateEmail
    = graphql.MultiSourceResult<Mutation$UpdateEmail> Function(
  Variables$Mutation$UpdateEmail, {
  Object? optimisticResult,
});
typedef Builder$Mutation$UpdateEmail = widgets.Widget Function(
  RunMutation$Mutation$UpdateEmail,
  graphql.QueryResult<Mutation$UpdateEmail>?,
);

class Mutation$UpdateEmail$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateEmail> {
  Mutation$UpdateEmail$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateEmail? options,
    required Builder$Mutation$UpdateEmail builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateEmail(),
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

class Mutation$UpdateEmail$currentUserUpdate {
  Mutation$UpdateEmail$currentUserUpdate({
    required this.id,
    required this.email,
    required this.$__typename,
  });

  factory Mutation$UpdateEmail$currentUserUpdate.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateEmail$currentUserUpdate(
      id: (l$id as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateEmail$currentUserUpdate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Mutation$UpdateEmail$currentUserUpdate
    on Mutation$UpdateEmail$currentUserUpdate {
  CopyWith$Mutation$UpdateEmail$currentUserUpdate<
          Mutation$UpdateEmail$currentUserUpdate>
      get copyWith => CopyWith$Mutation$UpdateEmail$currentUserUpdate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateEmail$currentUserUpdate<TRes> {
  factory CopyWith$Mutation$UpdateEmail$currentUserUpdate(
    Mutation$UpdateEmail$currentUserUpdate instance,
    TRes Function(Mutation$UpdateEmail$currentUserUpdate) then,
  ) = _CopyWithImpl$Mutation$UpdateEmail$currentUserUpdate;

  factory CopyWith$Mutation$UpdateEmail$currentUserUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateEmail$currentUserUpdate;

  TRes call({
    String? id,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateEmail$currentUserUpdate<TRes>
    implements CopyWith$Mutation$UpdateEmail$currentUserUpdate<TRes> {
  _CopyWithImpl$Mutation$UpdateEmail$currentUserUpdate(
    this._instance,
    this._then,
  );

  final Mutation$UpdateEmail$currentUserUpdate _instance;

  final TRes Function(Mutation$UpdateEmail$currentUserUpdate) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateEmail$currentUserUpdate(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateEmail$currentUserUpdate<TRes>
    implements CopyWith$Mutation$UpdateEmail$currentUserUpdate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateEmail$currentUserUpdate(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? $__typename,
  }) =>
      _res;
}
