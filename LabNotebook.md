# Lab Notebook 
## Day 1 2018 02 06
### Figuring out Reflection and Transmission Coefficients:

We want to first characterize the first mirror by measuring it's transmission and reflection coefficients. We can do this by directly measuring the incident beam intensity, reflected beam intensity and transmitted beam intensity using a power meter.


![Reflection Transmission Setup](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/ReflectionTransmissionSetup.png) 


## Mirror Reflectivity
Transmission and Reflection Coefficients of the both mirrors involved in the optical cavity
### $M_1$ Characteristics
Reversed $M_1$ 
Incident Beam:
$(18.08 \pm 0.05)$ mW 

Transmission:
$(0.200 \pm 0.001 )$ mW 

Reflected: 
$(16.34 \pm 0.02)$ mW 

Reason for losses in this case: we had to reflect it off an additional mirror in order to take this measurement. We find the power loss of this additional mirror 

Power before Additional Mirror
$(19.51 \pm 0.01)$ mW
Loss of about 1.5 mW into $M_1$ 
Then out of the $M_1$ another loss of 1.5

### $M_2$ Characteristics
Incident for $M_2$:
$(0.345 \pm 0.005)$ mW 

Transmission for $M_2$:
$(1.05 \pm 0.05) \mu$W 

Reflection for $M_2$:
$(0.338 \pm 0.005)$  mW

 | Mirror | Reflection |Transmission | Sum |
 |--|--|--|--|
  $M_1$ | $0.986 \pm 0.004$ | $0.0111 \pm 0.0001$ | $0.998 \pm 0.004$ |
  $M_2$ | $0.98 \pm 0.02 $ | $0.00304 \pm 0.00005 $ | $0.98 \pm 0.02$ 

Both mirrors are very close to one having a unity sum of the reflection and transmission coefficients, which is what we would expect. Incorporating the loss in the first mirror was important in order to correct the original reflection coefficient from ~0.904 to the more realistic value of 0.986. 

### Theoretical Finesse, Free Spectral Range, and Line-width
#### Finesse
Now we can calculate the finesse with cavity length L = 15cm and wave number k = 9.85nm
 $$I = \frac{I_{max}}{1 + \frac{2\mathscr{F}}{\pi}^2\sin^2(kL)} $$
 $$\mathscr{F} = \sqrt{ \frac{\pi(\frac{I_{max}}{I} - 1)}{2\sin^2(kL)}}$$
 $$\mathscr{F} = \frac{\pi\sqrt{r}}{1-r},\ \ with \ \ r = \sqrt{R_1R_2}$$
$$ r = \sqrt{R_1R_2}, \delta r = r \sqrt{(\frac{\delta R_1}{R_1})^2 + (\frac{\delta R_2}{R_2})^2}\ ,\ \  r = 0.98 \pm 0.02 $$ 
$$\delta \mathscr{F} = \frac{\pi (1+r)}{2*(1-r)^2\sqrt{r}} * \delta r  , \ \ \mathscr{F} = 185.55 \pm 23.2 \approx 186 \pm 23 $$

#### Free Spectral Range
$$ \nu_F = \frac{c}{2L} = (1.0 \pm 0.2)\times 10^9 Hz $$

#### Line-width (Spectral Width, Full Width Half Max)
$$\nu_{FWHM} = \frac{\nu_F}{\mathscr{F}} = (5.38 \pm 0.265 )\times 10^6 Hz \approx (5.4\pm0.3)MHz $$

If we flipped the cavity and used the low reflectivity mirrors than there would be not very much power transmitted ~0, and the finesse would also be ~0. Line width would exceed the free spectral range meaning resonance is not possible. 


### Knife-edge Measurement for Beam Waist 
With the aforementioned setup the first mirror, $M_1$,  was removed and the knife edge was placed in it's spot.
For a  Optical Cavity length of 24.31 cm:
Unblocked Laser Starting power 
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

Linearly Interpolated Values
| Power (mW) | Knife Position (mm) | Percent Power |
|--|--|--|
| 1.8  | 9.95935 | 10% |
| 16.2 | 9.56627 | 90% |

Beam Waist = 0.393


This experiment was repeated for a different optical cavity length
Now at 25.2 cm
17.98 mV 6.3538 ~100%
16.2 mV 9.5624 ~90%
1.77 mV 9.9366 ~10%
Beam Waist = 0.3742

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

