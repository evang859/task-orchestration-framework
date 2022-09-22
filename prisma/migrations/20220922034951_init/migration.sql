-- CreateTable
CREATE TABLE "task" (
    "id" UUID NOT NULL,
    "request_url" TEXT NOT NULL,
    "success_callback_url" TEXT,
    "failure_callback_url" TEXT,
    "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,

    CONSTRAINT "task_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "task_attempt" (
    "id" UUID NOT NULL,
    "task_id" UUID NOT NULL,
    "response_status_code" TEXT NOT NULL,
    "response_body" TEXT NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,

    CONSTRAINT "task_attempt_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "task_attempt" ADD CONSTRAINT "task_attempt_task_id_fkey" FOREIGN KEY ("task_id") REFERENCES "task"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
