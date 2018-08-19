CREATE TABLE IF NOT EXISTS logs(
  remote VARCHAR(1000),
  host VARCHAR(1000),
  user VARCHAR(1000),
  method VARCHAR(1000),
  path VARCHAR(1000),
  code VARCHAR(1000),
  size VARCHAR(1000),
  referer VARCHAR(1000),
  agent VARCHAR(1000),
  http_x_forwarded_for VARCHAR(1000),
  time DATETIME
);
