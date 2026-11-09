SET @ENTRY := 35457;

DELETE FROM `acore_string` WHERE `entry` IN (@ENTRY+0, @ENTRY+1);
DELETE FROM `acore_string_locale` WHERE `entry` IN (@ENTRY+0, @ENTRY+1);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@ENTRY+0, '[Recruit Friend] You must wait for {} sec. to use this command again.'),
(@ENTRY+1, '[Recruit Friend] You haven\'t recruited anyone. Use the .recruit add command to do this.');

INSERT INTO `acore_string_locale` (`entry`, `locale`, `content`) VALUES
(@ENTRY+0, 'esES', '[Reclutar Amigo] Debes esperar {} seg para utilizar este comando nuevamente.'),
(@ENTRY+0, 'esMX', '[Reclutar Amigo] Debes esperar {} seg para utilizar este comando nuevamente.'),
(@ENTRY+1, 'esES', '[Recruit Friend] No has reclutado a nadie. Utiliza el comando .recruit add para hacerlo.'),
(@ENTRY+1, 'esMX', '[Recruit Friend] No has reclutado a nadie. Utiliza el comando .recruit add para hacerlo.');
