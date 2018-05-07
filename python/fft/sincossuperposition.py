#!/usr/bin/env python

"""
* Documentation for FFT under numpy: https://docs.scipy.org/doc/numpy/reference/routines.fft.html
"""

import numpy as np
import matplotlib.pyplot as plt

t = np.arange(256)*np.pi / 64.0
func = np.sin(t) + np.sin(20*t) + np.cos(3*t) + np.cos(17*t)

sp = np.fft.fft(func)
freq = np.fft.fftfreq(t.shape[-1])

#plt.plot(t, func)
plt.plot(freq, sp.real, 'b', freq, sp.imag, 'r')
plt.show()
