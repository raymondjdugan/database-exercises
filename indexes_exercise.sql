# CREATE INDEX [index name]
#     ON [Table name]([column1, column2, column3,...]);
USE raymond;

CREATE INDEX albums_name_combo ON albums (album_name, artist);

DESCRIBE albums;

