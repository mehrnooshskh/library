import { Injectable } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { Strategy, ExtractJwt } from 'passport-jwt';
import { AuthService } from './auth.service';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(private authService: AuthService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey: 'T4mExNknxbkRVTHtfHb6su0Q5zML4wcd',
    });
  }

  async validate(payload: any) {
    return { id: payload.sub, username: payload.userlogin, pass: payload.password }; 
  }
}