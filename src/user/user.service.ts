import { Injectable } from '@nestjs/common';

// This should be a real class/interface representing a user entity
export type User = any;

@Injectable()
export class UserService {
  private readonly users = [

    {
      id: 1,
      mobile: '',
      email: 'm@gmail.com',
      password: '123456',
    },

    {
      id: 2,
      mobile: '905010628209',
      email: '',
      password: '123456',
    }
  ];

  async findOne(username: string): Promise<User | undefined> {

    var otp = this.users.find(user => user.email) ;

    if(otp.email !== ''){ 
      return this.users.find(user => user.email === username);
    } else {
      return this.users.find(user => user.mobile === username);
    }
  
  }
}