# CLXR

## Create a virtual environment and install dependencies

It is recommended to use a virtual environment to manage dependencies. "Requirements.txt" contains the packages we used for this project. Run the following commands:

```bash

# Define environment name
ENV_NAME="CLXR"

# Create virtual environment
python3 -m venv $ENV_NAME

# Activate virtual environment
source $ENV_NAME/bin/activate

# Install required packages
pip install -r requirements.txt
```
## Folders



**processed_data**: contains two subfolders, one for each dataset. 

 **code**: contains several code notebooks:
  - data_processing - code related to the preprocessing step for preparing data to run with our models. You do not need to create any data; the datasets are already placed in their respective folders.

  - help_functions - includes the framework's functions that are being used in all notebooks.
  - recommenders_architecture - specifies the architecture of the recommenders that were used in the paper.
  - recommenders_training - contains code related to training VAE and MLP recommenders. You do not need to train the recommendation model, as we use the same recommendation setup as in the LXR paper as our main baseline. If you choose to run a new recommendation with different parameters, it may lead to slight variations in the results due to changes in the recommendations. For explanation purposes, we freeze the recommendation model.
  - CLXR-joint_training - contains code for training the CLXR-joint model to explain a specified recommender.
  - CLXR-score_training - contains code for training the CLXR-score model to explain a specified recommender.
  - CLXR-tdlr_training - contains code for training the CLXR-tdlr model to explain a specified recommender.
  - LXR_training - contains code for training the LXR model to explain a specified recommender.
  - Popularity_approach -  contains code for the popularity baseline.
  - metrics - contains code related to model evaluation.



## Usage

If you want to reproduce the results in Table 2 and Table 3, please run one of the aforementioned notebooks in the code folder, depending on the method. Refer to the paper for details on the differences between each method. Finding the best hyperparameters requires training the explainer for at least 30 trials using Optuna to optimize them. However, you do not need to perform this step, as we have already determined the best hyperparameters. If you want to reproduce Fig. 1 in the paper, please run the Plot.ipynb notebook. However, before doing so, you need to train all explainers first.


In every notebook, set the following variables in cell 2:
```bash
data_name: 'ML1M' or 'Yahoo'
recommender_name: 'MLP' or 'VAE'
use_predefined_hyperparams: 'Yes' or 'No'  
```
Training the explainer may take a few hours, depending on your server. If you don't have enough time, you can evaluate a smaller subset of users. In our experiments, we randomly selected 700 users for evaluation. However, you can choose 200 users to save time. Note that in this case the results may not be as accurate as those reported in the paper.









