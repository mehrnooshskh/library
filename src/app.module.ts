import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [AuthModule,
    JwtModule.register({
      secret: 'your-secret-key',
      signOptions: { expiresIn: '1h' },
    })
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
