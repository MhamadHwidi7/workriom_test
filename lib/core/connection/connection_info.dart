import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:workiom_technical_test/core/enums/connection_status.dart';

abstract class ConnectionInfo {
  Future<bool> get isConnected;
  Stream<ConnectionStatus> get onStatusChange;
}

@LazySingleton(as: ConnectionInfo)
class ConnectionInfoImpl implements ConnectionInfo {
  ConnectionInfoImpl(this._conn);

  final InternetConnection _conn;

  @override
  Future<bool> get isConnected => _conn.hasInternetAccess;

  @override
  Stream<ConnectionStatus> get onStatusChange => _conn.onStatusChange.map(
    (status) => status == InternetStatus.connected
        ? ConnectionStatus.online
        : ConnectionStatus.offline,
  );
}
