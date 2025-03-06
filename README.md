# CLXR

## Create a virtual environment and install dependencies

It is recommended to use a virtual environment to manage dependencies. Run the following commands:

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
  - data_processing - code related to the preprocessing step for preparing data to run with our models.
  - help_functions - includes the framework's functions that are being used in all notebooks.
  - recommenders_architecture - specifies the architecture of the recommenders that were used in the paper.
  - recommenders_training - contains code related to VAE and MLP recommenders training. 
Please do not re-train the recommendation model, as we have frozen it for explantion. 
For CLXR, we used the same recommendation model as in LXR (the main baseline) to provide a fair comparison. 
If you change the recommendation model, the explanation results might differ.  
 - CLXR-joint_training - contains code for training the CLXR-joint model to explain a specified recommender.
  - CLXR-score_training - contains code for training the CLXR-score model to explain a specified recommender.
  - CLXR-tdlr_training - contains code for training the CLXR-tdlr model to explain a specified recommender.
  - LXR training contains code for training the LXR model to explain a specified recommender.
  - metrics - contains code related to model evaluation.


"Hyperparameters.txt": contain all best hyperparameters that we found by using optuna. 

"Requirements.txt": the packages we used for this project. 

## Usage

To use this code, follow these steps:
* You do not need to create any data; the datasets are already placed in their respective folders.
* You dont need to train the recommendation model. We used the same recommenddation in LXR paper as our main baseline. If you wish to run a new recommendation with new parameters the results may change because the recommendation changed. For explaining, we freeze the recommendation model.
* If you want to reproduce the results in Table 2 and Table 3, please run one of the following notebooks in the code folder, depending on the method. Refer to the paper for details on the differences between each method.
On every notebook, please specify the "data_name" variable to be 'ML1M'/'Yahoo', the "recommender_name" variable to be 'MLP'/'VAE' and use_predefined_hyperparams as "Yes" or "No."

"CLXR-joint_training.ipynb" for CLXR-joint method.

"CLXR-score_training.ipynb" for CLXR-score method. 

"CLXR-tdlr_training.ipynb" for CLXR-tdlr method.

 "LXR training.ipynb" for LXR method.



