## BOOTCAMP CALON PRAETORIAN 2021 - FINAL PROJECT
## Install App
1. git clone https://github.com/ndaruhes/BNCC-final-project-2021.git
2. cd BNCC-praetorian-bootcamp-final-project-2021 (or your own directory)
3. composer install
4. npm install

## Running App
1. Create Database, the name of database in the .env file (DB_DATABASE)
2. php artisan migrate:fresh or import the SQL
3. php artisan serve
4. php artisan storage:link
5. npm run watch

## Seeding The Database
1. php artisan db:seed --class=UserSeeder
2. php artisan db:seed --class=KategoriSeeder
3. php artisan db:seed --class=BarangSeeder

## App Features
1. MultiUser (Admin & Member)
2. Database Seeder