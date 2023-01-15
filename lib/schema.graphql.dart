class Input$CreateWorkInput {
  factory Input$CreateWorkInput({
    required List<String> categories,
    required String illustration,
    required String titleEn,
    required String titleUa,
  }) =>
      Input$CreateWorkInput._({
        r'categories': categories,
        r'illustration': illustration,
        r'titleEn': titleEn,
        r'titleUa': titleUa,
      });

  Input$CreateWorkInput._(this._$data);

  factory Input$CreateWorkInput.fromJson(Map<String, dynamic> data) {
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
    return Input$CreateWorkInput._(result$data);
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

  CopyWith$Input$CreateWorkInput<Input$CreateWorkInput> get copyWith =>
      CopyWith$Input$CreateWorkInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateWorkInput) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$CreateWorkInput<TRes> {
  factory CopyWith$Input$CreateWorkInput(
    Input$CreateWorkInput instance,
    TRes Function(Input$CreateWorkInput) then,
  ) = _CopyWithImpl$Input$CreateWorkInput;

  factory CopyWith$Input$CreateWorkInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateWorkInput;

  TRes call({
    List<String>? categories,
    String? illustration,
    String? titleEn,
    String? titleUa,
  });
}

class _CopyWithImpl$Input$CreateWorkInput<TRes>
    implements CopyWith$Input$CreateWorkInput<TRes> {
  _CopyWithImpl$Input$CreateWorkInput(
    this._instance,
    this._then,
  );

  final Input$CreateWorkInput _instance;

  final TRes Function(Input$CreateWorkInput) _then;

  static const _undefined = {};

  TRes call({
    Object? categories = _undefined,
    Object? illustration = _undefined,
    Object? titleEn = _undefined,
    Object? titleUa = _undefined,
  }) =>
      _then(Input$CreateWorkInput._({
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

class _CopyWithStubImpl$Input$CreateWorkInput<TRes>
    implements CopyWith$Input$CreateWorkInput<TRes> {
  _CopyWithStubImpl$Input$CreateWorkInput(this._res);

  TRes _res;

  call({
    List<String>? categories,
    String? illustration,
    String? titleEn,
    String? titleUa,
  }) =>
      _res;
}

class Input$SignInInput {
  factory Input$SignInInput({
    required String password,
    required String username,
  }) =>
      Input$SignInInput._({
        r'password': password,
        r'username': username,
      });

  Input$SignInInput._(this._$data);

  factory Input$SignInInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Input$SignInInput._(result$data);
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

  CopyWith$Input$SignInInput<Input$SignInInput> get copyWith =>
      CopyWith$Input$SignInInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SignInInput) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$SignInInput<TRes> {
  factory CopyWith$Input$SignInInput(
    Input$SignInInput instance,
    TRes Function(Input$SignInInput) then,
  ) = _CopyWithImpl$Input$SignInInput;

  factory CopyWith$Input$SignInInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SignInInput;

  TRes call({
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Input$SignInInput<TRes>
    implements CopyWith$Input$SignInInput<TRes> {
  _CopyWithImpl$Input$SignInInput(
    this._instance,
    this._then,
  );

  final Input$SignInInput _instance;

  final TRes Function(Input$SignInInput) _then;

  static const _undefined = {};

  TRes call({
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input$SignInInput._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Input$SignInInput<TRes>
    implements CopyWith$Input$SignInInput<TRes> {
  _CopyWithStubImpl$Input$SignInInput(this._res);

  TRes _res;

  call({
    String? password,
    String? username,
  }) =>
      _res;
}

class Input$SignUpInput {
  factory Input$SignUpInput({
    String? avatar,
    required String email,
    required String password,
    required String username,
  }) =>
      Input$SignUpInput._({
        if (avatar != null) r'avatar': avatar,
        r'email': email,
        r'password': password,
        r'username': username,
      });

  Input$SignUpInput._(this._$data);

  factory Input$SignUpInput.fromJson(Map<String, dynamic> data) {
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
    return Input$SignUpInput._(result$data);
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

  CopyWith$Input$SignUpInput<Input$SignUpInput> get copyWith =>
      CopyWith$Input$SignUpInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SignUpInput) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$SignUpInput<TRes> {
  factory CopyWith$Input$SignUpInput(
    Input$SignUpInput instance,
    TRes Function(Input$SignUpInput) then,
  ) = _CopyWithImpl$Input$SignUpInput;

  factory CopyWith$Input$SignUpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SignUpInput;

  TRes call({
    String? avatar,
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Input$SignUpInput<TRes>
    implements CopyWith$Input$SignUpInput<TRes> {
  _CopyWithImpl$Input$SignUpInput(
    this._instance,
    this._then,
  );

  final Input$SignUpInput _instance;

  final TRes Function(Input$SignUpInput) _then;

  static const _undefined = {};

  TRes call({
    Object? avatar = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input$SignUpInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Input$SignUpInput<TRes>
    implements CopyWith$Input$SignUpInput<TRes> {
  _CopyWithStubImpl$Input$SignUpInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Input$UpdateUserInput {
  factory Input$UpdateUserInput({
    String? avatar,
    String? email,
    String? password,
    String? username,
  }) =>
      Input$UpdateUserInput._({
        if (avatar != null) r'avatar': avatar,
        if (email != null) r'email': email,
        if (password != null) r'password': password,
        if (username != null) r'username': username,
      });

  Input$UpdateUserInput._(this._$data);

  factory Input$UpdateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    return Input$UpdateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get password => (_$data['password'] as String?);
  String? get username => (_$data['username'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    return result$data;
  }

  CopyWith$Input$UpdateUserInput<Input$UpdateUserInput> get copyWith =>
      CopyWith$Input$UpdateUserInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateUserInput) || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
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
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('username') ? l$username : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateUserInput<TRes> {
  factory CopyWith$Input$UpdateUserInput(
    Input$UpdateUserInput instance,
    TRes Function(Input$UpdateUserInput) then,
  ) = _CopyWithImpl$Input$UpdateUserInput;

  factory CopyWith$Input$UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserInput;

  TRes call({
    String? avatar,
    String? email,
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithImpl$Input$UpdateUserInput(
    this._instance,
    this._then,
  );

  final Input$UpdateUserInput _instance;

  final TRes Function(Input$UpdateUserInput) _then;

  static const _undefined = {};

  TRes call({
    Object? avatar = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input$UpdateUserInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (email != _undefined) 'email': (email as String?),
        if (password != _undefined) 'password': (password as String?),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? email,
    String? password,
    String? username,
  }) =>
      _res;
}

class Input$WorkFilterInput {
  factory Input$WorkFilterInput({
    List<String>? categories,
    required int count,
    required int offset,
    required Input$WorkFilterSortInput sort,
    String? text,
  }) =>
      Input$WorkFilterInput._({
        if (categories != null) r'categories': categories,
        r'count': count,
        r'offset': offset,
        r'sort': sort,
        if (text != null) r'text': text,
      });

  Input$WorkFilterInput._(this._$data);

  factory Input$WorkFilterInput.fromJson(Map<String, dynamic> data) {
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
        Input$WorkFilterSortInput.fromJson((l$sort as Map<String, dynamic>));
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Input$WorkFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get categories => (_$data['categories'] as List<String>?);
  int get count => (_$data['count'] as int);
  int get offset => (_$data['offset'] as int);
  Input$WorkFilterSortInput get sort =>
      (_$data['sort'] as Input$WorkFilterSortInput);
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

  CopyWith$Input$WorkFilterInput<Input$WorkFilterInput> get copyWith =>
      CopyWith$Input$WorkFilterInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WorkFilterInput) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$WorkFilterInput<TRes> {
  factory CopyWith$Input$WorkFilterInput(
    Input$WorkFilterInput instance,
    TRes Function(Input$WorkFilterInput) then,
  ) = _CopyWithImpl$Input$WorkFilterInput;

  factory CopyWith$Input$WorkFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WorkFilterInput;

  TRes call({
    List<String>? categories,
    int? count,
    int? offset,
    Input$WorkFilterSortInput? sort,
    String? text,
  });
  CopyWith$Input$WorkFilterSortInput<TRes> get sort;
}

class _CopyWithImpl$Input$WorkFilterInput<TRes>
    implements CopyWith$Input$WorkFilterInput<TRes> {
  _CopyWithImpl$Input$WorkFilterInput(
    this._instance,
    this._then,
  );

  final Input$WorkFilterInput _instance;

  final TRes Function(Input$WorkFilterInput) _then;

  static const _undefined = {};

  TRes call({
    Object? categories = _undefined,
    Object? count = _undefined,
    Object? offset = _undefined,
    Object? sort = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Input$WorkFilterInput._({
        ..._instance._$data,
        if (categories != _undefined)
          'categories': (categories as List<String>?),
        if (count != _undefined && count != null) 'count': (count as int),
        if (offset != _undefined && offset != null) 'offset': (offset as int),
        if (sort != _undefined && sort != null)
          'sort': (sort as Input$WorkFilterSortInput),
        if (text != _undefined) 'text': (text as String?),
      }));
  CopyWith$Input$WorkFilterSortInput<TRes> get sort {
    final local$sort = _instance.sort;
    return CopyWith$Input$WorkFilterSortInput(local$sort, (e) => call(sort: e));
  }
}

class _CopyWithStubImpl$Input$WorkFilterInput<TRes>
    implements CopyWith$Input$WorkFilterInput<TRes> {
  _CopyWithStubImpl$Input$WorkFilterInput(this._res);

  TRes _res;

  call({
    List<String>? categories,
    int? count,
    int? offset,
    Input$WorkFilterSortInput? sort,
    String? text,
  }) =>
      _res;
  CopyWith$Input$WorkFilterSortInput<TRes> get sort =>
      CopyWith$Input$WorkFilterSortInput.stub(_res);
}

class Input$WorkFilterSortInput {
  factory Input$WorkFilterSortInput({
    required Enum$FieldSortOrder direction,
    required Enum$WorkSortField field,
  }) =>
      Input$WorkFilterSortInput._({
        r'direction': direction,
        r'field': field,
      });

  Input$WorkFilterSortInput._(this._$data);

  factory Input$WorkFilterSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$FieldSortOrder((l$direction as String));
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$WorkSortField((l$field as String));
    return Input$WorkFilterSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$FieldSortOrder get direction =>
      (_$data['direction'] as Enum$FieldSortOrder);
  Enum$WorkSortField get field => (_$data['field'] as Enum$WorkSortField);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$FieldSortOrder(l$direction);
    final l$field = field;
    result$data['field'] = toJson$Enum$WorkSortField(l$field);
    return result$data;
  }

  CopyWith$Input$WorkFilterSortInput<Input$WorkFilterSortInput> get copyWith =>
      CopyWith$Input$WorkFilterSortInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WorkFilterSortInput) ||
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

abstract class CopyWith$Input$WorkFilterSortInput<TRes> {
  factory CopyWith$Input$WorkFilterSortInput(
    Input$WorkFilterSortInput instance,
    TRes Function(Input$WorkFilterSortInput) then,
  ) = _CopyWithImpl$Input$WorkFilterSortInput;

  factory CopyWith$Input$WorkFilterSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WorkFilterSortInput;

  TRes call({
    Enum$FieldSortOrder? direction,
    Enum$WorkSortField? field,
  });
}

class _CopyWithImpl$Input$WorkFilterSortInput<TRes>
    implements CopyWith$Input$WorkFilterSortInput<TRes> {
  _CopyWithImpl$Input$WorkFilterSortInput(
    this._instance,
    this._then,
  );

  final Input$WorkFilterSortInput _instance;

  final TRes Function(Input$WorkFilterSortInput) _then;

  static const _undefined = {};

  TRes call({
    Object? direction = _undefined,
    Object? field = _undefined,
  }) =>
      _then(Input$WorkFilterSortInput._({
        ..._instance._$data,
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$FieldSortOrder),
        if (field != _undefined && field != null)
          'field': (field as Enum$WorkSortField),
      }));
}

class _CopyWithStubImpl$Input$WorkFilterSortInput<TRes>
    implements CopyWith$Input$WorkFilterSortInput<TRes> {
  _CopyWithStubImpl$Input$WorkFilterSortInput(this._res);

  TRes _res;

  call({
    Enum$FieldSortOrder? direction,
    Enum$WorkSortField? field,
  }) =>
      _res;
}

enum Enum$FieldSortOrder { ASC, DESC, $unknown }

String toJson$Enum$FieldSortOrder(Enum$FieldSortOrder e) {
  switch (e) {
    case Enum$FieldSortOrder.ASC:
      return r'ASC';
    case Enum$FieldSortOrder.DESC:
      return r'DESC';
    case Enum$FieldSortOrder.$unknown:
      return r'$unknown';
  }
}

Enum$FieldSortOrder fromJson$Enum$FieldSortOrder(String value) {
  switch (value) {
    case r'ASC':
      return Enum$FieldSortOrder.ASC;
    case r'DESC':
      return Enum$FieldSortOrder.DESC;
    default:
      return Enum$FieldSortOrder.$unknown;
  }
}

enum Enum$WorkSortField { UPDATED_AT, $unknown }

String toJson$Enum$WorkSortField(Enum$WorkSortField e) {
  switch (e) {
    case Enum$WorkSortField.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$WorkSortField.$unknown:
      return r'$unknown';
  }
}

Enum$WorkSortField fromJson$Enum$WorkSortField(String value) {
  switch (value) {
    case r'UPDATED_AT':
      return Enum$WorkSortField.UPDATED_AT;
    default:
      return Enum$WorkSortField.$unknown;
  }
}

const possibleTypesMap = {};
