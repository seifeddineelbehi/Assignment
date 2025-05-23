// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'cached_db_config.dart';
//
// // ignore_for_file: type=lint
// class $CollectionListTableTable extends CollectionListTable
//     with TableInfo<$CollectionListTableTable, collectionListTable> {
//   @override
//   final GeneratedDatabase attachedDatabase;
//   final String? _alias;
//   $CollectionListTableTable(this.attachedDatabase, [this._alias]);
//   static const VerificationMeta _idMeta = const VerificationMeta('id');
//   @override
//   late final GeneratedColumn<String> id = GeneratedColumn<String>(
//       'id', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _bottleNameMeta =
//       const VerificationMeta('bottleName');
//   @override
//   late final GeneratedColumn<String> bottleName = GeneratedColumn<String>(
//       'bottleName', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _bottleImageMeta =
//       const VerificationMeta('bottleImage');
//   @override
//   late final GeneratedColumn<String> bottleImage = GeneratedColumn<String>(
//       'bottleImage', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _bottleProdYearMeta =
//       const VerificationMeta('bottleProdYear');
//   @override
//   late final GeneratedColumn<String> bottleProdYear = GeneratedColumn<String>(
//       'bottleProdYear', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _bottleRefMeta =
//       const VerificationMeta('bottleRef');
//   @override
//   late final GeneratedColumn<String> bottleRef = GeneratedColumn<String>(
//       'bottleRef', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _bottleNumMeta =
//       const VerificationMeta('bottleNum');
//   @override
//   late final GeneratedColumn<String> bottleNum = GeneratedColumn<String>(
//       'bottleNum', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _phoneNumberMeta =
//       const VerificationMeta('phoneNumber');
//   @override
//   late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
//       'phoneNumber', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _detailsMeta =
//       const VerificationMeta('details');
//   @override
//   late final GeneratedColumn<String> details = GeneratedColumn<String>(
//       'details', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _personalTastingNoteMeta =
//       const VerificationMeta('personalTastingNote');
//   @override
//   late final GeneratedColumn<String> personalTastingNote =
//       GeneratedColumn<String>('personalTastingNote', aliasedName, false,
//           type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _otherTastingNotesMeta =
//       const VerificationMeta('otherTastingNotes');
//   @override
//   late final GeneratedColumn<String> otherTastingNotes =
//       GeneratedColumn<String>('otherTastingNotes', aliasedName, false,
//           type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _historyMeta =
//       const VerificationMeta('history');
//   @override
//   late final GeneratedColumn<String> history = GeneratedColumn<String>(
//       'history', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _collectionMeta =
//       const VerificationMeta('collection');
//   @override
//   late final GeneratedColumn<String> collection = GeneratedColumn<String>(
//       'collection', aliasedName, false,
//       type: DriftSqlType.string, requiredDuringInsert: true);
//   static const VerificationMeta _openedMeta = const VerificationMeta('opened');
//   @override
//   late final GeneratedColumn<bool> opened = GeneratedColumn<bool>(
//       'opened', aliasedName, false,
//       type: DriftSqlType.bool,
//       requiredDuringInsert: true,
//       defaultConstraints:
//           GeneratedColumn.constraintIsAlways('CHECK ("opened" IN (0, 1))'));
//   @override
//   List<GeneratedColumn> get $columns => [
//         id,
//         bottleName,
//         bottleImage,
//         bottleProdYear,
//         bottleRef,
//         bottleNum,
//         phoneNumber,
//         details,
//         personalTastingNote,
//         otherTastingNotes,
//         history,
//         collection,
//         opened
//       ];
//   @override
//   String get aliasedName => _alias ?? actualTableName;
//   @override
//   String get actualTableName => $name;
//   static const String $name = 'collection_list_table';
//   @override
//   VerificationContext validateIntegrity(
//       Insertable<collectionListTable> instance,
//       {bool isInserting = false}) {
//     final context = VerificationContext();
//     final data = instance.toColumns(true);
//     if (data.containsKey('id')) {
//       context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
//     } else if (isInserting) {
//       context.missing(_idMeta);
//     }
//     if (data.containsKey('bottleName')) {
//       context.handle(
//           _bottleNameMeta,
//           bottleName.isAcceptableOrUnknown(
//               data['bottleName']!, _bottleNameMeta));
//     } else if (isInserting) {
//       context.missing(_bottleNameMeta);
//     }
//     if (data.containsKey('bottleImage')) {
//       context.handle(
//           _bottleImageMeta,
//           bottleImage.isAcceptableOrUnknown(
//               data['bottleImage']!, _bottleImageMeta));
//     } else if (isInserting) {
//       context.missing(_bottleImageMeta);
//     }
//     if (data.containsKey('bottleProdYear')) {
//       context.handle(
//           _bottleProdYearMeta,
//           bottleProdYear.isAcceptableOrUnknown(
//               data['bottleProdYear']!, _bottleProdYearMeta));
//     } else if (isInserting) {
//       context.missing(_bottleProdYearMeta);
//     }
//     if (data.containsKey('bottleRef')) {
//       context.handle(_bottleRefMeta,
//           bottleRef.isAcceptableOrUnknown(data['bottleRef']!, _bottleRefMeta));
//     } else if (isInserting) {
//       context.missing(_bottleRefMeta);
//     }
//     if (data.containsKey('bottleNum')) {
//       context.handle(_bottleNumMeta,
//           bottleNum.isAcceptableOrUnknown(data['bottleNum']!, _bottleNumMeta));
//     } else if (isInserting) {
//       context.missing(_bottleNumMeta);
//     }
//     if (data.containsKey('phoneNumber')) {
//       context.handle(
//           _phoneNumberMeta,
//           phoneNumber.isAcceptableOrUnknown(
//               data['phoneNumber']!, _phoneNumberMeta));
//     } else if (isInserting) {
//       context.missing(_phoneNumberMeta);
//     }
//     if (data.containsKey('details')) {
//       context.handle(_detailsMeta,
//           details.isAcceptableOrUnknown(data['details']!, _detailsMeta));
//     } else if (isInserting) {
//       context.missing(_detailsMeta);
//     }
//     if (data.containsKey('personalTastingNote')) {
//       context.handle(
//           _personalTastingNoteMeta,
//           personalTastingNote.isAcceptableOrUnknown(
//               data['personalTastingNote']!, _personalTastingNoteMeta));
//     } else if (isInserting) {
//       context.missing(_personalTastingNoteMeta);
//     }
//     if (data.containsKey('otherTastingNotes')) {
//       context.handle(
//           _otherTastingNotesMeta,
//           otherTastingNotes.isAcceptableOrUnknown(
//               data['otherTastingNotes']!, _otherTastingNotesMeta));
//     } else if (isInserting) {
//       context.missing(_otherTastingNotesMeta);
//     }
//     if (data.containsKey('history')) {
//       context.handle(_historyMeta,
//           history.isAcceptableOrUnknown(data['history']!, _historyMeta));
//     } else if (isInserting) {
//       context.missing(_historyMeta);
//     }
//     if (data.containsKey('collection')) {
//       context.handle(
//           _collectionMeta,
//           collection.isAcceptableOrUnknown(
//               data['collection']!, _collectionMeta));
//     } else if (isInserting) {
//       context.missing(_collectionMeta);
//     }
//     if (data.containsKey('opened')) {
//       context.handle(_openedMeta,
//           opened.isAcceptableOrUnknown(data['opened']!, _openedMeta));
//     } else if (isInserting) {
//       context.missing(_openedMeta);
//     }
//     return context;
//   }
//
//   @override
//   Set<GeneratedColumn> get $primaryKey => {id};
//   @override
//   collectionListTable map(Map<String, dynamic> data, {String? tablePrefix}) {
//     final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
//     return collectionListTable(
//       id: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
//       bottleName: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}bottleName'])!,
//       bottleImage: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}bottleImage'])!,
//       bottleProdYear: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}bottleProdYear'])!,
//       bottleRef: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}bottleRef'])!,
//       bottleNum: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}bottleNum'])!,
//       phoneNumber: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}phoneNumber'])!,
//       details: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}details'])!,
//       personalTastingNote: attachedDatabase.typeMapping.read(
//           DriftSqlType.string, data['${effectivePrefix}personalTastingNote'])!,
//       otherTastingNotes: attachedDatabase.typeMapping.read(
//           DriftSqlType.string, data['${effectivePrefix}otherTastingNotes'])!,
//       history: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}history'])!,
//       collection: attachedDatabase.typeMapping
//           .read(DriftSqlType.string, data['${effectivePrefix}collection'])!,
//       opened: attachedDatabase.typeMapping
//           .read(DriftSqlType.bool, data['${effectivePrefix}opened'])!,
//     );
//   }
//
//   @override
//   $CollectionListTableTable createAlias(String alias) {
//     return $CollectionListTableTable(attachedDatabase, alias);
//   }
// }
//
// class collectionListTable extends DataClass
//     implements Insertable<collectionListTable> {
//   final String id;
//   final String bottleName;
//   final String bottleImage;
//   final String bottleProdYear;
//   final String bottleRef;
//   final String bottleNum;
//   final String phoneNumber;
//   final String details;
//   final String personalTastingNote;
//   final String otherTastingNotes;
//   final String history;
//   final String collection;
//   final bool opened;
//   const collectionListTable(
//       {required this.id,
//       required this.bottleName,
//       required this.bottleImage,
//       required this.bottleProdYear,
//       required this.bottleRef,
//       required this.bottleNum,
//       required this.phoneNumber,
//       required this.details,
//       required this.personalTastingNote,
//       required this.otherTastingNotes,
//       required this.history,
//       required this.collection,
//       required this.opened});
//   @override
//   Map<String, Expression> toColumns(bool nullToAbsent) {
//     final map = <String, Expression>{};
//     map['id'] = Variable<String>(id);
//     map['bottleName'] = Variable<String>(bottleName);
//     map['bottleImage'] = Variable<String>(bottleImage);
//     map['bottleProdYear'] = Variable<String>(bottleProdYear);
//     map['bottleRef'] = Variable<String>(bottleRef);
//     map['bottleNum'] = Variable<String>(bottleNum);
//     map['phoneNumber'] = Variable<String>(phoneNumber);
//     map['details'] = Variable<String>(details);
//     map['personalTastingNote'] = Variable<String>(personalTastingNote);
//     map['otherTastingNotes'] = Variable<String>(otherTastingNotes);
//     map['history'] = Variable<String>(history);
//     map['collection'] = Variable<String>(collection);
//     map['opened'] = Variable<bool>(opened);
//     return map;
//   }
//
//   CollectionListTableCompanion toCompanion(bool nullToAbsent) {
//     return CollectionListTableCompanion(
//       id: Value(id),
//       bottleName: Value(bottleName),
//       bottleImage: Value(bottleImage),
//       bottleProdYear: Value(bottleProdYear),
//       bottleRef: Value(bottleRef),
//       bottleNum: Value(bottleNum),
//       phoneNumber: Value(phoneNumber),
//       details: Value(details),
//       personalTastingNote: Value(personalTastingNote),
//       otherTastingNotes: Value(otherTastingNotes),
//       history: Value(history),
//       collection: Value(collection),
//       opened: Value(opened),
//     );
//   }
//
//   factory collectionListTable.fromJson(Map<String, dynamic> json,
//       {ValueSerializer? serializer}) {
//     serializer ??= driftRuntimeOptions.defaultSerializer;
//     return collectionListTable(
//       id: serializer.fromJson<String>(json['id']),
//       bottleName: serializer.fromJson<String>(json['bottleName']),
//       bottleImage: serializer.fromJson<String>(json['bottleImage']),
//       bottleProdYear: serializer.fromJson<String>(json['bottleProdYear']),
//       bottleRef: serializer.fromJson<String>(json['bottleRef']),
//       bottleNum: serializer.fromJson<String>(json['bottleNum']),
//       phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
//       details: serializer.fromJson<String>(json['details']),
//       personalTastingNote:
//           serializer.fromJson<String>(json['personalTastingNote']),
//       otherTastingNotes: serializer.fromJson<String>(json['otherTastingNotes']),
//       history: serializer.fromJson<String>(json['history']),
//       collection: serializer.fromJson<String>(json['collection']),
//       opened: serializer.fromJson<bool>(json['opened']),
//     );
//   }
//   @override
//   Map<String, dynamic> toJson({ValueSerializer? serializer}) {
//     serializer ??= driftRuntimeOptions.defaultSerializer;
//     return <String, dynamic>{
//       'id': serializer.toJson<String>(id),
//       'bottleName': serializer.toJson<String>(bottleName),
//       'bottleImage': serializer.toJson<String>(bottleImage),
//       'bottleProdYear': serializer.toJson<String>(bottleProdYear),
//       'bottleRef': serializer.toJson<String>(bottleRef),
//       'bottleNum': serializer.toJson<String>(bottleNum),
//       'phoneNumber': serializer.toJson<String>(phoneNumber),
//       'details': serializer.toJson<String>(details),
//       'personalTastingNote': serializer.toJson<String>(personalTastingNote),
//       'otherTastingNotes': serializer.toJson<String>(otherTastingNotes),
//       'history': serializer.toJson<String>(history),
//       'collection': serializer.toJson<String>(collection),
//       'opened': serializer.toJson<bool>(opened),
//     };
//   }
//
//   collectionListTable copyWith(
//           {String? id,
//           String? bottleName,
//           String? bottleImage,
//           String? bottleProdYear,
//           String? bottleRef,
//           String? bottleNum,
//           String? phoneNumber,
//           String? details,
//           String? personalTastingNote,
//           String? otherTastingNotes,
//           String? history,
//           String? collection,
//           bool? opened}) =>
//       collectionListTable(
//         id: id ?? this.id,
//         bottleName: bottleName ?? this.bottleName,
//         bottleImage: bottleImage ?? this.bottleImage,
//         bottleProdYear: bottleProdYear ?? this.bottleProdYear,
//         bottleRef: bottleRef ?? this.bottleRef,
//         bottleNum: bottleNum ?? this.bottleNum,
//         phoneNumber: phoneNumber ?? this.phoneNumber,
//         details: details ?? this.details,
//         personalTastingNote: personalTastingNote ?? this.personalTastingNote,
//         otherTastingNotes: otherTastingNotes ?? this.otherTastingNotes,
//         history: history ?? this.history,
//         collection: collection ?? this.collection,
//         opened: opened ?? this.opened,
//       );
//   collectionListTable copyWithCompanion(CollectionListTableCompanion data) {
//     return collectionListTable(
//       id: data.id.present ? data.id.value : this.id,
//       bottleName:
//           data.bottleName.present ? data.bottleName.value : this.bottleName,
//       bottleImage:
//           data.bottleImage.present ? data.bottleImage.value : this.bottleImage,
//       bottleProdYear: data.bottleProdYear.present
//           ? data.bottleProdYear.value
//           : this.bottleProdYear,
//       bottleRef: data.bottleRef.present ? data.bottleRef.value : this.bottleRef,
//       bottleNum: data.bottleNum.present ? data.bottleNum.value : this.bottleNum,
//       phoneNumber:
//           data.phoneNumber.present ? data.phoneNumber.value : this.phoneNumber,
//       details: data.details.present ? data.details.value : this.details,
//       personalTastingNote: data.personalTastingNote.present
//           ? data.personalTastingNote.value
//           : this.personalTastingNote,
//       otherTastingNotes: data.otherTastingNotes.present
//           ? data.otherTastingNotes.value
//           : this.otherTastingNotes,
//       history: data.history.present ? data.history.value : this.history,
//       collection:
//           data.collection.present ? data.collection.value : this.collection,
//       opened: data.opened.present ? data.opened.value : this.opened,
//     );
//   }
//
//   @override
//   String toString() {
//     return (StringBuffer('collectionListTable(')
//           ..write('id: $id, ')
//           ..write('bottleName: $bottleName, ')
//           ..write('bottleImage: $bottleImage, ')
//           ..write('bottleProdYear: $bottleProdYear, ')
//           ..write('bottleRef: $bottleRef, ')
//           ..write('bottleNum: $bottleNum, ')
//           ..write('phoneNumber: $phoneNumber, ')
//           ..write('details: $details, ')
//           ..write('personalTastingNote: $personalTastingNote, ')
//           ..write('otherTastingNotes: $otherTastingNotes, ')
//           ..write('history: $history, ')
//           ..write('collection: $collection, ')
//           ..write('opened: $opened')
//           ..write(')'))
//         .toString();
//   }
//
//   @override
//   int get hashCode => Object.hash(
//       id,
//       bottleName,
//       bottleImage,
//       bottleProdYear,
//       bottleRef,
//       bottleNum,
//       phoneNumber,
//       details,
//       personalTastingNote,
//       otherTastingNotes,
//       history,
//       collection,
//       opened);
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       (other is collectionListTable &&
//           other.id == this.id &&
//           other.bottleName == this.bottleName &&
//           other.bottleImage == this.bottleImage &&
//           other.bottleProdYear == this.bottleProdYear &&
//           other.bottleRef == this.bottleRef &&
//           other.bottleNum == this.bottleNum &&
//           other.phoneNumber == this.phoneNumber &&
//           other.details == this.details &&
//           other.personalTastingNote == this.personalTastingNote &&
//           other.otherTastingNotes == this.otherTastingNotes &&
//           other.history == this.history &&
//           other.collection == this.collection &&
//           other.opened == this.opened);
// }
//
// class CollectionListTableCompanion
//     extends UpdateCompanion<collectionListTable> {
//   final Value<String> id;
//   final Value<String> bottleName;
//   final Value<String> bottleImage;
//   final Value<String> bottleProdYear;
//   final Value<String> bottleRef;
//   final Value<String> bottleNum;
//   final Value<String> phoneNumber;
//   final Value<String> details;
//   final Value<String> personalTastingNote;
//   final Value<String> otherTastingNotes;
//   final Value<String> history;
//   final Value<String> collection;
//   final Value<bool> opened;
//   final Value<int> rowid;
//   const CollectionListTableCompanion({
//     this.id = const Value.absent(),
//     this.bottleName = const Value.absent(),
//     this.bottleImage = const Value.absent(),
//     this.bottleProdYear = const Value.absent(),
//     this.bottleRef = const Value.absent(),
//     this.bottleNum = const Value.absent(),
//     this.phoneNumber = const Value.absent(),
//     this.details = const Value.absent(),
//     this.personalTastingNote = const Value.absent(),
//     this.otherTastingNotes = const Value.absent(),
//     this.history = const Value.absent(),
//     this.collection = const Value.absent(),
//     this.opened = const Value.absent(),
//     this.rowid = const Value.absent(),
//   });
//   CollectionListTableCompanion.insert({
//     required String id,
//     required String bottleName,
//     required String bottleImage,
//     required String bottleProdYear,
//     required String bottleRef,
//     required String bottleNum,
//     required String phoneNumber,
//     required String details,
//     required String personalTastingNote,
//     required String otherTastingNotes,
//     required String history,
//     required String collection,
//     required bool opened,
//     this.rowid = const Value.absent(),
//   })  : id = Value(id),
//         bottleName = Value(bottleName),
//         bottleImage = Value(bottleImage),
//         bottleProdYear = Value(bottleProdYear),
//         bottleRef = Value(bottleRef),
//         bottleNum = Value(bottleNum),
//         phoneNumber = Value(phoneNumber),
//         details = Value(details),
//         personalTastingNote = Value(personalTastingNote),
//         otherTastingNotes = Value(otherTastingNotes),
//         history = Value(history),
//         collection = Value(collection),
//         opened = Value(opened);
//   static Insertable<collectionListTable> custom({
//     Expression<String>? id,
//     Expression<String>? bottleName,
//     Expression<String>? bottleImage,
//     Expression<String>? bottleProdYear,
//     Expression<String>? bottleRef,
//     Expression<String>? bottleNum,
//     Expression<String>? phoneNumber,
//     Expression<String>? details,
//     Expression<String>? personalTastingNote,
//     Expression<String>? otherTastingNotes,
//     Expression<String>? history,
//     Expression<String>? collection,
//     Expression<bool>? opened,
//     Expression<int>? rowid,
//   }) {
//     return RawValuesInsertable({
//       if (id != null) 'id': id,
//       if (bottleName != null) 'bottleName': bottleName,
//       if (bottleImage != null) 'bottleImage': bottleImage,
//       if (bottleProdYear != null) 'bottleProdYear': bottleProdYear,
//       if (bottleRef != null) 'bottleRef': bottleRef,
//       if (bottleNum != null) 'bottleNum': bottleNum,
//       if (phoneNumber != null) 'phoneNumber': phoneNumber,
//       if (details != null) 'details': details,
//       if (personalTastingNote != null)
//         'personalTastingNote': personalTastingNote,
//       if (otherTastingNotes != null) 'otherTastingNotes': otherTastingNotes,
//       if (history != null) 'history': history,
//       if (collection != null) 'collection': collection,
//       if (opened != null) 'opened': opened,
//       if (rowid != null) 'rowid': rowid,
//     });
//   }
//
//   CollectionListTableCompanion copyWith(
//       {Value<String>? id,
//       Value<String>? bottleName,
//       Value<String>? bottleImage,
//       Value<String>? bottleProdYear,
//       Value<String>? bottleRef,
//       Value<String>? bottleNum,
//       Value<String>? phoneNumber,
//       Value<String>? details,
//       Value<String>? personalTastingNote,
//       Value<String>? otherTastingNotes,
//       Value<String>? history,
//       Value<String>? collection,
//       Value<bool>? opened,
//       Value<int>? rowid}) {
//     return CollectionListTableCompanion(
//       id: id ?? this.id,
//       bottleName: bottleName ?? this.bottleName,
//       bottleImage: bottleImage ?? this.bottleImage,
//       bottleProdYear: bottleProdYear ?? this.bottleProdYear,
//       bottleRef: bottleRef ?? this.bottleRef,
//       bottleNum: bottleNum ?? this.bottleNum,
//       phoneNumber: phoneNumber ?? this.phoneNumber,
//       details: details ?? this.details,
//       personalTastingNote: personalTastingNote ?? this.personalTastingNote,
//       otherTastingNotes: otherTastingNotes ?? this.otherTastingNotes,
//       history: history ?? this.history,
//       collection: collection ?? this.collection,
//       opened: opened ?? this.opened,
//       rowid: rowid ?? this.rowid,
//     );
//   }
//
//   @override
//   Map<String, Expression> toColumns(bool nullToAbsent) {
//     final map = <String, Expression>{};
//     if (id.present) {
//       map['id'] = Variable<String>(id.value);
//     }
//     if (bottleName.present) {
//       map['bottleName'] = Variable<String>(bottleName.value);
//     }
//     if (bottleImage.present) {
//       map['bottleImage'] = Variable<String>(bottleImage.value);
//     }
//     if (bottleProdYear.present) {
//       map['bottleProdYear'] = Variable<String>(bottleProdYear.value);
//     }
//     if (bottleRef.present) {
//       map['bottleRef'] = Variable<String>(bottleRef.value);
//     }
//     if (bottleNum.present) {
//       map['bottleNum'] = Variable<String>(bottleNum.value);
//     }
//     if (phoneNumber.present) {
//       map['phoneNumber'] = Variable<String>(phoneNumber.value);
//     }
//     if (details.present) {
//       map['details'] = Variable<String>(details.value);
//     }
//     if (personalTastingNote.present) {
//       map['personalTastingNote'] = Variable<String>(personalTastingNote.value);
//     }
//     if (otherTastingNotes.present) {
//       map['otherTastingNotes'] = Variable<String>(otherTastingNotes.value);
//     }
//     if (history.present) {
//       map['history'] = Variable<String>(history.value);
//     }
//     if (collection.present) {
//       map['collection'] = Variable<String>(collection.value);
//     }
//     if (opened.present) {
//       map['opened'] = Variable<bool>(opened.value);
//     }
//     if (rowid.present) {
//       map['rowid'] = Variable<int>(rowid.value);
//     }
//     return map;
//   }
//
//   @override
//   String toString() {
//     return (StringBuffer('CollectionListTableCompanion(')
//           ..write('id: $id, ')
//           ..write('bottleName: $bottleName, ')
//           ..write('bottleImage: $bottleImage, ')
//           ..write('bottleProdYear: $bottleProdYear, ')
//           ..write('bottleRef: $bottleRef, ')
//           ..write('bottleNum: $bottleNum, ')
//           ..write('phoneNumber: $phoneNumber, ')
//           ..write('details: $details, ')
//           ..write('personalTastingNote: $personalTastingNote, ')
//           ..write('otherTastingNotes: $otherTastingNotes, ')
//           ..write('history: $history, ')
//           ..write('collection: $collection, ')
//           ..write('opened: $opened, ')
//           ..write('rowid: $rowid')
//           ..write(')'))
//         .toString();
//   }
// }
//
// abstract class _$Database extends GeneratedDatabase {
//   _$Database(QueryExecutor e) : super(e);
//   $DatabaseManager get managers => $DatabaseManager(this);
//   late final $CollectionListTableTable collectionListTable =
//       $CollectionListTableTable(this);
//   @override
//   Iterable<TableInfo<Table, Object?>> get allTables =>
//       allSchemaEntities.whereType<TableInfo<Table, Object?>>();
//   @override
//   List<DatabaseSchemaEntity> get allSchemaEntities => [collectionListTable];
// }
//
// typedef $$CollectionListTableTableCreateCompanionBuilder
//     = CollectionListTableCompanion Function({
//   required String id,
//   required String bottleName,
//   required String bottleImage,
//   required String bottleProdYear,
//   required String bottleRef,
//   required String bottleNum,
//   required String phoneNumber,
//   required String details,
//   required String personalTastingNote,
//   required String otherTastingNotes,
//   required String history,
//   required String collection,
//   required bool opened,
//   Value<int> rowid,
// });
// typedef $$CollectionListTableTableUpdateCompanionBuilder
//     = CollectionListTableCompanion Function({
//   Value<String> id,
//   Value<String> bottleName,
//   Value<String> bottleImage,
//   Value<String> bottleProdYear,
//   Value<String> bottleRef,
//   Value<String> bottleNum,
//   Value<String> phoneNumber,
//   Value<String> details,
//   Value<String> personalTastingNote,
//   Value<String> otherTastingNotes,
//   Value<String> history,
//   Value<String> collection,
//   Value<bool> opened,
//   Value<int> rowid,
// });
//
// class $$CollectionListTableTableFilterComposer
//     extends Composer<_$Database, $CollectionListTableTable> {
//   $$CollectionListTableTableFilterComposer({
//     required super.$db,
//     required super.$table,
//     super.joinBuilder,
//     super.$addJoinBuilderToRootComposer,
//     super.$removeJoinBuilderFromRootComposer,
//   });
//   ColumnFilters<String> get id => $composableBuilder(
//       column: $table.id, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get bottleName => $composableBuilder(
//       column: $table.bottleName, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get bottleImage => $composableBuilder(
//       column: $table.bottleImage, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get bottleProdYear => $composableBuilder(
//       column: $table.bottleProdYear,
//       builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get bottleRef => $composableBuilder(
//       column: $table.bottleRef, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get bottleNum => $composableBuilder(
//       column: $table.bottleNum, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get phoneNumber => $composableBuilder(
//       column: $table.phoneNumber, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get details => $composableBuilder(
//       column: $table.details, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get personalTastingNote => $composableBuilder(
//       column: $table.personalTastingNote,
//       builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get otherTastingNotes => $composableBuilder(
//       column: $table.otherTastingNotes,
//       builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get history => $composableBuilder(
//       column: $table.history, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<String> get collection => $composableBuilder(
//       column: $table.collection, builder: (column) => ColumnFilters(column));
//
//   ColumnFilters<bool> get opened => $composableBuilder(
//       column: $table.opened, builder: (column) => ColumnFilters(column));
// }
//
// class $$CollectionListTableTableOrderingComposer
//     extends Composer<_$Database, $CollectionListTableTable> {
//   $$CollectionListTableTableOrderingComposer({
//     required super.$db,
//     required super.$table,
//     super.joinBuilder,
//     super.$addJoinBuilderToRootComposer,
//     super.$removeJoinBuilderFromRootComposer,
//   });
//   ColumnOrderings<String> get id => $composableBuilder(
//       column: $table.id, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get bottleName => $composableBuilder(
//       column: $table.bottleName, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get bottleImage => $composableBuilder(
//       column: $table.bottleImage, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get bottleProdYear => $composableBuilder(
//       column: $table.bottleProdYear,
//       builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get bottleRef => $composableBuilder(
//       column: $table.bottleRef, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get bottleNum => $composableBuilder(
//       column: $table.bottleNum, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get phoneNumber => $composableBuilder(
//       column: $table.phoneNumber, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get details => $composableBuilder(
//       column: $table.details, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get personalTastingNote => $composableBuilder(
//       column: $table.personalTastingNote,
//       builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get otherTastingNotes => $composableBuilder(
//       column: $table.otherTastingNotes,
//       builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get history => $composableBuilder(
//       column: $table.history, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<String> get collection => $composableBuilder(
//       column: $table.collection, builder: (column) => ColumnOrderings(column));
//
//   ColumnOrderings<bool> get opened => $composableBuilder(
//       column: $table.opened, builder: (column) => ColumnOrderings(column));
// }
//
// class $$CollectionListTableTableAnnotationComposer
//     extends Composer<_$Database, $CollectionListTableTable> {
//   $$CollectionListTableTableAnnotationComposer({
//     required super.$db,
//     required super.$table,
//     super.joinBuilder,
//     super.$addJoinBuilderToRootComposer,
//     super.$removeJoinBuilderFromRootComposer,
//   });
//   GeneratedColumn<String> get id =>
//       $composableBuilder(column: $table.id, builder: (column) => column);
//
//   GeneratedColumn<String> get bottleName => $composableBuilder(
//       column: $table.bottleName, builder: (column) => column);
//
//   GeneratedColumn<String> get bottleImage => $composableBuilder(
//       column: $table.bottleImage, builder: (column) => column);
//
//   GeneratedColumn<String> get bottleProdYear => $composableBuilder(
//       column: $table.bottleProdYear, builder: (column) => column);
//
//   GeneratedColumn<String> get bottleRef =>
//       $composableBuilder(column: $table.bottleRef, builder: (column) => column);
//
//   GeneratedColumn<String> get bottleNum =>
//       $composableBuilder(column: $table.bottleNum, builder: (column) => column);
//
//   GeneratedColumn<String> get phoneNumber => $composableBuilder(
//       column: $table.phoneNumber, builder: (column) => column);
//
//   GeneratedColumn<String> get details =>
//       $composableBuilder(column: $table.details, builder: (column) => column);
//
//   GeneratedColumn<String> get personalTastingNote => $composableBuilder(
//       column: $table.personalTastingNote, builder: (column) => column);
//
//   GeneratedColumn<String> get otherTastingNotes => $composableBuilder(
//       column: $table.otherTastingNotes, builder: (column) => column);
//
//   GeneratedColumn<String> get history =>
//       $composableBuilder(column: $table.history, builder: (column) => column);
//
//   GeneratedColumn<String> get collection => $composableBuilder(
//       column: $table.collection, builder: (column) => column);
//
//   GeneratedColumn<bool> get opened =>
//       $composableBuilder(column: $table.opened, builder: (column) => column);
// }
//
// class $$CollectionListTableTableTableManager extends RootTableManager<
//     _$Database,
//     $CollectionListTableTable,
//     collectionListTable,
//     $$CollectionListTableTableFilterComposer,
//     $$CollectionListTableTableOrderingComposer,
//     $$CollectionListTableTableAnnotationComposer,
//     $$CollectionListTableTableCreateCompanionBuilder,
//     $$CollectionListTableTableUpdateCompanionBuilder,
//     (
//       collectionListTable,
//       BaseReferences<_$Database, $CollectionListTableTable, collectionListTable>
//     ),
//     collectionListTable,
//     PrefetchHooks Function()> {
//   $$CollectionListTableTableTableManager(
//       _$Database db, $CollectionListTableTable table)
//       : super(TableManagerState(
//           db: db,
//           table: table,
//           createFilteringComposer: () =>
//               $$CollectionListTableTableFilterComposer($db: db, $table: table),
//           createOrderingComposer: () =>
//               $$CollectionListTableTableOrderingComposer(
//                   $db: db, $table: table),
//           createComputedFieldComposer: () =>
//               $$CollectionListTableTableAnnotationComposer(
//                   $db: db, $table: table),
//           updateCompanionCallback: ({
//             Value<String> id = const Value.absent(),
//             Value<String> bottleName = const Value.absent(),
//             Value<String> bottleImage = const Value.absent(),
//             Value<String> bottleProdYear = const Value.absent(),
//             Value<String> bottleRef = const Value.absent(),
//             Value<String> bottleNum = const Value.absent(),
//             Value<String> phoneNumber = const Value.absent(),
//             Value<String> details = const Value.absent(),
//             Value<String> personalTastingNote = const Value.absent(),
//             Value<String> otherTastingNotes = const Value.absent(),
//             Value<String> history = const Value.absent(),
//             Value<String> collection = const Value.absent(),
//             Value<bool> opened = const Value.absent(),
//             Value<int> rowid = const Value.absent(),
//           }) =>
//               CollectionListTableCompanion(
//             id: id,
//             bottleName: bottleName,
//             bottleImage: bottleImage,
//             bottleProdYear: bottleProdYear,
//             bottleRef: bottleRef,
//             bottleNum: bottleNum,
//             phoneNumber: phoneNumber,
//             details: details,
//             personalTastingNote: personalTastingNote,
//             otherTastingNotes: otherTastingNotes,
//             history: history,
//             collection: collection,
//             opened: opened,
//             rowid: rowid,
//           ),
//           createCompanionCallback: ({
//             required String id,
//             required String bottleName,
//             required String bottleImage,
//             required String bottleProdYear,
//             required String bottleRef,
//             required String bottleNum,
//             required String phoneNumber,
//             required String details,
//             required String personalTastingNote,
//             required String otherTastingNotes,
//             required String history,
//             required String collection,
//             required bool opened,
//             Value<int> rowid = const Value.absent(),
//           }) =>
//               CollectionListTableCompanion.insert(
//             id: id,
//             bottleName: bottleName,
//             bottleImage: bottleImage,
//             bottleProdYear: bottleProdYear,
//             bottleRef: bottleRef,
//             bottleNum: bottleNum,
//             phoneNumber: phoneNumber,
//             details: details,
//             personalTastingNote: personalTastingNote,
//             otherTastingNotes: otherTastingNotes,
//             history: history,
//             collection: collection,
//             opened: opened,
//             rowid: rowid,
//           ),
//           withReferenceMapper: (p0) => p0
//               .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
//               .toList(),
//           prefetchHooksCallback: null,
//         ));
// }
//
// typedef $$CollectionListTableTableProcessedTableManager = ProcessedTableManager<
//     _$Database,
//     $CollectionListTableTable,
//     collectionListTable,
//     $$CollectionListTableTableFilterComposer,
//     $$CollectionListTableTableOrderingComposer,
//     $$CollectionListTableTableAnnotationComposer,
//     $$CollectionListTableTableCreateCompanionBuilder,
//     $$CollectionListTableTableUpdateCompanionBuilder,
//     (
//       collectionListTable,
//       BaseReferences<_$Database, $CollectionListTableTable, collectionListTable>
//     ),
//     collectionListTable,
//     PrefetchHooks Function()>;
//
// class $DatabaseManager {
//   final _$Database _db;
//   $DatabaseManager(this._db);
//   $$CollectionListTableTableTableManager get collectionListTable =>
//       $$CollectionListTableTableTableManager(_db, _db.collectionListTable);
// }
