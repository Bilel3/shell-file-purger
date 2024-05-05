# to make it a CRON:

Save the script and make it executable:

```bash
chmod +x file_cleanup.sh
```

Set up a cron job:
Run crontab -e to edit your user's crontab, and add the following lines:

```bash
0 0 * * 0 /path/to/file_cleanup.sh
```
This cron job will execute the file_cleanup.sh script every Sunday at midnight (0 minutes past midnight, 0 hours, on Sunday).

Remember to replace /path/to/file_cleanup.sh with the actual path to your script file.

This setup will handle the deletion of files according to the specified criteria (weekly and monthly) in the parent directory. Make sure to test the script and cron job in a safe environment before deploying it to production.
