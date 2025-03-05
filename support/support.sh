#!/bin/bash

chmod +x post.sh
chmod +x post1.sh
chmod +x post2.sh
bash post.sh
bash post1.sh
bash post2.sh
bash changejsession.sh
sudo bbb-conf --restart

