FROM jupyter/scipy-notebook
  
USER root
RUN \
  apt-get update && \
  apt-get -y install curl
  
ENV WORK_DIRECTORY=/opt/ds/model/deployed_model
ENV MODEL_DIR=$WORK_DIRECTORY/models
RUN mkdir -p $MODEL_DIR
  
ENV MODEL_FILE_LDA=clf_lda.joblib
  
COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt