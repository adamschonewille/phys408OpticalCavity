# Lab Notebook 
## Day 1 2018 02 06
### Figuring out Reflection and Transmission Coefficients:

We want to first characterize the first mirror by measuring it's transmission and reflection coefficients. We can do this by directly measuring the incident beam intensity, reflected beam intensity and transmitted beam intensity using a power meter.




![Reflection Transmission Setup](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/ReflectionTransmissionSetup.png) 


\section{Mirror Reflectivity}
Transmission and Reflection Coefficients of the both mirrors involved in the optical cavity \\
\subsection{$M_1$ Charecteristics}
Reversed $M_1$ \\ 
Incident Beam:
$18.08 \pm 0.05$ mW \\
Transmission:
$(0.200 \pm 0.001 )$ mW \\
Reflected: 
$(16.34 \pm 0.02)$ mW \\ \ \\
Reason for losses in this case: we had to reflect it off an additional mirror in order to take this measurement. We find the power loss of this additional mirror \\ \ \\ 
Power before Additional Mirror
$(19.51 \pm 0.01)$ mW \\
Loss of about 1.5 mW into $M_1$ 
Then out of the $M_1$ another loss of 1.5 \\
\subsection{$M_2$ Charecteristics}
Incident for $M_2$:
$(0.345 \pm 0.005)$ mW \\
Transmission for $M_2$:
$(1.05 \pm 0.05) \mu$W \\
Reflection for $M_2$:
$(0.338 \pm 0.005)$  mW \\



\begin{center}
	\begin{tabular}{l|ccc}
  Mirror & Reflection & Transmission & Sum \\
  \hline
  $M_1$ & $0.986 \pm 0.004$ & $0.0111 \pm 0.0001$ & $0.998 \pm 0.004$ \\
  $M_2$ & $0.98 \pm 0.02 $ & $0.00304 \pm 0.00005 $ & $0.98 \pm 0.02$ 
\end{tabular}
\end{center}

Both mirrors are very close to one having a unity sum of the reflection and transmission coefficients, which is what we would expect. Incorporating the loss in the first mirror was important in order to correct the original reflection coefficient from ~0.904 to the more realistic value of 0.986. \\

### Theoretical Finesse, Free Spectral Range, and Linewidth

Now we can calculate the finesse with cavity length L = 15cm and wave number k = 
 $$I = \frac{I_{max}}{1 + \frac{2\mathscr{F}}{\pi}^2\sin^2(kL)} $$
 $$\mathscr{F} = \sqrt{ \frac{\pi(\frac{I_{max}}{I} - 1)}{2\sin^2(kL)}}$$
 $$\mathscr{F} = \frac{\pi\sqrt{r}}{1-r},\ \ with \ \ r = \sqrt{R_1R_2}$$
$$ r = \sqrt{R_1R_2}, \delta r = r \sqrt{(\frac{\delta R_1}{R_1})^2 + (\frac{\delta R_2}{R_2})^2}\ ,\ \  r = 0.98 \pm 0.02 $$ 
$$\mathscr{F} = 185.55 \pm 23.2 \approx 186 \pm 23 , \ \  \delta \mathscr{F} = \frac{\pi (1+r)}{2*(1-r)^2\sqrt{r}} * \delta r$$

Free Spectral Range
$$ \nu_F = \frac{c}{2L} = (1.0 \pm 0.2)\times 10^9 Hz $$
Line-width (Spectral Width, Full Width Half Max)

$$\nu_{FWHM} = \frac{\nu_F}{\mathscr{F}} = (5.38 \pm 0.265 )\times 10^6 Hz \approx (5.4\pm0.3)MHz $$

If we flipped the cavity and used the low reflectivity mirrors than there would be not very much power transmitted ~0, and the finesse would also be ~0. Line width would exceed the free spectral range meaning resonance is not possible. 



