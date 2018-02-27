# Lab Notebook 
## Day 1 2018 02 06
### Figuring out Reflection and Transmission Coefficients:

We want to first characterize the first mirror by measuring it's transmission and reflection coefficients. We can do this by directly measuring the incident beam intensity, reflected beam intensity and transmitted beam intensity using a power meter.




![Reflection Transmission Setup](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/ReflectionTransmissionSetup.png) 

For the first mirror, the angle was set to also Incident for $M_2$): 
$(0.262 \pm 0.001)$ mW 
Input incident to $M_1$: 
$(18.00 \pm 0.01 )$ mW
Reflection from $M_1$: 
$(7.23 \pm 0.01)$ mW 

This part is slightly trickier we had to orient the second mirror so that the reflected spot was far enough from the incident so that we could measure it separately.  We also had to move on of the other mirrors in the setup so we retook the incident beam measurement for $M_2$. 

Incident for $M_2$:
$(0.345 \pm 0.005)$ mW 
Transmission for $M_2$:
$(1.05 \pm 0.05) \mu$ W 
Reflection for $M_2$:
$(0.338 \pm 0.005)$  mW


Reversed $M_1$
Incident Beam:
$18.08 \pm 0.05$ mW
Transmission:
$(0.200 \pm 0.001 )$ mW
Reflected:
$(16.34 \pm 0.02)$ mW
Reason for losses in this case: we had to reflect it off an additional mirror in order to take this measurement. We find the power loss of this additional mirror
Power before Additional Mirror
$(19.51 \pm 0.01)$ mW
 Loss of about 1.5 mW into $M_1$ 
 Then out of the $M_1$ another loss of 1.5
 Now we can calculate the finesse with cavity length L = 15cm and wave number k = 
 $$I = \frac{I_{max}}{1 + \frac{2\mathscr{F}}{\pi}^2\sin^2(kL)} \implies \mathscr{F} = \sqrt{\frac{\pi(\frac{I_{max}}{I} - 1)}{2\sin^2(kL)}}$$
 $$\mathscr{F} = $$


### Beam Splicing 
	Starting power 
	18 mV 		4.7807 100%
	16.25 mV 	9.5621
	16.13 mV	9.5721
	
	1.8-1.9 
	1.83-1.85 9.9346 10%
AT a z = 24.31

New at 25.2
17.98mV 6.3538 100%
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
| | $\pm$ 0. |  |
| | $\pm$ 0. |  |
| | $\pm$ 0. |  |
| | $\pm$ 0. |  |
| | $\pm$ 0. |  |


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
|  7.50 $\pm$ 0.01| 45 $\pm$ 1 |  |
|  9.50 $\pm$ 0.01| 128 $\pm$ 10 |  |
|  9.00 $\pm$ 0.01| 115 $\pm$ 10 |  |
|  8.50 $\pm$ 0.01| 128 $\pm$ 10 |  |
|  8.00 $\pm$ 0.01| 128 $\pm$ 10 |  |
|  7.50 $\pm$ 0.01| 128 $\pm$ 10 |  |

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTgxMTM4Njc5MiwxNTU2MjIwOTcwLDEzOD
c2MTI3MzQsLTIwNjc1MzE3NDEsLTYzMjc2MDY3OCwtMTI5MzUy
MjY0NF19
-->