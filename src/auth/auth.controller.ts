import { Controller, Post } from '@nestjs/common';
import { AuthService } from './auth.service';

@Controller()
export class AuthController {
  constructor(private readonly authService: AuthService) {}

   
  @Post('auth/signin')
  signin(){
    return this.authService.signin();
  }

  @Post('auth/signup')
  signup(){
    return this.authService.signup();

  }
}
