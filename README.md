# SoC_project
Real-time 3D binaural audio synthesis
Introduction
The objective of this project is to develop a System on a Chip(SoC) capable of creating the same audio effect that the human ears perceive when an audio source is moving in space. Thanks to research on the subject, a model of this phenomenon has been obtained. Basically, the propagation of acoustic waves from the audio source to every one of the human ears can be modeled as communication channels. When the audio source changes its relative position to the ears, then, the characteristics of these two communication channels also change, this response is due to the head-related transfer function(HRTF). The HRTF depends on many parameters, mostly on the relative audio position in the space to the human ears, but also in the shape of the head, ears, ear canal, density of the head, size and shape of nasal and oral cavities, boosting some frequencies and attenuating others. 
A database and some Matlab functions have been found in the links shown. In 2 a set of 58 different Head-Related Impulse Response(HRIR) are provided or free access. 
2 http://recherche.ircam.fr/equipes/salles/listen/download.html
1 http://recherche.ircam.fr/equipes/salles/listen/tools.html
This phenomenon is equivalent to a Finite Impulse Response filter (FIR) that changes its coefficients for different equivalent positions of the audio source. Then, for the binaural effect, an FIR, with the possibility to change its coefficients in real-time, is implemented on hardware. Two FIR are required given that there are two communication channels(audio wave to the left and right ear). The FPGA available for this project is a Zybo Z7 board. This board has 80 DSP slices. Thus, for every channel, 40 DSP slices will be used. Thus the order of the two FIR filters could be 40. 
The HRIR in the database contains 512 coefficients, for 187 different combinations of azimuth and elevation of the audio source. 
The FIR filter implemented on this project uses only the first 40 coefficients from the database to synthesize the audio. The 80 DSP slices contained in the Zybo board are distributed equally for both FIR filters.

Audio source movement(accelerometer)

FIR filter realization(FIR IP module)
This module consists of two  main blocks, the coefficients bank and the filter. The coefficients bank has a single input bus that receives the data from the microprocessor one coefficient at a time. The FPGA clock rate is sufficiently higher than the audio sample rate so that the coefficients to load and the filter to change the audio output between samples. The number of coefficients and their bit widths are handled as generics in the top module so they may be adjusted as required. 

An enable input pulse tells the bank when the coefficient at the input is ready to be taken. The bank has as many output registers as there are coefficients, and each provides the coefficient value to each respective stage of the filter through a single bus between the bank and the filter. The size of this bus can quickly increase in size since it is as wide as the number of coefficients times the number of bits of the coefficients.
Figure XX below shows the MUX that triggers the corresponding register to receive the coefficient data. A “reset_shift_register” input to the bank control is used when the microprocessor updates the coefficients before they are finished being stored in the registers.


Fig. XX: Schematic of the coefficient bank with 5 coefficients and where the coefficient data is 3 bits wide.

Each filter stage multiplies the output of the previous stage by its corresponding coefficient on a synchronous enable rising edge. The first stage of the filter takes its input directly from the audio signal delivered to it by the microprocessor. The output of the filter is the sum of the filter stage’s outputs. Fig. XX shows the schematic of the filter with 5 stages.

Fig. XX: Schematic of the filter with 5 stages.




