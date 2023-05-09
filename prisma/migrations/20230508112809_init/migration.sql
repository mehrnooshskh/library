/*
  Warnings:

  - You are about to drop the column `createDate` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `firstName` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `updateDate` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `userName` on the `user` table. All the data in the column will be lost.
  - You are about to alter the column `status` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(0))` to `Enum(EnumId(1))`.
  - Added the required column `attemp` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_at` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `role_id` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `createDate`,
    DROP COLUMN `firstName`,
    DROP COLUMN `lastName`,
    DROP COLUMN `updateDate`,
    DROP COLUMN `userName`,
    ADD COLUMN `attemp` INTEGER NOT NULL,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL,
    ADD COLUMN `first_name` VARCHAR(191) NULL,
    ADD COLUMN `last_name` VARCHAR(191) NULL,
    ADD COLUMN `otp_type` ENUM('mobile', 'email') NOT NULL DEFAULT 'mobile',
    ADD COLUMN `role_id` INTEGER NOT NULL,
    ADD COLUMN `updated_at` DATETIME(3) NOT NULL,
    MODIFY `status` ENUM('active', 'deactive', 'disabled', 'deleted') NOT NULL DEFAULT 'active';
