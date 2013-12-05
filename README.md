nnet
====
Simplified implementation of a neural network

Running the Program
-----------------------------
You can run the main program by running `main.m`
You will then have to enter the paths to certain input and output files

Example Data-set
------------------------
The example data-set used involves prostate cancer. The raw data comes from the pattern recognition toolbox ([PRT] [1]). The [PRT] [1] obtained this data via [CMU] [2]. 

The features of this data-set include: height, weight, blood pressure, tumor size, chemical levels, and more. The class outputs are various causes of death or if the patient is still alive. Additional details on the data-set can be found via [Vanderbilt] [3]. 

Pre-processing
---------------------
I used the script `my_dataset.m` to pre-process data for the neural net. The [PRT] [1] has already stripped the two useless feature variables - patient number, and the date. I have further pre-processed the data by normalizing it to be zero-mean unit-variance. Since the data-set is unbalanced, the training and testing data-sets were generated using stratified sampling without replacement. Half of the total data-set is used in training, and the other half for testing.

Initialization
----------------
Initial weights for the neural network were generated using the `rand` function, which generated uniformly distributed pseudo-random numbers on the open interval (0,1).

Example Files
-------------

* ./myData/prostate/prostate.train
* ./myData/prostate/prostate.test
* ./myData/prostate/NNProstate.init
* ./myOut/NNProstate.trained
* ./myOut/results_prostate.txt
  

Parameters
---------------
The parameters that I personally used for this data-set are as follows:
<table>
<tr><td># Hidden Nodes</td><td>50</td></tr>
<tr><td># Epochs</td><td>200</td></tr>
<tr><td>Alpha</td><td>0.05</td></tr>
</table>

  [1]: http://www.newfolderconsulting.com/prt       "PRT"
  [2]: http://lib.stat.cmu.edu/S/Harrell/data/descriptions/prostate.html       "CMU"
  [3]: http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/Cprostate.html       "Vanderbilt"
