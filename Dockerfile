FROM debian

ENV HUBPORT=8888
ENV ADMUSER=jupyadm
ENV ADMPASS=8fDw80zNDL

WORKDIR /root
RUN apt-get update
RUN apt-get install --quiet --yes sudo
COPY Anaconda3-2020.02-Linux-x86_64.sh .
RUN chmod +x Anaconda3-2020.02-Linux-x86_64.sh
RUN echo -e "\nq\nyes\n/opt/anaconda\nno\n\n" | ./Anaconda3-2020.02-Linux-x86_64.sh
RUN rm Anaconda3-2020.02-Linux-x86_64.sh
RUN eval "$(/opt/anaconda/bin/conda shell.bash hook)"; conda install jupyterhub
COPY jupyterhub /etc/jupyterhub

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT /root/entrypoint.sh
