// User login with basic auth.

+(void)userLoginWithEmail:(NSString *)email
                 password:(NSString *)password {

    NSURL *url = [NSURL URLWithString:@"URL TO HIT GOES HERE"];

    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];

    [request setHTTPMethod:@"GET"];

    NSString *authStr = [NSString stringWithFormat:@"%@:%@", email, password];
    NSData *authData = [authStr dataUsingEncoding:kCFStringEncodingUTF8];
    NSString *authValue = [NSString stringWithFormat:@"Basic %@", [authData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength]];

    [request addValue:authValue forHTTPHeaderField:@"Authorization"];

    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration ephemeralSessionConfiguration]];

    [[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *rootObject = [[NSString alloc] initWithData:data encoding:kCFStringEncodingUTF8];

        NSLog(@"LOGIN RESPONSE: %@", response);
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
        NSLog(@"%@", rootObject);
    }] resume];
}
