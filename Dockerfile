FROM syd.ocir.io/sd63xuke79z3/binderhub/jupyter-neurodesktop-proxy:20221215033354
ADD "http://api.github.com/repos/iishiishii/neurodesktop-paper/commits/main" /tmp/skipcache
WORKDIR /home/jovyan
RUN git clone https://github.com/iishiishii/neurodesktop-paper
WORKDIR /home/jovyan/neurodesktop-paper
