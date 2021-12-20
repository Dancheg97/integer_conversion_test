///
//  Generated code. Do not modify.
//  source: bin/api/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Inp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Inp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'first', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'second', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Inp._() : super();
  factory Inp({
    $core.int? first,
    $fixnum.Int64? second,
  }) {
    final _result = create();
    if (first != null) {
      _result.first = first;
    }
    if (second != null) {
      _result.second = second;
    }
    return _result;
  }
  factory Inp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inp clone() => Inp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inp copyWith(void Function(Inp) updates) => super.copyWith((message) => updates(message as Inp)) as Inp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Inp create() => Inp._();
  Inp createEmptyInstance() => create();
  static $pb.PbList<Inp> createRepeated() => $pb.PbList<Inp>();
  @$core.pragma('dart2js:noInline')
  static Inp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inp>(create);
  static Inp? _defaultInstance;

  @$pb.TagNumber(3)
  $core.int get first => $_getIZ(0);
  @$pb.TagNumber(3)
  set first($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirst() => $_has(0);
  @$pb.TagNumber(3)
  void clearFirst() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get second => $_getI64(1);
  @$pb.TagNumber(4)
  set second($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasSecond() => $_has(1);
  @$pb.TagNumber(4)
  void clearSecond() => clearField(4);
}

