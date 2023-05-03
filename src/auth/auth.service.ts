import { Injectable } from '@nestjs/common';

@Injectable()
export class AuthService {
 

  signin() {
    return { msg: 'I am sign in'};
  };

  signup() {
    return { msg: 'I am sign up'};
  };
}
