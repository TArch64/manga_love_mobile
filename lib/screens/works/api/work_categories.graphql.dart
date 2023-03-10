import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$WorkCategories {
  Query$WorkCategories({
    required this.workCategories,
    this.$__typename = 'Query',
  });

  factory Query$WorkCategories.fromJson(Map<String, dynamic> json) {
    final l$workCategories = json['workCategories'];
    final l$$__typename = json['__typename'];
    return Query$WorkCategories(
      workCategories: (l$workCategories as List<dynamic>)
          .map((e) => Query$WorkCategories$workCategories.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$WorkCategories$workCategories> workCategories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workCategories = workCategories;
    _resultData['workCategories'] =
        l$workCategories.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workCategories = workCategories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$workCategories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$WorkCategories) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$workCategories = workCategories;
    final lOther$workCategories = other.workCategories;
    if (l$workCategories.length != lOther$workCategories.length) {
      return false;
    }
    for (int i = 0; i < l$workCategories.length; i++) {
      final l$workCategories$entry = l$workCategories[i];
      final lOther$workCategories$entry = lOther$workCategories[i];
      if (l$workCategories$entry != lOther$workCategories$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$WorkCategories on Query$WorkCategories {
  CopyWith$Query$WorkCategories<Query$WorkCategories> get copyWith =>
      CopyWith$Query$WorkCategories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkCategories<TRes> {
  factory CopyWith$Query$WorkCategories(
    Query$WorkCategories instance,
    TRes Function(Query$WorkCategories) then,
  ) = _CopyWithImpl$Query$WorkCategories;

  factory CopyWith$Query$WorkCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$WorkCategories;

  TRes call({
    List<Query$WorkCategories$workCategories>? workCategories,
    String? $__typename,
  });
  TRes workCategories(
      Iterable<Query$WorkCategories$workCategories> Function(
              Iterable<
                  CopyWith$Query$WorkCategories$workCategories<
                      Query$WorkCategories$workCategories>>)
          _fn);
}

class _CopyWithImpl$Query$WorkCategories<TRes>
    implements CopyWith$Query$WorkCategories<TRes> {
  _CopyWithImpl$Query$WorkCategories(
    this._instance,
    this._then,
  );

  final Query$WorkCategories _instance;

  final TRes Function(Query$WorkCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workCategories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WorkCategories(
        workCategories: workCategories == _undefined || workCategories == null
            ? _instance.workCategories
            : (workCategories as List<Query$WorkCategories$workCategories>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes workCategories(
          Iterable<Query$WorkCategories$workCategories> Function(
                  Iterable<
                      CopyWith$Query$WorkCategories$workCategories<
                          Query$WorkCategories$workCategories>>)
              _fn) =>
      call(
          workCategories: _fn(_instance.workCategories
              .map((e) => CopyWith$Query$WorkCategories$workCategories(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$WorkCategories<TRes>
    implements CopyWith$Query$WorkCategories<TRes> {
  _CopyWithStubImpl$Query$WorkCategories(this._res);

  TRes _res;

  call({
    List<Query$WorkCategories$workCategories>? workCategories,
    String? $__typename,
  }) =>
      _res;
  workCategories(_fn) => _res;
}

const documentNodeQueryWorkCategories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'WorkCategories'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'workCategories'),
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
            name: NameNode(value: 'textEn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'textUa'),
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
Query$WorkCategories _parserFn$Query$WorkCategories(
        Map<String, dynamic> data) =>
    Query$WorkCategories.fromJson(data);
typedef OnQueryComplete$Query$WorkCategories = FutureOr<void> Function(
  dynamic,
  Query$WorkCategories?,
);

class Options$Query$WorkCategories
    extends graphql.QueryOptions<Query$WorkCategories> {
  Options$Query$WorkCategories({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WorkCategories? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$WorkCategories? onComplete,
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
                    _parserFn$Query$WorkCategories(data),
                  ),
          onError: onError,
          document: documentNodeQueryWorkCategories,
          parserFn: _parserFn$Query$WorkCategories,
        );

  final OnQueryComplete$Query$WorkCategories? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$WorkCategories
    extends graphql.WatchQueryOptions<Query$WorkCategories> {
  WatchOptions$Query$WorkCategories({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WorkCategories? typedOptimisticResult,
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
          document: documentNodeQueryWorkCategories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$WorkCategories,
        );
}

class FetchMoreOptions$Query$WorkCategories extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$WorkCategories(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryWorkCategories,
        );
}

extension ClientExtension$Query$WorkCategories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$WorkCategories>> query$WorkCategories(
          [Options$Query$WorkCategories? options]) async =>
      await this.query(options ?? Options$Query$WorkCategories());
  graphql.ObservableQuery<Query$WorkCategories> watchQuery$WorkCategories(
          [WatchOptions$Query$WorkCategories? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$WorkCategories());
  void writeQuery$WorkCategories({
    required Query$WorkCategories data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryWorkCategories)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$WorkCategories? readQuery$WorkCategories({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryWorkCategories)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$WorkCategories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$WorkCategories> useQuery$WorkCategories(
        [Options$Query$WorkCategories? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$WorkCategories());
graphql.ObservableQuery<Query$WorkCategories> useWatchQuery$WorkCategories(
        [WatchOptions$Query$WorkCategories? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$WorkCategories());

class Query$WorkCategories$Widget
    extends graphql_flutter.Query<Query$WorkCategories> {
  Query$WorkCategories$Widget({
    widgets.Key? key,
    Options$Query$WorkCategories? options,
    required graphql_flutter.QueryBuilder<Query$WorkCategories> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$WorkCategories(),
          builder: builder,
        );
}

class Query$WorkCategories$workCategories {
  Query$WorkCategories$workCategories({
    required this.id,
    required this.textEn,
    required this.textUa,
    this.$__typename = 'WorkCategoryObject',
  });

  factory Query$WorkCategories$workCategories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$textEn = json['textEn'];
    final l$textUa = json['textUa'];
    final l$$__typename = json['__typename'];
    return Query$WorkCategories$workCategories(
      id: (l$id as String),
      textEn: (l$textEn as String),
      textUa: (l$textUa as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String textEn;

  final String textUa;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$textEn = textEn;
    _resultData['textEn'] = l$textEn;
    final l$textUa = textUa;
    _resultData['textUa'] = l$textUa;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$textEn = textEn;
    final l$textUa = textUa;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$textEn,
      l$textUa,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$WorkCategories$workCategories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$textEn = textEn;
    final lOther$textEn = other.textEn;
    if (l$textEn != lOther$textEn) {
      return false;
    }
    final l$textUa = textUa;
    final lOther$textUa = other.textUa;
    if (l$textUa != lOther$textUa) {
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

extension UtilityExtension$Query$WorkCategories$workCategories
    on Query$WorkCategories$workCategories {
  CopyWith$Query$WorkCategories$workCategories<
          Query$WorkCategories$workCategories>
      get copyWith => CopyWith$Query$WorkCategories$workCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WorkCategories$workCategories<TRes> {
  factory CopyWith$Query$WorkCategories$workCategories(
    Query$WorkCategories$workCategories instance,
    TRes Function(Query$WorkCategories$workCategories) then,
  ) = _CopyWithImpl$Query$WorkCategories$workCategories;

  factory CopyWith$Query$WorkCategories$workCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$WorkCategories$workCategories;

  TRes call({
    String? id,
    String? textEn,
    String? textUa,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$WorkCategories$workCategories<TRes>
    implements CopyWith$Query$WorkCategories$workCategories<TRes> {
  _CopyWithImpl$Query$WorkCategories$workCategories(
    this._instance,
    this._then,
  );

  final Query$WorkCategories$workCategories _instance;

  final TRes Function(Query$WorkCategories$workCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? textEn = _undefined,
    Object? textUa = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WorkCategories$workCategories(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        textEn: textEn == _undefined || textEn == null
            ? _instance.textEn
            : (textEn as String),
        textUa: textUa == _undefined || textUa == null
            ? _instance.textUa
            : (textUa as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$WorkCategories$workCategories<TRes>
    implements CopyWith$Query$WorkCategories$workCategories<TRes> {
  _CopyWithStubImpl$Query$WorkCategories$workCategories(this._res);

  TRes _res;

  call({
    String? id,
    String? textEn,
    String? textUa,
    String? $__typename,
  }) =>
      _res;
}
