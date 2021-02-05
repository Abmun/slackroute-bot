FROM python:2.7  
MAINTAINER Abhimanyu Garg <admin@techmanyu.com> 
ENV SLACK_BOT_TOKEN=<paste API Token here>
WORKDIR /usr/src/app 
COPY ./slackroute-bot.py /usr/src/app/slackroute-bot.py
RUN pip install slackclient
RUN pip install requests
CMD [ "python","-u","/usr/src/app/slackroute-bot.py" ]
