class Input_CreateWorkInput {
  factory Input_CreateWorkInput({
    required List<String> categories,
    required String illustration,
    required String titleEn,
    required String titleUa,
  }) =>
      Input_CreateWorkInput._({
        r'categories': categories,
        r'illustration': illustration,
        r'titleEn': titleEn,
        r'titleUa': titleUa,
      });

  Input_CreateWorkInput._(this._$data);

  factory Input_CreateWorkInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$categories = data['categories'];
    result$data['categories'] =
        (l$categories as List<dynamic>).map((e) => (e as String)).toList();
    final l$illustration = data['illustration'];
    result$data['illustration'] = (l$illustration as String);
    final l$titleEn = data['titleEn'];
    result$data['titleEn'] = (l$titleEn as String);
    final l$titleUa = data['titleUa'];
    result$data['titleUa'] = (l$titleUa as String);
    return Input_CreateWorkInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get categories => (_$data['categories'] as List<String>);
  String get illustration => (_$data['illustration'] as String);
  String get titleEn => (_$data['titleEn'] as String);
  String get titleUa => (_$data['titleUa'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$categories = categories;
    result$data['categories'] = l$categories.map((e) => e).toList();
    final l$illustration = illustration;
    result$data['illustration'] = l$illustration;
    final l$titleEn = titleEn;
    result$data['titleEn'] = l$titleEn;
    final l$titleUa = titleUa;
    result$data['titleUa'] = l$titleUa;
    return result$data;
  }

  CopyWith_Input_CreateWorkInput<Input_CreateWorkInput> get copyWith =>
      CopyWith_Input_CreateWorkInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_CreateWorkInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories.length != lOther$categories.length) {
      return false;
    }
    for (int i = 0; i < l$categories.length; i++) {
      final l$categories$entry = l$categories[i];
      final lOther$categories$entry = lOther$categories[i];
      if (l$categories$entry != lOther$categories$entry) {
        return false;
      }
    }
    final l$illustration = illustration;
    final lOther$illustration = other.illustration;
    if (l$illustration != lOther$illustration) {
      return false;
    }
    final l$titleEn = titleEn;
    final lOther$titleEn = other.titleEn;
    if (l$titleEn != lOther$titleEn) {
      return false;
    }
    final l$titleUa = titleUa;
    final lOther$titleUa = other.titleUa;
    if (l$titleUa != lOther$titleUa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$illustration = illustration;
    final l$titleEn = titleEn;
    final l$titleUa = titleUa;
    return Object.hashAll([
      Object.hashAll(l$categories.map((v) => v)),
      l$illustration,
      l$titleEn,
      l$titleUa,
    ]);
  }
}

abstract class CopyWith_Input_CreateWorkInput<TRes> {
  factory CopyWith_Input_CreateWorkInput(
    Input_CreateWorkInput instance,
    TRes Function(Input_CreateWorkInput) then,
  ) = _CopyWithImpl_Input_CreateWorkInput;

  factory CopyWith_Input_CreateWorkInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateWorkInput;

  TRes call({
    List<String>? categories,
    String? illustration,
    String? titleEn,
    String? titleUa,
  });
}

class _CopyWithImpl_Input_CreateWorkInput<TRes>
    implements CopyWith_Input_CreateWorkInput<TRes> {
  _CopyWithImpl_Input_CreateWorkInput(
    this._instance,
    this._then,
  );

  final Input_CreateWorkInput _instance;

  final TRes Function(Input_CreateWorkInput) _then;

  static const _undefined = {};

  TRes call({
    Object? categories = _undefined,
    Object? illustration = _undefined,
    Object? titleEn = _undefined,
    Object? titleUa = _undefined,
  }) =>
      _then(Input_CreateWorkInput._({
        ..._instance._$data,
        if (categories != _undefined && categories != null)
          'categories': (categories as List<String>),
        if (illustration != _undefined && illustration != null)
          'illustration': (illustration as String),
        if (titleEn != _undefined && titleEn != null)
          'titleEn': (titleEn as String),
        if (titleUa != _undefined && titleUa != null)
          'titleUa': (titleUa as String),
      }));
}

