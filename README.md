# ROS + Docker playaround

1. $ docker-compose up -d   # start all containers. NOTE: if the tester didn't startup the first time, run it again. I think it's due to rostopic pub some how doesn't latch the first time (sometime...)
2. $ docker-compose stop    # stop all containers
3. $ docker-compose rm      # clean up docker containers
4. $ docker exec -it {insert tester container id here} bash  # login into tester container
5. $ ./roschecker.sh        # sample: ./roschecker.sh test
