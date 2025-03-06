# CLXR

## Folders


* **processed_data**: contains two subfolders, one for each dataset. 

* **code**: contains several code notebooks:
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

".txt" files:
"Hyperparameters.txt": contain all best hyperparameters that we found by using optuna. You dont need do this. You can just put these parameters in "CLXR training" cell.

"Requirements.txt": the packages we used for this project. You can run the virtual environment by "setup_env.sh"

## Usage

To use this code, follow these steps:
* You do not need to create any data; the datasets are already placed in their respective folders.
* You dont need to train the recommendation model. 

Just run one of these followings notebook:
There are four notebooks named: 

"CLXR-joint_training.ipynb"  

"CLXR-score_training.ipynb" 

"CLXR-tdlr_training.ipynb" 

 "LXR training.ipynb" 

 On every notebook, please specify the "data_name" variable to be 'ML1M'/'Yahoo', and the "recommender_name" variable to be 'MLP'/'VAE'.
You can train your own CLXR model using the aforementioned notebooks and observe the metric values for each epoch, as well as the best metric values.


