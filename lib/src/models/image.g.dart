// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCachedCollection on Isar {
  IsarCollection<Cached> get cacheds => this.collection();
}

const CachedSchema = CollectionSchema(
  name: r'Cached',
  id: -7826972853343502402,
  properties: {
    r'cachedImage': PropertySchema(
      id: 0,
      name: r'cachedImage',
      type: IsarType.longList,
    ),
    r'cachedKey': PropertySchema(
      id: 1,
      name: r'cachedKey',
      type: IsarType.string,
    ),
    r'cachedTime': PropertySchema(
      id: 2,
      name: r'cachedTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _cachedEstimateSize,
  serialize: _cachedSerialize,
  deserialize: _cachedDeserialize,
  deserializeProp: _cachedDeserializeProp,
  idName: r'id',
  indexes: {
    r'cachedKey': IndexSchema(
      id: 5165740606747272596,
      name: r'cachedKey',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'cachedKey',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _cachedGetId,
  getLinks: _cachedGetLinks,
  attach: _cachedAttach,
  version: '3.1.0+1',
);

int _cachedEstimateSize(
  Cached object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cachedImage.length * 8;
  bytesCount += 3 + object.cachedKey.length * 3;
  return bytesCount;
}

void _cachedSerialize(
  Cached object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.cachedImage);
  writer.writeString(offsets[1], object.cachedKey);
  writer.writeDateTime(offsets[2], object.cachedTime);
}

Cached _cachedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Cached();
  object.cachedImage = reader.readLongList(offsets[0]) ?? [];
  object.cachedKey = reader.readString(offsets[1]);
  object.cachedTime = reader.readDateTime(offsets[2]);
  object.id = id;
  return object;
}

P _cachedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cachedGetId(Cached object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _cachedGetLinks(Cached object) {
  return [];
}

void _cachedAttach(IsarCollection<dynamic> col, Id id, Cached object) {
  object.id = id;
}

extension CachedByIndex on IsarCollection<Cached> {
  Future<Cached?> getByCachedKey(String cachedKey) {
    return getByIndex(r'cachedKey', [cachedKey]);
  }

  Cached? getByCachedKeySync(String cachedKey) {
    return getByIndexSync(r'cachedKey', [cachedKey]);
  }

  Future<bool> deleteByCachedKey(String cachedKey) {
    return deleteByIndex(r'cachedKey', [cachedKey]);
  }

  bool deleteByCachedKeySync(String cachedKey) {
    return deleteByIndexSync(r'cachedKey', [cachedKey]);
  }

  Future<List<Cached?>> getAllByCachedKey(List<String> cachedKeyValues) {
    final values = cachedKeyValues.map((e) => [e]).toList();
    return getAllByIndex(r'cachedKey', values);
  }

  List<Cached?> getAllByCachedKeySync(List<String> cachedKeyValues) {
    final values = cachedKeyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'cachedKey', values);
  }

  Future<int> deleteAllByCachedKey(List<String> cachedKeyValues) {
    final values = cachedKeyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'cachedKey', values);
  }

  int deleteAllByCachedKeySync(List<String> cachedKeyValues) {
    final values = cachedKeyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'cachedKey', values);
  }

  Future<Id> putByCachedKey(Cached object) {
    return putByIndex(r'cachedKey', object);
  }

  Id putByCachedKeySync(Cached object, {bool saveLinks = true}) {
    return putByIndexSync(r'cachedKey', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCachedKey(List<Cached> objects) {
    return putAllByIndex(r'cachedKey', objects);
  }

  List<Id> putAllByCachedKeySync(List<Cached> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'cachedKey', objects, saveLinks: saveLinks);
  }
}

extension CachedQueryWhereSort on QueryBuilder<Cached, Cached, QWhere> {
  QueryBuilder<Cached, Cached, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CachedQueryWhere on QueryBuilder<Cached, Cached, QWhereClause> {
  QueryBuilder<Cached, Cached, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Cached, Cached, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterWhereClause> cachedKeyEqualTo(
      String cachedKey) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'cachedKey',
        value: [cachedKey],
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterWhereClause> cachedKeyNotEqualTo(
      String cachedKey) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedKey',
              lower: [],
              upper: [cachedKey],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedKey',
              lower: [cachedKey],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedKey',
              lower: [cachedKey],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'cachedKey',
              lower: [],
              upper: [cachedKey],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CachedQueryFilter on QueryBuilder<Cached, Cached, QFilterCondition> {
  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedImageElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedImage',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition>
      cachedImageElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cachedImage',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition>
      cachedImageElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cachedImage',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedImageElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cachedImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedImageLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cachedImage',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedImageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cachedImage',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedImageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cachedImage',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedImageLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cachedImage',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition>
      cachedImageLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cachedImage',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedImageLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cachedImage',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cachedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cachedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cachedKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cachedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cachedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cachedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cachedKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedKey',
        value: '',
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cachedKey',
        value: '',
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cachedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cachedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> cachedTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cachedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cached, Cached, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CachedQueryObject on QueryBuilder<Cached, Cached, QFilterCondition> {}

extension CachedQueryLinks on QueryBuilder<Cached, Cached, QFilterCondition> {}

extension CachedQuerySortBy on QueryBuilder<Cached, Cached, QSortBy> {
  QueryBuilder<Cached, Cached, QAfterSortBy> sortByCachedKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedKey', Sort.asc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> sortByCachedKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedKey', Sort.desc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> sortByCachedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.asc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> sortByCachedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.desc);
    });
  }
}

extension CachedQuerySortThenBy on QueryBuilder<Cached, Cached, QSortThenBy> {
  QueryBuilder<Cached, Cached, QAfterSortBy> thenByCachedKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedKey', Sort.asc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> thenByCachedKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedKey', Sort.desc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> thenByCachedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.asc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> thenByCachedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedTime', Sort.desc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Cached, Cached, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CachedQueryWhereDistinct on QueryBuilder<Cached, Cached, QDistinct> {
  QueryBuilder<Cached, Cached, QDistinct> distinctByCachedImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cachedImage');
    });
  }

  QueryBuilder<Cached, Cached, QDistinct> distinctByCachedKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cachedKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cached, Cached, QDistinct> distinctByCachedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cachedTime');
    });
  }
}

extension CachedQueryProperty on QueryBuilder<Cached, Cached, QQueryProperty> {
  QueryBuilder<Cached, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Cached, List<int>, QQueryOperations> cachedImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cachedImage');
    });
  }

  QueryBuilder<Cached, String, QQueryOperations> cachedKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cachedKey');
    });
  }

  QueryBuilder<Cached, DateTime, QQueryOperations> cachedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cachedTime');
    });
  }
}
