SET @ENTRY := 35456;

DELETE FROM `acore_string` WHERE `entry` = @ENTRY+0;
DELETE FROM `acore_string_locale` WHERE `entry` = @ENTRY+0;
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@ENTRY+0, '[Recruit Friend] Recruited character: {}');

INSERT INTO `acore_string_locale` (`entry`, `locale`, `content`) VALUES
(@ENTRY+0, 'esES', '[Recruit Friend] Personaje reclutado: {}'),
(@ENTRY+0, 'esMX', '[Recruit Friend] Personaje reclutado: {}');
