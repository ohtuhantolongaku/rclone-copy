# curl https://rclone.org/install.sh | bash
echo -e "$RCLONE_CONFIG" > rclone.conf
rclone copy --use-mmap --buffer-size 0 --transfers 1 --checkers 1 -P "$SOURCE_RC" "$DESTINATION_RC" --config=rclone.conf
