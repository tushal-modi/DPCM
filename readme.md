# DPCM Encoding and Decoding using Matlab

- Simulated Differential Pulse Code Modulation Encoder and Decoder using MATLAB.

------------------------------------------

A simple special case of DPCM quantizes the difference between the signal's current value and its value at the previous step. Thus the predictor is just y(k) = x (k - 1). The code below implements this scheme. It encodes a sinusoidal signal, decodes it, and plots both the original and decoded signals. The solid line is the original signal, while the dashed line is encoded signal. The example also computes the mean square error between the original and decoded signals.