// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetRequestCollection on Isar {
  IsarCollection<Request> get requests => this.collection();
}

const RequestSchema = CollectionSchema(
  name: r'Request',
  id: -2604191749140285923,
  properties: {
    r'dateTime': PropertySchema(
      id: 0,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'encodedBody': PropertySchema(
      id: 1,
      name: r'encodedBody',
      type: IsarType.string,
    ),
    r'errMsg': PropertySchema(
      id: 2,
      name: r'errMsg',
      type: IsarType.string,
    ),
    r'fullUrl': PropertySchema(
      id: 3,
      name: r'fullUrl',
      type: IsarType.string,
    ),
    r'header': PropertySchema(
      id: 4,
      name: r'header',
      type: IsarType.string,
    )
  },
  estimateSize: _requestEstimateSize,
  serialize: _requestSerialize,
  deserialize: _requestDeserialize,
  deserializeProp: _requestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _requestGetId,
  getLinks: _requestGetLinks,
  attach: _requestAttach,
  version: '3.0.5',
);

int _requestEstimateSize(
  Request object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.encodedBody.length * 3;
  {
    final value = object.errMsg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.fullUrl.length * 3;
  bytesCount += 3 + object.header.length * 3;
  return bytesCount;
}

void _requestSerialize(
  Request object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateTime);
  writer.writeString(offsets[1], object.encodedBody);
  writer.writeString(offsets[2], object.errMsg);
  writer.writeString(offsets[3], object.fullUrl);
  writer.writeString(offsets[4], object.header);
}

Request _requestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Request();
  object.dateTime = reader.readDateTime(offsets[0]);
  object.encodedBody = reader.readString(offsets[1]);
  object.errMsg = reader.readStringOrNull(offsets[2]);
  object.fullUrl = reader.readString(offsets[3]);
  object.header = reader.readString(offsets[4]);
  object.id = id;
  return object;
}

P _requestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _requestGetId(Request object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _requestGetLinks(Request object) {
  return [];
}

void _requestAttach(IsarCollection<dynamic> col, Id id, Request object) {
  object.id = id;
}

extension RequestQueryWhereSort on QueryBuilder<Request, Request, QWhere> {
  QueryBuilder<Request, Request, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RequestQueryWhere on QueryBuilder<Request, Request, QWhereClause> {
  QueryBuilder<Request, Request, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Request, Request, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Request, Request, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Request, Request, QAfterWhereClause> idBetween(
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
}

extension RequestQueryFilter
    on QueryBuilder<Request, Request, QFilterCondition> {
  QueryBuilder<Request, Request, QAfterFilterCondition> dateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> dateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> dateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> dateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encodedBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'encodedBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'encodedBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'encodedBody',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'encodedBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'encodedBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'encodedBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'encodedBody',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> encodedBodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encodedBody',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition>
      encodedBodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'encodedBody',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'errMsg',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'errMsg',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errMsg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'errMsg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'errMsg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'errMsg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'errMsg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'errMsg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'errMsg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'errMsg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errMsg',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> errMsgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'errMsg',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> fullUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'header',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'header',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'header',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'header',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'header',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'header',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'header',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'header',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'header',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> headerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'header',
        value: '',
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Request, Request, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<Request, Request, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<Request, Request, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

extension RequestQueryObject
    on QueryBuilder<Request, Request, QFilterCondition> {}

extension RequestQueryLinks
    on QueryBuilder<Request, Request, QFilterCondition> {}

extension RequestQuerySortBy on QueryBuilder<Request, Request, QSortBy> {
  QueryBuilder<Request, Request, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByEncodedBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedBody', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByEncodedBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedBody', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByErrMsg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errMsg', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByErrMsgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errMsg', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByFullUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullUrl', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByFullUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullUrl', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByHeader() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'header', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> sortByHeaderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'header', Sort.desc);
    });
  }
}

extension RequestQuerySortThenBy
    on QueryBuilder<Request, Request, QSortThenBy> {
  QueryBuilder<Request, Request, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByEncodedBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedBody', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByEncodedBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'encodedBody', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByErrMsg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errMsg', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByErrMsgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errMsg', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByFullUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullUrl', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByFullUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullUrl', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByHeader() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'header', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByHeaderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'header', Sort.desc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Request, Request, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension RequestQueryWhereDistinct
    on QueryBuilder<Request, Request, QDistinct> {
  QueryBuilder<Request, Request, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<Request, Request, QDistinct> distinctByEncodedBody(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'encodedBody', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Request, Request, QDistinct> distinctByErrMsg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'errMsg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Request, Request, QDistinct> distinctByFullUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Request, Request, QDistinct> distinctByHeader(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'header', caseSensitive: caseSensitive);
    });
  }
}

extension RequestQueryProperty
    on QueryBuilder<Request, Request, QQueryProperty> {
  QueryBuilder<Request, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Request, DateTime, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<Request, String, QQueryOperations> encodedBodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'encodedBody');
    });
  }

  QueryBuilder<Request, String?, QQueryOperations> errMsgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'errMsg');
    });
  }

  QueryBuilder<Request, String, QQueryOperations> fullUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullUrl');
    });
  }

  QueryBuilder<Request, String, QQueryOperations> headerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'header');
    });
  }
}
