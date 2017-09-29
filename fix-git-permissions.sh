#!/bin/bash
#cd /path/to/repo.git
#chgrp -R groupname .
#chmod -R g+rwX .
#find . -type d -exec chmod g+s '{}' +

cd $1
chgrp -R superhawk610 .
chmod -R g+rwX .
find . -type d -exec chmod g+s '{}' +
