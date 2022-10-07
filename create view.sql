CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `accenture`.`finaldataset` AS
    SELECT 
        `accenture`.`p`.`Content ID` AS `Content ID`,
        `accenture`.`p`.`Type` AS `Type`,
        `rt`.`Sentiment` AS `Sentiment`,
        `rt`.`Score` AS `Score`,
        `accenture`.`p`.`User ID` AS `User ID`,
        `accenture`.`p`.`Category` AS `Category`
    FROM
        (`accenture`.`pratik` `p`
        JOIN `accenture`.`reactiontypes` `rt` ON ((`accenture`.`p`.`Type` = `rt`.`Type`)))