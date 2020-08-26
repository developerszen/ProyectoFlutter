import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Session {
    final key = 'SESSION';

    final storage = new FlutterSecureStorage();

    set(String token) async {
        final data = {
            "access_token"  : token,
            "created_at"    : DateTime.now().toString()
        };
        await storage.write(key: key, value: jsonEncode(data));
    }

    get() async {
        final res = await storage.read(key: key);
        if (res != null) {
            return jsonDecode(res);
        }
        return null;
    }

    clear() async {
        await storage.deleteAll();
    }
}