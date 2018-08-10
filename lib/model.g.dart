// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable serialize(Serializers serializers, Article object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'by',
      serializers.serialize(object.by, specifiedType: const FullType(String)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'kids',
      serializers.serialize(object.kids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'by':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'kids':
          result.kids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final int id;
  @override
  final String by;
  @override
  final int score;
  @override
  final String text;
  @override
  final int time;
  @override
  final String title;
  @override
  final String type;
  @override
  final String url;
  @override
  final BuiltList<int> kids;

  factory _$Article([void updates(ArticleBuilder b)]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.id,
      this.by,
      this.score,
      this.text,
      this.time,
      this.title,
      this.type,
      this.url,
      this.kids})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Article', 'id');
    if (by == null) throw new BuiltValueNullFieldError('Article', 'by');
    if (score == null) throw new BuiltValueNullFieldError('Article', 'score');
    if (text == null) throw new BuiltValueNullFieldError('Article', 'text');
    if (time == null) throw new BuiltValueNullFieldError('Article', 'time');
    if (title == null) throw new BuiltValueNullFieldError('Article', 'title');
    if (type == null) throw new BuiltValueNullFieldError('Article', 'type');
    if (kids == null) throw new BuiltValueNullFieldError('Article', 'kids');
  }

  @override
  Article rebuild(void updates(ArticleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Article) return false;
    return id == other.id &&
        by == other.by &&
        score == other.score &&
        text == other.text &&
        time == other.time &&
        title == other.title &&
        type == other.type &&
        url == other.url &&
        kids == other.kids;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), by.hashCode),
                                score.hashCode),
                            text.hashCode),
                        time.hashCode),
                    title.hashCode),
                type.hashCode),
            url.hashCode),
        kids.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('id', id)
          ..add('by', by)
          ..add('score', score)
          ..add('text', text)
          ..add('time', time)
          ..add('title', title)
          ..add('type', type)
          ..add('url', url)
          ..add('kids', kids))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ListBuilder<int> _kids;
  ListBuilder<int> get kids => _$this._kids ??= new ListBuilder<int>();
  set kids(ListBuilder<int> kids) => _$this._kids = kids;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _by = _$v.by;
      _score = _$v.score;
      _text = _$v.text;
      _time = _$v.time;
      _title = _$v.title;
      _type = _$v.type;
      _url = _$v.url;
      _kids = _$v.kids?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Article;
  }

  @override
  void update(void updates(ArticleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              id: id,
              by: by,
              score: score,
              text: text,
              time: time,
              title: title,
              type: type,
              url: url,
              kids: kids.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'kids';
        kids.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
