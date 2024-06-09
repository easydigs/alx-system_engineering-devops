# 0x19. Postmortem

## Postmortem: Memory Leak Causing Application Crashes

Issue Summary
Duration:

Start: June 9, 2024, 12:00 GMT
End: June 9, 2024, 14:30 GMT

## Impact:

The main web application experienced frequent crashes for 2.5 hours, resulting in significant service interruptions. Users encountered “Service Unavailable” errors and severe slowdowns.
Approximately 70% of users were affected, experiencing degraded performance or complete inability to use the application.

## Root Cause and Resolution

## Root Cause:

The issue was caused by a memory leak introduced in a recent code deployment. A specific function in the application was allocating memory for data processing but not properly releasing it after use. This caused the application to consume increasing amounts of memory over time, eventually leading to crashes as the servers ran out of available memory.

## Resolution:

The resolution involved identifying the faulty code responsible for the memory leak. The development team reviewed the recent changes and located the problematic function. A patch was developed to ensure proper memory management by freeing up allocated memory after it was no longer needed. The patched code was thoroughly tested in a staging environment before being deployed to production. Once deployed, the application servers’ memory usage normalized, and the service interruptions ceased.