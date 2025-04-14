import 'package:xmpp_plugin_fork/ennums/xmpp_connection_state.dart';

class Utils {}

extension ConnectionStateToString on XmppConnectionState {
  String toConnectionName() {
    return this.toString().split('.').last;
  }
}
