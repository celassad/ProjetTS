# MICA project : Matlab Implementation of a Cardiologist Assistant

This project addresses the problem of automated diagnosis of cardiac pathologies, via the signals provided by electrocardiogram (ECG) measurement devices.
The main purpose of this project is to implement basic signal processing algorithms using Matlab
to detect some cardiac pathologies, and develop a graphical user interface (GUI) to load, process and
display ECG, in order to help clinicians through their diagnosis.
This repo provides the necessary sources and informations in order to create your own GUI assistant with MATLAB.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to download the ECG signals and a simple version the assistant. On a Linux or macOS distribution, open a terminal and clone the git repo with the following command : 

```
git clone https://gitlab.com/batalinux/MICA_project.git
```

On a Windows distribution, you need to download a git client (https://git-scm.com/downloads) first.

## Files

### Root folder

The "mica_project.m" script will launch your assistant !

![](images/assistant.png)

You can can now load a signal by clicking on the "open" item of toolbar : ![](images/toolbar.png)

This first version is a GUI implementaion of the "test_threshold".m script. You can plot the temporal evolution, narrow the time window and display the ECG characteristics by ajusting the threshold and the segment.

The script contains all the callback functions of the different buttons and textbox. You can also open it by clicking on the editor button : ![](images/editor.png)

This script will launch the Matlab GUIDE tool to create a GUI interface for your assistant. You can learn how to use GUIDE on the following adress : 

* https://fr.mathworks.com/videos/creating-a-gui-with-guide-68979.html

When you run the script, you should obtain a a new window which looks like :

![](images/guide.png)

This is your GUIDE editor. You can run it by doing "tools -> run" or clicking the run button. 
It will open a new window which is your assitant !

To launch manually the GUIDE editor (to create a new interface for instance), you need to type the following command in the MATLAB prompt :

```
guide
```

## Authors
* **Nolwenn TAN** (nolwenn.tan@ihu-liryc.fr)
* **Baptiste LAPORTE-FAURET** (baptiste.laporte-fauret@ims-bordeaux.fr)
* **Romain TAJAN** (romain.tajan@ims-bordeaux.fr)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* ECG processing methods explained : https://www.youtube.com/watch?v=TJR2AfxVHsM