### Cavity Observations
We start by creating a very short cavity of length 1.5cm then we adjust the alignment of the cavity to maximize power in the 0,0 mode. The 0,0 mode has the most power transmitted through it. 
![0,0 Mode](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111632.jpg)
![Gaussian Intensity](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20Peizo%20control/Guassian%20Intensity.png)
Here it is fairly clear that we have close to a pure Gaussian beam, but we managed to saturate the sensor making it hard to distinguish the top of the curve. 

Then we adjust the $M_2$ mirror to put the cavity into a mode match for the TEM 1,0 and 0,1 modes
![1,0](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111643.jpg)
Because it is hard to maintain this exact cavity length the optical cavity occasionally goes into 2,0 mode. 
![2,0](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111637.jpg)
At this distance the modes are all primarily Hermite-Gauss Polynomial solutions. 

By applying a significant voltage, we can get a mixed mode between 2,2 and 0,0 for the HG polynomial. 

Now we set the cavity 15cm, here there are far more mode possible modes available.
We found that we primarily we got Laguerre–Gaussian modes 
First we got to a 2,4 mode
![LG-2,4](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111629.jpg)
Then by increase the path length very slightly(~0.25mm) we got the cavity into a 7,1 LG mode. 
![LG-7,1](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111631.jpg)

Long cavities allow to get far more modes, of higher order than are possible at short cavity lengths. This is primarily related to the beam waist at the $M_2$ mirror. Having a more diffuse beam on a curved mirror affects the path length seen by the photons on the outskirts of the beam compared to the middle. This means that they will be diffracted by different amounts on every trip through cavity producing the kind of spherical symmetry we see in the cavity observations. In the limit where the cavity is of size 0, we expect to see just the 0,0 mode corresponding to a pure Gaussian beam. 

The laser is not actually perfectly monochromatic (single mode), so the different photons have slightly different integer wave-paths inside the cavity. This explains why the 0,0 mode carries the most power because none of those photons are being diffracted away, out of the cavity. 



Tune the optical cavity to find the max power when the laser is in the $TEM_{00}$ mode. After >25 cm of cavity length the transmitted laser seems to become marginally unstable. 

Last point of resonance is when the optical cavity length is 29.75 cm. This measurement leads us to believe that the max cavity length is at or around 30 cm.

Set the cavity length to 1.5 cm and record the optical power transmitted as measured by the photo-diode (PD). This plot has several peaks that occur in a period pattern. 

### Resonator Finesse 

The optical cavity length was set to multiple different lengths and the optical power transmitted was measured using the photo-diode. 

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

### Confocal Cavity 

Experimentally the cavity will not resonate if $L \geq 30cm$
If we create the ABCD matrix for a wavefront taking a round trip through the cavity [M] is as follows
$$ [M] = [M_1][FreeSpace_{Cavity}][M_2][FreeSpace_{Cavity}]$$
$$ [M] = \begin{bmatrix} 1 & 0 \\ 0 & 1  \end{bmatrix}  \begin{bmatrix}1 & L \\0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ -2/30 & 1  \end{bmatrix} \begin{bmatrix} 1 & L \\ 0 & 1  \end{bmatrix} = \begin{bmatrix} 1 - \frac{2L}{30} & 2L - \frac{2L^2}{30} \\ \frac{-2}{30} & \frac{-2L}{30} + 1  \end{bmatrix}$$
We get valid cavities if $Cx^2 + (D-A)x - B = 0$, has real solutions so we find a bound on L to keep x real. 
$$ \frac{-2}{30}x^2 + (\frac{-2L}{30} + 1 - 1 + \frac{2L}{30} )x - 2L + \frac{2L^2}{30} = 0 $$
$$ \frac{2}{30}x^2 = -2L + \frac{2L^2}{30} \implies x = \sqrt{L^2 - 30L}$$
So valid cavity lengths have $$ L^2 \leq 30L \implies L \leq 30 $$ which matches our experimentation.

Similarly we can think through the stability conditions of the cavity in terms of the $g_1g_2$, factors. We know from Steck, that a cavity is stable and has non degenerate modes exactly when, $0 \leq g_1g_2 \leq 1$. Thus: 
$$0 \leq (1+\frac{L}{\infty})(1+\frac{L}{-30}) \leq 1 $$ This has solutions when $L \leq 30 cm$, which we also see experimentally, in that the modes become degenerate as the cavity becomes unstable.

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


![Power vs. Cavity Length, at end of 30cm Stability Reigon](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/Power%20vs.%20Cavity%20Length.png)

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzNzkyMjE1OTcsLTExNzgxMDYwMjYsLT
E4NDM5NjcwMDRdfQ==
-->