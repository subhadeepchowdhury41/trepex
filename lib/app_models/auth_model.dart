class Auth {
  final String uid;
  final String? accessToken;
  final String? refreshToken;

  Auth({required this.uid, this.accessToken, this.refreshToken});

  factory Auth.fromJson(Map<String, dynamic> data) {
    return Auth(
        uid: data['_id'],
        accessToken: data['access_token'],
        refreshToken: data['refresh_token']
    );
  }
}