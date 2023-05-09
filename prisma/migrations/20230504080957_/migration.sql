/*
  Warnings:

  - You are about to drop the column `lastname` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `user` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `lastname`,
    DROP COLUMN `name`,
    ADD COLUMN `firstName` VARCHAR(191) NULL,
    ADD COLUMN `lastName` VARCHAR(191) NULL;
