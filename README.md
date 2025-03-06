# CLXR-an

## Folders


* **processed_data**: contains two subfolders, one for each dataset. 

* **code**: contains several code notebooks:
  - data_processing - code related to the preprocessing step for preparing data to run with our models.
  - help_functions - includes the framework's functions that are being used in all notebooks.
  - recommenders_architecture - specifies the architecture of the recommenders that were used in the paper.
  - recommenders_training - contains code related to VAE and MLP recommenders training.
  - CLXR-joint_training - contains code for training CLXR-joint model for explaining a specified recommender.
  - CLXR-score_training - contains code for training CLXR-score model for explaining a specified recommender.
  - CLXR-TDLR_training - contains code for training CLXR-score model for explaining a specified recommender.
  - LXR training - contains code for training LXR model for explaining a specified recommender.
  - metrics - contains code related to model evaluation.

".txt" files:
"Hyperparameters.txt": contain all best hyperparameters that we found by using optuna. You dont need do this. You can just put these parameters in "CLXR training" cell.

"Requirements.txt": the packages we used for this project