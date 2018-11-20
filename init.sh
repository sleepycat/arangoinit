cat <<END_HEREDOC > config.yaml
endpoints:
   - $DB_URL
username: $DB_USER
password: $DB_PASSWORD
migrationspath: /migrations
db: $DB_NAME
extras: {}
END_HEREDOC

arangomigo config.yaml
