#!/bin/bash
ln -s /mnt/fly-volume/user-avatars /app/public/user-avatars
ln -s /mnt/fly-volume/project-background-images /app/public/project-background-images
ln -s /mnt/fly-volume/attachments /app/private/attachments

export NODE_ENV=production && set -e && node db/init.js && node app.js --prod
