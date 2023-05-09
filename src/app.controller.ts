import { Controller, Get, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';

@Controller()
export class AppController {
  @Get('protected')
  @UseGuards(AuthGuard('jwt'))
  getProtectedResource() {
    return 'Protected resource';
  }
}