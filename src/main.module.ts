import { Module } from '@nestjs/common';
import { TaskApiModule } from './api/task/taskApi.module';
import { TaskModule } from './core/task/task.module';

@Module({
  imports: [TaskApiModule, TaskModule],
})
export class MainModule {}
