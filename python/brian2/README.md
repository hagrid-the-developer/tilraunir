Experiments with brian2 (SNN package)
=====================================

Installation (on Ubuntu 17.10):
-------------------------------

    # apt install python-pip python-tk
    # pip install numpy
    # pip install matplotlib
    # pip install cython
    # pip install brian2
    
Links:
------

* Brian2:
  * [Installation](http://brian2.readthedocs.io/en/stable/introduction/install.html)
  * [Computational methods and efficiency](http://brian2.readthedocs.io/en/stable/user/computation.html)
  * [Tutorial about synapses](http://brian2.readthedocs.io/en/2.0rc/user/synapses.html)
* Other links:
  * [Matplotlib documentation](https://matplotlib.org/api/_as_gen/matplotlib.pyplot.subplot.html#matplotlib.pyplot.subplot)


Results:
--------

Examples taken from [Brian 2 tutorial: Intro to Brian neurons](https://github.com/brian-team/brian2/blob/master/tutorials/1-intro-to-brian-neurons.ipynb).

* multiple-neurons.py:

  * Spikes and firing rate for various indexes and `v0` values:
<img src="images/multiple-neurons_firing-rate.png" width=100%>

  * Graph of `V` for neurons with different indexes:
<img src="images/multiple-neurons_v.png" width=100%>

* stochastic-neuron.py:

  * Spikes and firing rate for various indexes and `v0` values:
<img src="images/stochastic-neurons_firing-rate.png" width=100%>

  * Graph of `V` for neurons with different indexes:
<img src="images/stochastic-neurons_v.png" width=100%>

As one can see, firing rate is non-zero for `v0 < 1` and even neuron `0` has some non-zero values for `V` (but it has no spikes). This is because stochastic differential was added to the equations.


