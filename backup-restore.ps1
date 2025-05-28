# backup-restore.ps1
$timestamp = Get-Date -Format "yyyyMMddHHmmss"
$backupFile = "C:\temp\pg_backup_$timestamp.dump"

# Dump from source DB
pg_dump -h localhost -p 5432 -U postgres -d postgres -F c -f $backupFile

# Restore to target DB
pg_restore -h localhost -p 5432 -U sonar -d my_db --clean --create $backupFile

Write-Output "Backup and restore completed. Dump saved at $backupFile"