class _CopyWithStubImpl_Input_CreateWorkInput<TRes>
    implements CopyWith_Input_CreateWorkInput<TRes> {
  _CopyWithStubImpl_Input_CreateWorkInput(this._res);

  TRes _res;

  call({
    List<String>? categories,
    String? illustration,
    String? titleEn,
    String? titleUa,
  }) =>
      _res;
}

class Input_SignInInput {
  factory Input_SignInInput({
    required String password,
    required String username,
  }) =>
      Input_SignInInput._({
        r'password': password,
        r'username': username,
      });

  Input_SignInInput._(this._$data);

  factory Input_SignInInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Input_SignInInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);
  String get username => (_$data['username'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith_Input_SignInInput<Input_SignInInput> get copyWith =>
      CopyWith_Input_SignInInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_SignInInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
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
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$password,
      l$username,
    ]);
  }
}

abstract class CopyWith_Input_SignInInput<TRes> {
  factory CopyWith_Input_SignInInput(
    Input_SignInInput instance,
    TRes Function(Input_SignInInput) then,
  ) = _CopyWithImpl_Input_SignInInput;

  factory CopyWith_Input_SignInInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SignInInput;

  TRes call({
    String? password,
    String? username,
  });
}

class _CopyWithImpl_Input_SignInInput<TRes>
    implements CopyWith_Input_SignInInput<TRes> {
  _CopyWithImpl_Input_SignInInput(
    this._instance,
    this._then,
  );

  final Input_SignInInput _instance;

  final TRes Function(Input_SignInInput) _then;

  static const _undefined = {};

  TRes call({
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input_SignInInput._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl_Input_SignInInput<TRes>
    implements CopyWith_Input_SignInInput<TRes> {
  _CopyWithStubImpl_Input_SignInInput(this._res);

  TRes _res;

  call({
    String? password,
    String? username,
  }) =>
      _res;
}

class Input_SignUpInput {
  factory Input_SignUpInput({
    String? avatar,
    required String email,
    required String password,
    required String username,
  }) =>
      Input_SignUpInput._({
        if (avatar != null) r'avatar': avatar,
        r'email': email,
        r'password': password,
        r'username': username,
      });

  Input_SignUpInput._(this._$data);

  factory Input_SignUpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Input_SignUpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String get email => (_$data['email'] as String);
  String get password => (_$data['password'] as String);
  String get username => (_$data['username'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith_Input_SignUpInput<Input_SignUpInput> get copyWith =>
      CopyWith_Input_SignUpInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_SignUpInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
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
    final l$avatar = avatar;
    final l$email = email;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('avatar') ? l$avatar : const {},
      l$email,
      l$password,
      l$username,
    ]);
  }
}

abstract class CopyWith_Input_SignUpInput<TRes> {
  factory CopyWith_Input_SignUpInput(
    Input_SignUpInput instance,
    TRes Function(Input_SignUpInput) then,
  ) = _CopyWithImpl_Input_SignUpInput;

  factory CopyWith_Input_SignUpInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SignUpInput;

  TRes call({
    String? avatar,
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl_Input_SignUpInput<TRes>
    implements CopyWith_Input_SignUpInput<TRes> {
  _CopyWithImpl_Input_SignUpInput(
    this._instance,
    this._then,
  );

  final Input_SignUpInput _instance;

  final TRes Function(Input_SignUpInput) _then;

  static const _undefined = {};

  TRes call({
    Object? avatar = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input_SignUpInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl_Input_SignUpInput<TRes>
    implements CopyWith_Input_SignUpInput<TRes> {
  _CopyWithStubImpl_Input_SignUpInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Input_WorkFilterInput {
  factory Input_WorkFilterInput({
    List<String>? categories,
    required int count,
    required int offset,
    required Input_WorkFilterSortInput sort,
    String? text,
  }) =>
      Input_WorkFilterInput._({
        if (categories != null) r'categories': categories,
        r'count': count,
        r'offset': offset,
        r'sort': sort,
        if (text != null) r'text': text,
      });

  Input_WorkFilterInput._(this._$data);

  factory Input_WorkFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('categories')) {
      final l$categories = data['categories'];
      result$data['categories'] =
          (l$categories as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    final l$count = data['count'];
    result$data['count'] = (l$count as int);
    final l$offset = data['offset'];
    result$data['offset'] = (l$offset as int);
    final l$sort = data['sort'];
    result$data['sort'] =
        Input_WorkFilterSortInput.fromJson((l$sort as Map<String, dynamic>));
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Input_WorkFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get categories => (_$data['categories'] as List<String>?);
  int get count => (_$data['count'] as int);
  int get offset => (_$data['offset'] as int);
  Input_WorkFilterSortInput get sort =>
      (_$data['sort'] as Input_WorkFilterSortInput);
  String? get text => (_$data['text'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('categories')) {
      final l$categories = categories;
      result$data['categories'] = l$categories?.map((e) => e).toList();
    }
    final l$count = count;
    result$data['count'] = l$count;
    final l$offset = offset;
    result$data['offset'] = l$offset;
    final l$sort = sort;
    result$data['sort'] = l$sort.toJson();
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    return result$data;
  }

  CopyWith_Input_WorkFilterInput<Input_WorkFilterInput> get copyWith =>
      CopyWith_Input_WorkFilterInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_WorkFilterInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (_$data.containsKey('categories') !=
        other._$data.containsKey('categories')) {
      return false;
    }
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$count = count;
    final l$offset = offset;
    final l$sort = sort;
    final l$text = text;
    return Object.hashAll([
      _$data.containsKey('categories')
          ? l$categories == null
              ? null
              : Object.hashAll(l$categories.map((v) => v))
          : const {},
      l$count,
      l$offset,
      l$sort,
      _$data.containsKey('text') ? l$text : const {},
    ]);
  }
}

abstract class CopyWith_Input_WorkFilterInput<TRes> {
  factory CopyWith_Input_WorkFilterInput(
    Input_WorkFilterInput instance,
    TRes Function(Input_WorkFilterInput) then,
  ) = _CopyWithImpl_Input_WorkFilterInput;

  factory CopyWith_Input_WorkFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_WorkFilterInput;

  TRes call({
    List<String>? categories,
    int? count,
    int? offset,
    Input_WorkFilterSortInput? sort,
    String? text,
  });
  CopyWith_Input_WorkFilterSortInput<TRes> get sort;
}

class _CopyWithImpl_Input_WorkFilterInput<TRes>
    implements CopyWith_Input_WorkFilterInput<TRes> {
  _CopyWithImpl_Input_WorkFilterInput(
    this._instance,
    this._then,
  );

  final Input_WorkFilterInput _instance;

  final TRes Function(Input_WorkFilterInput) _then;

  static const _undefined = {};

  TRes call({
    Object? categories = _undefined,
    Object? count = _undefined,
    Object? offset = _undefined,
    Object? sort = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Input_WorkFilterInput._({
        ..._instance._$data,
        if (categories != _undefined)
          'categories': (categories as List<String>?),
        if (count != _undefined && count != null) 'count': (count as int),
        if (offset != _undefined && offset != null) 'offset': (offset as int),
        if (sort != _undefined && sort != null)
          'sort': (sort as Input_WorkFilterSortInput),
        if (text != _undefined) 'text': (text as String?),
      }));
  CopyWith_Input_WorkFilterSortInput<TRes> get sort {
    final local$sort = _instance.sort;
    return CopyWith_Input_WorkFilterSortInput(local$sort, (e) => call(sort: e));
  }
}

class _CopyWithStubImpl_Input_WorkFilterInput<TRes>
    implements CopyWith_Input_WorkFilterInput<TRes> {
  _CopyWithStubImpl_Input_WorkFilterInput(this._res);

  TRes _res;

  call({
    List<String>? categories,
    int? count,
    int? offset,
    Input_WorkFilterSortInput? sort,
    String? text,
  }) =>
      _res;
  CopyWith_Input_WorkFilterSortInput<TRes> get sort =>
      CopyWith_Input_WorkFilterSortInput.stub(_res);
}

class Input_WorkFilterSortInput {
  factory Input_WorkFilterSortInput({
    required Enum_FieldSortOrder direction,
    required Enum_WorkSortField field,
  }) =>
      Input_WorkFilterSortInput._({
        r'direction': direction,
        r'field': field,
      });

  Input_WorkFilterSortInput._(this._$data);

  factory Input_WorkFilterSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson_Enum_FieldSortOrder((l$direction as String));
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_WorkSortField((l$field as String));
    return Input_WorkFilterSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_FieldSortOrder get direction =>
      (_$data['direction'] as Enum_FieldSortOrder);
  Enum_WorkSortField get field => (_$data['field'] as Enum_WorkSortField);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$direction = direction;
    result$data['direction'] = toJson_Enum_FieldSortOrder(l$direction);
    final l$field = field;
    result$data['field'] = toJson_Enum_WorkSortField(l$field);
    return result$data;
  }

  CopyWith_Input_WorkFilterSortInput<Input_WorkFilterSortInput> get copyWith =>
      CopyWith_Input_WorkFilterSortInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_WorkFilterSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$direction = direction;
    final l$field = field;
    return Object.hashAll([
      l$direction,
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_WorkFilterSortInput<TRes> {
  factory CopyWith_Input_WorkFilterSortInput(
    Input_WorkFilterSortInput instance,
    TRes Function(Input_WorkFilterSortInput) then,
  ) = _CopyWithImpl_Input_WorkFilterSortInput;

  factory CopyWith_Input_WorkFilterSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_WorkFilterSortInput;

  TRes call({
    Enum_FieldSortOrder? direction,
    Enum_WorkSortField? field,
  });
}

class _CopyWithImpl_Input_WorkFilterSortInput<TRes>
    implements CopyWith_Input_WorkFilterSortInput<TRes> {
  _CopyWithImpl_Input_WorkFilterSortInput(
    this._instance,
    this._then,
  );

  final Input_WorkFilterSortInput _instance;

  final TRes Function(Input_WorkFilterSortInput) _then;

  static const _undefined = {};

  TRes call({
    Object? direction = _undefined,
    Object? field = _undefined,
  }) =>
      _then(Input_WorkFilterSortInput._({
        ..._instance._$data,
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum_FieldSortOrder),
        if (field != _undefined && field != null)
          'field': (field as Enum_WorkSortField),
      }));
}

class _CopyWithStubImpl_Input_WorkFilterSortInput<TRes>
    implements CopyWith_Input_WorkFilterSortInput<TRes> {
  _CopyWithStubImpl_Input_WorkFilterSortInput(this._res);

  TRes _res;

  call({
    Enum_FieldSortOrder? direction,
    Enum_WorkSortField? field,
  }) =>
      _res;
}

enum Enum_FieldSortOrder { ASC, DESC, $unknown }

String toJson_Enum_FieldSortOrder(Enum_FieldSortOrder e) {
  switch (e) {
    case Enum_FieldSortOrder.ASC:
      return r'ASC';
    case Enum_FieldSortOrder.DESC:
      return r'DESC';
    case Enum_FieldSortOrder.$unknown:
      return r'$unknown';
  }
}

Enum_FieldSortOrder fromJson_Enum_FieldSortOrder(String value) {
  switch (value) {
    case r'ASC':
      return Enum_FieldSortOrder.ASC;
    case r'DESC':
      return Enum_FieldSortOrder.DESC;
    default:
      return Enum_FieldSortOrder.$unknown;
  }
}

enum Enum_WorkSortField { UPDATED_AT, $unknown }

String toJson_Enum_WorkSortField(Enum_WorkSortField e) {
  switch (e) {
    case Enum_WorkSortField.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum_WorkSortField.$unknown:
      return r'$unknown';
  }
}

Enum_WorkSortField fromJson_Enum_WorkSortField(String value) {
  switch (value) {
    case r'UPDATED_AT':
      return Enum_WorkSortField.UPDATED_AT;
    default:
      return Enum_WorkSortField.$unknown;
  }
}

const possibleTypesMap = {};
