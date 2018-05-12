from brian2 import *
import matplotlib.pyplot as plt

N = 100
tau = 10*ms
v0_max = 3.
duration = 1000*ms

eqs = '''
dv/dt = (v0-v)/tau : 1 (unless refractory)
v0 : 1
'''

G = NeuronGroup(N, eqs, threshold='v>1', reset='v=0', refractory=5*ms, method='exact')
M = SpikeMonitor(G)
SM = StateMonitor(G, 'v', record=[0, 25, 50, 75, 99])

G.v0 = 'i*v0_max/(N-1)'

run(duration)

plt.figure(figsize=(120,40))
plt.subplot(131)
plt.plot(M.t/ms, M.i, '.k')
plt.xlabel('Time (ms)')
plt.ylabel('Neuron index')
plt.subplot(132)
plt.plot(G.v0, M.count/duration)
plt.xlabel('v0')
plt.ylabel('Firing rate (sp/s)');

plt.subplot(533)
plt.plot(SM.t / ms, SM[99].v / mV)
plt.xlabel('v[99]')
plt.ylabel('V[mV]');
plt.subplot(536)
plt.plot(SM.t / ms, SM[75].v / mV)
plt.xlabel('v[75]')
plt.ylabel('V[mV]');
plt.subplot(539)
plt.plot(SM.t / ms, SM[50].v / mV)
plt.xlabel('v[50]')
plt.ylabel('V[mV]');
plt.subplot(5, 3, 12)
plt.plot(SM.t / ms, SM[25].v / mV)
plt.xlabel('v[25]')
plt.ylabel('V[mV]');
plt.subplot(5, 3, 15)
plt.plot(SM.t / ms, SM[0].v / mV)
plt.xlabel('v[0]')
plt.ylabel('V[mV]');
plt.savefig('images/multiple-neurons.svg')
