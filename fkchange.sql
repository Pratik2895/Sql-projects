USE accenture;
SET FOREIGN_KEY_CHECKS=1;
ALTER TABLE reactions
ADD   FOREIGN KEY (`Type`) REFERENCES reactiontypes(`Type`);
