# Job Monitoring
This workflow retrieves the detail of jobs in status `queued` and `running` every 5 minutes. Then, store the result into TD. It helps you to understand workloads and job performance.

# Installation

## Create a destination table if you haven't yet.
you can change DB and Table as you want
```
$ td db:create monitoring
$ td table:create monitoring td_job_queue
```

## Push the code and set environment variables
All of four variables are required.
```
$ td wf push job-monitoring
$ td wf secrets --project job-monitoring --set td.apikey td.apiserver td.database td.table
```

|Variable|Description|Example|
|:---|:---|:---|
|`td.apikey`|An API key to be used in the script. Access Type must be `Master Key`.|`1234/abcdefghijklmnopqrstuvwxyz1234567890`|
|`td.apiserver`|TD's API endpoint starting with `https://`.|`https://api.treasuredata.com`|
|`td.database`|A database name which contains the destination table.|`monitoring`|
|`td.table`|A table name you want to store the result into.|`td_job_queue`|


