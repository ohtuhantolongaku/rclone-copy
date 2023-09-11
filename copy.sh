pip install flask
pip install flask_restful
# curl https://rclone.org/install.sh | bash
echo -e "$RCLONE_CONFIG" > rclone.conf

python3 web.py &
rclone copy -P "$SOURCE_RC" "$DESTINATION_RC" --config=rclone.conf
