/*
  Warnings:

  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `user`;

-- CreateTable
CREATE TABLE `admin_user` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `first_name` VARCHAR(191) NULL,
    `last_name` VARCHAR(191) NULL,
    `mobile` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `otp_type` ENUM('mobile', 'email') NOT NULL DEFAULT 'mobile',
    `attemp` INTEGER NOT NULL,
    `role_id` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `status` ENUM('active', 'deactive', 'disabled', 'deleted') NOT NULL DEFAULT 'active',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
