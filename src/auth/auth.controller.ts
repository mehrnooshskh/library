import {
  Body,
  Controller,
  Get,
  HttpCode,
  HttpStatus,
  Post,
  Request,
  UseGuards
} from '@nestjs/common';
import { AuthGuard } from './auth.guard';
import { AuthService } from './auth.service';

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @HttpCode(HttpStatus.OK)
  @Post('login')
  signIn(@Body() signInDto: Record<string, any>) {

    if(signInDto.email !== ''){
      var username = signInDto.email;
    }else{
      var username = signInDto.mobile;
    }

    return this.authService.signIn(username,signInDto.password);
  }

  @UseGuards(AuthGuard)
  @Get('profile')
  getProfile(@Request() req) {
    return req.user;
  }
}