### Knife-edge Measurement for Beam Waist 
With the aforementioned setup the first mirror, $M_1$,  was removed and the knife edge was placed in it's spot.
For a  Optical Cavity length of 24.31 cm:
Unblocked Laser Starting Power 
| Power (mW) | Knife Position (mm) | Percent Power |
|--|--|--|
| 18 | 4.7807 | 100%  |
Move/jog the knife edge to 90% of the full power (around 16.2 mW)
| Power (mW) | Knife Position (mm) | Percent Power |
|--|--|--|
| 16.25 | 9.5621 | 90.27% |
| 16.13 | 9.5721 | 89.61% |
Next, move/jog the knife edge over until 10% of the full power is transmitted (around 1.8 mW)
| Power (mW) | Knife Position (mm) | Percent Power |
|--|--|--|
| 1.85 | 9.9346 | 10.28% |
| 1.83 | 9.9445 | 10.17% |



This experiment was repeated for a different optical cavity length
Now at 25.2 cm
17.98 mV 6.3538 100%
16.2 mV 9.5624 90%
1.77 mV 9.9366


## Day 2 2018 02 13
### Optical Cavity Set-up and Piezo Calibration:

We aligned the laser to set up the optical cavity in the following way:

 - Removed the first mirror $M_1$. Aligned the mirrors so that the beam was parallel to the optical table surface throughout the setup.
 - Added the $50~$cm lens to the beam path and centered the laser spot on it.
 - Reinserted the first $M_1$ mirror into the setup on the micrometer stage at about $50~$cm from the lens.
 - Set the second mirror, $M_2$, to be $15~$cm from the first mirror as to create a resonant cavity with a length of $15~$cm.
 - Observed the oscillating/changing time-dependent modes of the resonating beam with the CCD camera.

#### Piezo Calibration:
For the piezo actuator we want to find the calibration of the device, that is to say we want to investigate and find any relationship between the frequency or voltage and travel of the piezo when it vibrates. We can do this by looking at the resulting laser beam when the piezo is excited and the cavity length changes with time due to controlled vibrations.

This setup took the longest time and the majority of our time, which was what we expected to take the longest in our lab outline. Our major difficulty was getting a periodic signal that we were able to measure from the 

These measurements are very sensitive to noise and disturbances caused by sounds and other vibrations picked up and conducted by the table (walking/breathing).  

 
Optical cavity Length: 150 $\pm$ 1 mm 
| Frequency (Hz) | Voltage Peak-to-peak (V) | Period (from graph) |
|--|--| --|
| 22.14 | 47.7 $\pm$ 0.2 |  |
| 22.14 | 25.1 $\pm$ 0.3 |  |
| 22.14 | 10.2 $\pm$ 0.3 |  |
| 223.7 | 48.0 $\pm$ 0.1 |  |
| 1018  | 48.0 $\pm$ 0.1 |  |

Optical cavity Length: 295 $\pm$ 1 mm 
| Frequency (Hz) | Voltage Peak-to-peak (V) | Period (from graph) |
|--|--| --|
| 186 | 48 $\pm$ 0.2 |  |
| 22.38 | 48 $\pm$ 0.2 |  |
| 1867 | 48 $\pm$ 0.2 |  |
| 22.41 | 26.6 $\pm$ 0.3 |  |
| 22.43 | 9.6 $\pm$ 0.2 |  |


Optical cavity Length: 200 $\pm$ 1 mm 
| Frequency (Hz) | Voltage Peak-to-peak (V) | Period (from graph) |
|--|--| --|
| 22.51| 48 $\pm$ 0.1 |  |
| 1047 | 48 $\pm$ 0.1 |  |
| 228.8| 48 $\pm$ 0.1 |  |
| 22.7 | 29.7 $\pm$ 0.2 |  |
| 22.7 |  9.7 $\pm$ 0.2 |  |



## Day 3 2018 02 27
### Piezo Calibration Analysis and Q-Factor (Finesse):

Tune the optical cavity to find the max power when the laser is in the $TEM_{00}$ mode. After >25 cm of cavity length the transmitted laser seems to become marginally unstable. 

Last point of resonance is when the optical cavity length is 29.75 cm. This measurement leads us to believe that the max cavity length is at or around 30 cm.

