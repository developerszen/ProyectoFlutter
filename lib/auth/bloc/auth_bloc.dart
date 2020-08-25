import 'dart:convert';
import 'package:book_app/auth/bloc/session_bloc.dart';
import 'package:book_app/repository/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthBloc {
    final urlHost = '${ApiRepository.apiHost}';
    final session = Session();

    Future<bool> login (BuildContext context,{
        @required String email,
        @required String password,
    }) async {
        try {
            final url = '$urlHost/login/';
            final res = await http.post(
                url,
                headers: {
                    'Accept'        : 'application/json'
                },
                body: {
                    'email'     : email,
                    'password'  : password,
                }
            );

            final parsed = jsonDecode(res.body);

            if(res.statusCode == 200){
                final token = parsed['token'] as String;
                await session.set(token);
                return true;
            }
            return false;

        } catch (e) {
            print('Error: $e');
            return false;
        }
    }
}