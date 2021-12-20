import 'package:fixnum/fixnum.dart';

import 'api/main.dart';

import 'package:grpc/grpc.dart';

final channel = ClientChannel(
  '0.0.0.0',
  port: 8080,
  options: ChannelOptions(
    credentials: const ChannelCredentials.insecure(),
  ),
);

final servicer = ServicerClient(
  channel,
  options: CallOptions(
    timeout: const Duration(seconds: 1),
  ),
);

void main(List<String> arguments) {
  servicer.testIt(Inp(
    first: -1, // число для теста
    second: Int64(-1), // второе число для теста
  ));
  print('messageGoneGood');
}