Set the cavity length to 1.5 cm and record the optical power transmitted as measured by the photodiode (PD). This plot has several peaks that occur in a period pattern. 

The optical cavity length was set to multiple different lengths and the optical power transmitted was measured using the photodiode. 

| Optical cavity Length (mm) | Frequency (Hz) | Finesse |
|--|--|--|
|  15 $\pm$ 2|  73.4 $\pm$ 0.1 |  |
|  50 $\pm$ 2|  73.4 $\pm$ 0.1 |  |
| 100 $\pm$ 2|  73.4 $\pm$ 0.1 |  |
| 150 $\pm$ 2|  73.4 $\pm$ 0.1 |  | the best so far
| 200 $\pm$ 2|  73.4 $\pm$ 0.1 |  |
| 250 $\pm$ 2|  73.4 $\pm$ 0.1 |  |
| 300 $\pm$ 2|  73.4 $\pm$ 0.1 |  |

The 150 mm Optical  Cavity length gave the clearest signal for the transmitted optical power. The signal did not fluctuate as much as other measurements and the periodicity of the signal was very clear. This was the recommend length to use as it is the focal length of the mirror used. This is because the optical cavity consist of two mirrors: one flat, and one with a radius of curvature of 30 cm. Also, $F = ROC/2$, so a ROC of 30 cm gives us the 15 cm focal length.

Initial Cavity Length: 292.5 mm (From Surface of Both Mirrors)
Readings taken as absolute numbers off of Z dial
Initial Z-Stage Dial Reading: 
| Optical Cavity Length Change ($\Delta mm$) | Power ($\mu W$)|
|--|--|--|
| 16.34 $\pm$ 0.01| 210 $\pm$ 10 |  |
| 16.00 $\pm$ 0.01| 210 $\pm$ 10 |  |
| 15.09 $\pm$ 0.01| 208 $\pm$ 20 |  |
| 15.03 $\pm$ 0.01| 203 $\pm$ 20 |  | 
| 14.50 $\pm$ 0.01| 200 $\pm$ 20 |  |
| 14.00 $\pm$ 0.01| 197 $\pm$ 10 |  |
| 13.50 $\pm$ 0.01| 189 $\pm$ 10 |  |
| 13.00 $\pm$ 0.01| 186 $\pm$ 10 |  |
| 12.50 $\pm$ 0.01| 184 $\pm$ 10 |  |
| 12.00 $\pm$ 0.01| 179 $\pm$ 10 |  |
| 11.50 $\pm$ 0.01| 174 $\pm$ 10 |  | 
| 11.00 $\pm$ 0.01| 166 $\pm$ 10 |  |
| 10.50 $\pm$ 0.01| 156 $\pm$ 10 |  |
| 10.00 $\pm$ 0.01| 149 $\pm$ 10 |  |
|  9.50 $\pm$ 0.01| 128 $\pm$ 10 |  |
|  9.00 $\pm$ 0.01| 115 $\pm$ 10 |  |
|  8.50 $\pm$ 0.01|  90 $\pm$ 10 |  |
|  8.00 $\pm$ 0.01|  58 $\pm$  5 |  |
|  7.50 $\pm$ 0.01|  45 $\pm$  5 |  |
|  7.00 $\pm$ 0.01|  41 $\pm$  5 |  |
|  6.50 $\pm$ 0.01|  40 $\pm$  5 |  |
|  6.00 $\pm$ 0.01|  38 $\pm$  5 |  |
|  5.50 $\pm$ 0.01|  37 $\pm$  2 |  |
|  5.00 $\pm$ 0.01|  36 $\pm$  2 |  |

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTg4OTYyMTQ2MywtMjY5MTU3ODM2LDE5Mj
UxMzE2NjcsLTEzNDU5MTAwNTUsMTMxOTQ5MzQ0MSwxMzg3NjEy
NzM0LC0yMDY3NTMxNzQxLC02MzI3NjA2NzgsLTEyOTM1MjI2ND
RdfQ==
-->