///
//  Generated code. Do not modify.
//  source: bin/api/api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'api.pb.dart' as $0;
export 'api.pb.dart';

class ServicerClient extends $grpc.Client {
  static final _$testIt = $grpc.ClientMethod<$0.Inp, $0.Inp>(
      '/api.Servicer/TestIt',
      ($0.Inp value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Inp.fromBuffer(value));

  ServicerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Inp> testIt($0.Inp request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$testIt, request, options: options);
  }
}

abstract class ServicerServiceBase extends $grpc.Service {
  $core.String get $name => 'api.Servicer';

  ServicerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Inp, $0.Inp>(
        'TestIt',
        testIt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Inp.fromBuffer(value),
        ($0.Inp value) => value.writeToBuffer()));
  }

  $async.Future<$0.Inp> testIt_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Inp> request) async {
    return testIt(call, await request);
  }

  $async.Future<$0.Inp> testIt($grpc.ServiceCall call, $0.Inp request);
}
