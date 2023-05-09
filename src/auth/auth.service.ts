import { Injectable, UnauthorizedException } from '@nestjs/common';
import { UserService } from '../user/user.service';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class AuthService {
  constructor(
    private userService: UserService,
    private jwtService: JwtService
  ) {} 

  async signIn(username, pass) {
    const user = await this.userService.findOne(username);
    if (user?.password !== pass) {
      throw new UnauthorizedException();
    }

    if(user.email !== ''){
      var userlogin = user.email;
    }else{
      var userlogin = user.mobile;
    }

    const payload = { username: userlogin, sub: user.id }; 

    return {
      access_token: await this.jwtService.signAsync(payload),
    };
  }
}