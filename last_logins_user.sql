col OS_USERNAME for a20
col USERNAME for a20
col USERHOST for a40
 
select OS_USERNAME,USERNAME,USERHOST,timestamp, returncode,action_name,SES_ACTIONS
from dba_audit_trail
where USERNAME like upper('%&1%')
order by timestamp; 

-- and returncode > 0;