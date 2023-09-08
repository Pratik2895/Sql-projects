CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
calender_date DATE) RETURNS int
    DETERMINISTIC
BEGIN
declare fiscal_year int;
set fiscal_year= year(DATE_ADD(calender_date,INTERVAL 4 MONTH));
Return fiscal_year;
END