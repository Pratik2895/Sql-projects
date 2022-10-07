SELECT `Content ID`, `User ID`, `Type`, `Category`, `URL`,count(*)
FROM accenture.content
group by `Content ID`, `User ID`, `Type`, `Category`, `URL`
having count(`Content ID`) >1 and count(`User ID`)>1 and count(`Type`) >1 and count(`URL`) >1;

