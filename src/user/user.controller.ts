import { Controller, Post } from '@nestjs/common';
import { UserService } from './user.service';

@Controller()
export class UserController {
  constructor(private readonly userService: UserService) {}

  //test user control
  @Post()
  getHello(): string {
   // return this.userService.getHello();
   return 'hello';
  }

}
