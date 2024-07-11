CREATE TABLE USERS (
    id INT NOT NULL IDENTITY(1, 1),
    username VARCHAR(64) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,  -- Increased length to accommodate longer hashes
    PRIMARY KEY (id)
);

INSERT INTO dbo.users (username, password_hash)
VALUES ('admin', 'scrypt:32768:8:1$xOfPGSqsRTmOSA3f$43274687069f9f27625744c99b53fe7e874c42808b8ff3c3d2ada79ae28b805cb0653f6a3eace9bba2324c667158a8f20eabded4325422922834534ae1e5a978');