# curl https://rclone.org/install.sh | bash
echo -e "$RCLONE_CONFIG" > rclone.conf
rclone copy -P "$SOURCE_RC" "$DESTINATION_RC" --config=rclone.conf
