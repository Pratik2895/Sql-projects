create user "mum"@'localhost' identified by "1234";
Grant select on accenture.* to "mum"@'localhost';
Revoke select on accenture.* from  "mum"@'localhost';
revoke select on content from  "mum"@'localhost';