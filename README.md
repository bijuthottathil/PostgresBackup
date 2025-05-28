# postgresbackup

21 Sonarqube related tables are available in Postgres DB setup in local windows machine

![image](https://github.com/user-attachments/assets/14d2f016-6419-42db-b7bd-794a6b77e66f)

1. Add PostgreSQL to PATH    (C:\Program Files\PostgreSQL\17\bin)
2. ![image](https://github.com/user-attachments/assets/05253eab-7e58-4c65-80ac-98ac4a4fdb29)
3. ![image](https://github.com/user-attachments/assets/9d854bd0-4246-4c7b-96de-2269ec30d0ce)
4. Use Pg_dump command to download DB ,  pg_dump -U postgres -h localhost -F c -b -v -f "C:\backup\mydb.backup" postgres
5. ![image](https://github.com/user-attachments/assets/a218b0c1-2905-4f0c-b4f1-b2e680794850)
6. I have created a new postgresDB called Sonarqubebackup to restore this data
7. created a new user sonar with password "sonar" ![image](https://github.com/user-attachments/assets/0736ca33-6f8f-499b-a692-9966026cc681)

8. To restore backup data in sonarqubebackup database, I used   "pg_restore -U sonar -h localhost -d sonarqubebackup -v "C:\backup\mydb.backup""

9. Executed pg_restore command ![image](https://github.com/user-attachments/assets/b09d4a3c-e946-40df-8b4b-f6e9230cc4f7)

10. Database is restored in new DB![image](https://github.com/user-attachments/assets/de6a5850-e6e6-4000-bf6d-dc03fb60f8c3)
