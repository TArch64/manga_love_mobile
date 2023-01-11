import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query_WorkCategories {
  Query_WorkCategories({
    required this.workCategories,
    required this.$__typename,
  });

  factory Query_WorkCategories.fromJson(Map<String, dynamic> json) {
    final l$workCategories = json['workCategories'];
    final l$$__typename = json['__typename'];
    return Query_WorkCategories(
      workCategories: (l$workCategories as List<dynamic>)
          .map((e) => Query_WorkCategories_workCategories.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query_WorkCategories_workCategories> workCategories;

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
    if (!(other is Query_WorkCategories) || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_WorkCategories on Query_WorkCategories {
  CopyWith_Query_WorkCategories<Query_WorkCategories> get copyWith =>
      CopyWith_Query_WorkCategories(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_WorkCategories<TRes> {
  factory CopyWith_Query_WorkCategories(
    Query_WorkCategories instance,
    TRes Function(Query_WorkCategories) then,
  ) = _CopyWithImpl_Query_WorkCategories;

  factory CopyWith_Query_WorkCategories.stub(TRes res) =
      _CopyWithStubImpl_Query_WorkCategories;

  TRes call({
    List<Query_WorkCategories_workCategories>? workCategories,
    String? $__typename,
  });
  TRes workCategories(
      Iterable<Query_WorkCategories_workCategories> Function(
              Iterable<
                  CopyWith_Query_WorkCategories_workCategories<
                      Query_WorkCategories_workCategories>>)
          _fn);
}

class _CopyWithImpl_Query_WorkCategories<TRes>
    implements CopyWith_Query_WorkCategories<TRes> {
  _CopyWithImpl_Query_WorkCategories(
    this._instance,
    this._then,
  );

  final Query_WorkCategories _instance;

  final TRes Function(Query_WorkCategories) _then;

  static const _undefined = {};

  TRes call({
    Object? workCategories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_WorkCategories(
        workCategories: workCategories == _undefined || workCategories == null
            ? _instance.workCategories
            : (workCategories as List<Query_WorkCategories_workCategories>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes workCategories(
          Iterable<Query_WorkCategories_workCategories> Function(
                  Iterable<
                      CopyWith_Query_WorkCategories_workCategories<
                          Query_WorkCategories_workCategories>>)
              _fn) =>
      call(
          workCategories: _fn(_instance.workCategories
              .map((e) => CopyWith_Query_WorkCategories_workCategories(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Query_WorkCategories<TRes>
    implements CopyWith_Query_WorkCategories<TRes> {
  _CopyWithStubImpl_Query_WorkCategories(this._res);

  TRes _res;

  call({
    List<Query_WorkCategories_workCategories>? workCategories,
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
Query_WorkCategories _parserFn_Query_WorkCategories(
        Map<String, dynamic> data) =>
    Query_WorkCategories.fromJson(data);

class Options_Query_WorkCategories
    extends graphql.QueryOptions<Query_WorkCategories> {
  Options_Query_WorkCategories({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryWorkCategories,
          parserFn: _parserFn_Query_WorkCategories,
        );
}

class WatchOptions_Query_WorkCategories
    extends graphql.WatchQueryOptions<Query_WorkCategories> {
  WatchOptions_Query_WorkCategories({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryWorkCategories,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_WorkCategories,
        );
}

class FetchMoreOptions_Query_WorkCategories extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_WorkCategories(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryWorkCategories,
        );
}

extension ClientExtension_Query_WorkCategories on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_WorkCategories>> query_WorkCategories(
          [Options_Query_WorkCategories? options]) async =>
      await this.query(options ?? Options_Query_WorkCategories());
  graphql.ObservableQuery<Query_WorkCategories> watchQuery_WorkCategories(
          [WatchOptions_Query_WorkCategories? options]) =>
      this.watchQuery(options ?? WatchOptions_Query_WorkCategories());
  void writeQuery_WorkCategories({
    required Query_WorkCategories data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryWorkCategories)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_WorkCategories? readQuery_WorkCategories({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryWorkCategories)),
      optimistic: optimistic,
    );
    return result == null ? null : Query_WorkCategories.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query_WorkCategories> useQuery_WorkCategories(
        [Options_Query_WorkCategories? options]) =>
    graphql_flutter.useQuery(options ?? Options_Query_WorkCategories());
graphql.ObservableQuery<Query_WorkCategories> useWatchQuery_WorkCategories(
        [WatchOptions_Query_WorkCategories? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions_Query_WorkCategories());

class Query_WorkCategories_Widget
    extends graphql_flutter.Query<Query_WorkCategories> {
  Query_WorkCategories_Widget({
    widgets.Key? key,
    Options_Query_WorkCategories? options,
    required graphql_flutter.QueryBuilder<Query_WorkCategories> builder,
  }) : super(
          key: key,
          options: options ?? Options_Query_WorkCategories(),
          builder: builder,
        );
}

class Query_WorkCategories_workCategories {
  Query_WorkCategories_workCategories({
    required this.id,
    required this.textEn,
    required this.textUa,
    required this.$__typename,
  });

  factory Query_WorkCategories_workCategories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$textEn = json['textEn'];
    final l$textUa = json['textUa'];
    final l$$__typename = json['__typename'];
    return Query_WorkCategories_workCategories(
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
    if (!(other is Query_WorkCategories_workCategories) ||
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

extension UtilityExtension_Query_WorkCategories_workCategories
    on Query_WorkCategories_workCategories {
  CopyWith_Query_WorkCategories_workCategories<
          Query_WorkCategories_workCategories>
      get copyWith => CopyWith_Query_WorkCategories_workCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_WorkCategories_workCategories<TRes> {
  factory CopyWith_Query_WorkCategories_workCategories(
    Query_WorkCategories_workCategories instance,
    TRes Function(Query_WorkCategories_workCategories) then,
  ) = _CopyWithImpl_Query_WorkCategories_workCategories;

  factory CopyWith_Query_WorkCategories_workCategories.stub(TRes res) =
      _CopyWithStubImpl_Query_WorkCategories_workCategories;

  TRes call({
    String? id,
    String? textEn,
    String? textUa,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_WorkCategories_workCategories<TRes>
    implements CopyWith_Query_WorkCategories_workCategories<TRes> {
  _CopyWithImpl_Query_WorkCategories_workCategories(
    this._instance,
    this._then,
  );

  final Query_WorkCategories_workCategories _instance;

  final TRes Function(Query_WorkCategories_workCategories) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? textEn = _undefined,
    Object? textUa = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_WorkCategories_workCategories(
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

class _CopyWithStubImpl_Query_WorkCategories_workCategories<TRes>
    implements CopyWith_Query_WorkCategories_workCategories<TRes> {
  _CopyWithStubImpl_Query_WorkCategories_workCategories(this._res);

  TRes _res;

  call({
    String? id,
    String? textEn,
    String? textUa,
    String? $__typename,
  }) =>
      _res;
}
