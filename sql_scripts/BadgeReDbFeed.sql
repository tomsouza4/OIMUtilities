/*Parent Table*/
CREATE TABLE MY_BADGE_RE_FEED 
(	
    LOGIN VARCHAR2(256 CHAR), 
    EMPLID VARCHAR2(256 CHAR)
);

INSERT INTO MY_BADGE_RE_FEED (LOGIN, EMPLID) VALUES ('JPROUDMOORE','100000');
INSERT INTO MY_BADGE_RE_FEED (LOGIN, EMPLID) VALUES ('AWINDRUNNER','100001');
INSERT INTO MY_BADGE_RE_FEED (LOGIN, EMPLID) VALUES ('MSTORMRAGE','100002');

/* Child Table */
CREATE TABLE MY_BADGE_ENT_RE_FEED 
(
    EMPLID VARCHAR2(256 CHAR),
    NAME VARCHAR2(100 CHAR), 
    DESCRIPTION VARCHAR2(64 CHAR)
);

INSERT INTO MY_BADGE_ENT_RE_FEED (EMPLID, NAME, DESCRIPTION) VALUES ('100000','Lab', 'Access to laboratory');
INSERT INTO MY_BADGE_ENT_RE_FEED (EMPLID, NAME, DESCRIPTION) VALUES ('100000','Secret Room', 'Mysterious Room');
INSERT INTO MY_BADGE_ENT_RE_FEED (EMPLID, NAME, DESCRIPTION) VALUES ('100000','Core', 'Main workstation');
INSERT INTO MY_BADGE_ENT_RE_FEED (EMPLID, NAME, DESCRIPTION) VALUES ('100001','Core', 'Main workstation');
DELETE FROM MY_BADGE_ENT_RE_FEED WHERE EMPLID = '100000';