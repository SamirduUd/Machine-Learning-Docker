[![CircleCI](https://circleci.com/gh/SamirduUd/Machine-Learning-Docker.svg?style=svg&circle-token=a31ba1c951f2c8f4e6721ca2d7de9eaaabea5fb5)](https://app.circleci.com/pipelines/github/SamirduUd/Machine-Learning-Docker)



# 1. Project Overview
This project is to operationalize a Machine Learning Microservice API. The Machine Learning API is a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site.

# 2 Project Activities
## Setup the environment
Create a virtual environment and source it
    
    python3 -m venv <your_venv>
    source <your_venv>/bin/activate
    

Install the necessary dependencies
    
    make install
    
    
## Run Docker
    
    ./run_docker.sh
    ./upload_docker.sh
    

## Deploy with Kubernetes
    
    ./run_kubernetes
    

## Make Prediction
    
    make_prediction
    

