-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NULL,
    `lastname` VARCHAR(191) NULL,
    `userName` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `mobile` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `createDate` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updateDate` DATETIME(3) NOT NULL,
    `status` ENUM('published', 'unpublished') NOT NULL DEFAULT 'published',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
