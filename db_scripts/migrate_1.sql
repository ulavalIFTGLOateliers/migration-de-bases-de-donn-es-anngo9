ALTER TABLE singer RENAME TO musician,
    RENAME COLUMN singerName TO musicianName,
    ADD COLUMN `role` varchar(50) AFTER `age`,
    ADD COLUMN `bandName` varchar(50) AFTER `role`
;

UPDATE musician SET role='vocals', bandName='Crazy Duo' WHERE musicianName='Alina';
UPDATE musician SET role='guitar', bandName='Mysterio' WHERE musicianName='Mysterio';
UPDATE musician SET role='percussion', bandName='Crazy Duo' WHERE musicianName='Rainbow';
UPDATE musician SET role='piano', bandName='Luna' WHERE musicianName='Luna';


ALTER TABLE album
    DROP FOREIGN KEY FK_A_singerName,
    ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES musician (musicianName),
;
