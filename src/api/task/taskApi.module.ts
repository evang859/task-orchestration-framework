import { Module } from '@nestjs/common';
import { TaskModule } from '../../core/task/task.module';
import { TaskController } from './task.controller';

@Module({
  imports: [TaskModule],
  controllers: [TaskController],
})
export class TaskApiModule {}
