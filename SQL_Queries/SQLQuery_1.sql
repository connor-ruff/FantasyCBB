CREATE TABLE teamList (
    teamName varchar(50),
    teamOwner varchar(50),
)

ALTER TABLE teamList
ALTER COLUMN teamOwner varchar(50);

INSERT INTO teamList (teamName, teamOwner)
Values ('CMoney', 'Connor Ruff');

select * from teamList
delete from teamList WHERE teamName = 'CMoney';



CREATE TABLE squadsTable (
    squadKey int,
    player1 varchar(50),
    player2 varchar(50),
    player3 varchar(50),
    player4 varchar(50),
    player5 varchar(50),
    player6 varchar(50),
    player7 varchar(50),
    player8 varchar(50),
    player9 varchar(50),
    player10 varchar(50)
)



-- INserting into table
INSERT INTO squadsTable (squadKey, player1, player2, player3, player4, player5, player6, player7, player8, player9, player10)
VALUES (0, 'Zion Williamson', 'Tony Parker', 'Brad Pitt', 'Matt Damon', 'Cam Newton', 'You Mamma', 'Mr. Incredible', 'Yertle the Turtle', 'Niner Niner', 'Johan Cruyff');





