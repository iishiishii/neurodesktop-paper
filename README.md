![Mastodon Follow](https://img.shields.io/mastodon/follow/109380029489952500?domain=https%3A%2F%2Fmasto.ai&style=social)

To view the paper in Nature Methods, go to https://www.nature.com/articles/s41592-023-02145-x

To view the preprint of the paper, please visit the following link: https://www.biorxiv.org/content/10.1101/2022.12.23.521691v2. This preprint can be used as a reference while building the paper with Neurodesk Play.

## Neurodesk Overview
Neurodesk is a flexible, scalable, and browser-based data analysis environment for reproducible neuroimaging. It provides a platform for neuroimaging researchers to access powerful tools and resources in a user-friendly interface. With Neurodesk, researchers can perform complex data analysis tasks with ease, while ensuring the reproducibility of their results.

### Installation Guide
To install Neurodesk, please follow the instruction at https://www.neurodesk.org/ to check the specific steps for your operating systems.

### Instructions for Use
To use Neurodesk, please refer to the tutorials provided in this link https://www.neurodesk.org/tutorials/
These tutorials will guide you through the process of performing common neuroimaging tasks using Neurodesk, and will help you to get the most out of this powerful platform.

## Building the paper with Neurodesk

### 1. Open Neurodesk

#### Option 1: Neurodesk Play
You can access Neurodesk by visiting https://play.neurodesk.org/ and choosing the most suitable instance based on your location and file storage needs. Once you have selected the instance, open a terminal and run the following command to download the necessary files and notebooks to your computer.

```
git clone https://github.com/iishiishii/neurodesk_paper.git
```

Open the notebooks in `neurodesk_paper` directory on the sidebar.

#### Option 2: Local Neurodesk
For those who prefer to run Neurodesk locally, you can set up Neurodesk on your local computer by following the instructions provided in the link https://www.neurodesk.org/. After setting up Neurodesk, you can run the following command to download the necessary files and notebooks to your computer.

```
cd ~/neurodesktop-storage
git clone https://github.com/iishiishii/neurodesk_paper.git
```

>  **If you got `Failed to connect to github.com port 443` error when cloning the repo**, it might be because of your organization firewall. Follow these suggestions to troubleshoot: https://stackoverflow.com/questions/18356502/github-failed-to-connect-to-github-443-windows-failed-to-connect-to-github

### 2. Download Data

To replicate the experiment, you have two options based on your requirements: downloading raw data to run the entire experiment or downloading processed data to only run the analysis.

#### Option 1: (Analysis Only) Download Processed Data

Within Neurodesk, open a terminal and run:

```
mkdir ./neurodesk_paper/data
osf -p e6pw3 clone ./neurodesk_paper/data
```

#### Option 2: (Full Experiment) Download Raw Data

If you want to run the entire experiment on **two different machines** for later comparison, the imaging data necessary for the code, specifically ICBM dataset, can be requested at https://ida.loni.usc.edu/. This dataset is essential for the paper and should be downloaded before proceeding to the next step.
After logging, select study ICBM and choose to download Image Collections like below:

![ICBM Image Collection Download](icbm-data-collection.png)

Then go to Advanced search and select the following search criteria:

![ICBM Advanced search](icbm-advanced-search.png)

Once downloaded, you will need to upload the downloaded data files to Neurodesk environment. This is necessary so that the code can access the data and use it to generate the figures in the paper.


### 3. Build the paper

**Full Experiment**
To run full experiment FSL BET, FAST, FLIRT, FIRST pipeline: `fsl_pipeline.ipynb`

**Analysis Only**
The following notebooks compare data from 2 systems. If you have your own data, it requires paths to processed data within the notebooks. Otherwise, you can use the provided processed data in previous step.

To generate Figure 2: `Dice_calculate.ipynb`

To generate Figure 3: `flirt_first_correlation.ipynb`

To generate Figure 4: `tracelog.ipynb`

To generate Figure 5: `correlation_difference.ipynb`

Each notebook contains detailed instructions on how to use the code to generate the figures for the paper. Please be sure to read and follow these instructions carefully to ensure that your figures match the ones in the preprint.


## Citation

A. I. Renton*, T. Dao*, T. Johnstone, O. Civier, R. P. Sullivan, D. J. White, P. Lyons, B. M. Slade, D. F. Abbott, T. J. Amos,
S. Bollmann, A. Botting, M. E. J. Campbell, J. Chang, T. G. Close, K. Eckstein, G. F. Egan, S. Evas, G. Flandin, K. G. Garner,
M. I. Garrido, S. S. Ghosh, M. Grignard, A. J. Hannan, R. Huber, J. R. Kaczmarzyk, L. Kasper, L. Kuhlmann, K. Lou,
Y.-J. Mantilla-Ramos, J. B. Mattingley, J. Morris, A. Narayanan, F. Pestilli, A. Puce, F. L. Ribeiro, N. C. Rogasch, C. Rorden,
M. Schira, T. B. Shaw, P. F. Sowman, G. Spitz, A. Stewart, X. Ye, J. D. Zhu, M. E. Hughes, A. Narayanan, and S. Bollmann.
Neurodesk: An accessible, flexible, and portable data analysis environment for reproducible neuroimaging. Nat
Methods (2024). [https://doi.org/10.1038/s41592-023-02145-x](https://doi.org/10.1038/s41592-023-02145-x)
