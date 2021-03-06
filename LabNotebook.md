# Lab Notebook 

### Adam Schonewille 31590136 
### Akshiv Bansal 35072131

## Day 1 2018 02 06
### Figuring out Reflection and Transmission Coefficients:

We want to first characterize the first mirror by measuring it's transmission and reflection coefficients. We can do this by directly measuring the incident beam intensity, reflected beam intensity and transmitted beam intensity using a power meter.

![Reflection Transmission Setup](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/ReflectionTransmissionSetup.png) 
*Figure: Optical Bench Setup*

### Mirror Reflectivity
Transmission and Reflection Coefficients of the both mirrors involved in the optical cavity
#### $M_1$ Characteristics

![M1 Mirror measurement](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/Coeffs%20Measurement.jpg)
*Figure: Measuring M1 Characteristics*

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

#### $M_2$ Characteristics

![M1 Mirror measurement](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/Coeffs%20Measurement%202.jpg)
*Figure: Measuring M2 Characteristics*

Incident for $M_2$:
$(0.345 \pm 0.005)$ mW 

Transmission for $M_2$:
$(1.05 \pm 0.05) \mu$W 

Reflection for $M_2$:
$(0.338 \pm 0.005)$  mW

 | Mirror | Reflection |Transmission | Sum |
 |--|--|--|--|
  $M_1$ | $0.986 \pm 0.004$ | $0.0111 \pm 0.0001$ | $0.998 \pm 0.004$ |
  $M_2$ | $0.98 \pm 0.02$ | $0.00304 \pm 0.00005$ | $0.98 \pm 0.02$ 

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

Beam Waist = $0.393  \pm 0.019$ 

[//]: <> (	Error stuff inserted here as a comment
		dm90 = 0.01352992442
		m90 = 9.56627
		dm10 = 0.0140566
		m10 = 9.95935)

This experiment was repeated for a different optical cavity length
Now at 25.2 cm
17.98 mV 6.3538 ~100%
16.2 mV 9.5624 ~90%
1.77 mV 9.9366 ~10%
Beam Waist = ~0.3742 mm

This value has not changed significantly and is with in the error of the previous measurement.
The beam fronts look this
![Beam Fronts](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/IMG_4340.jpg)
*Figure: Beam waist inside confocal planar cavity*

$$W_0 = 1.2mm,\ \ \lambda = 632.8nm, \ \ R_2 = 30cm$$
For the focal length of the concave mirror we get:
$$ r_0 = \frac{\lambda}{\pi}\sqrt{L(R_2-L)} \approx 0.174mm$$

Given that our coupling lens has a focal length of 50cm, and the optical path to the first mirror is almost 50cm, we expect the beam to come to a focus just inside the cavity. We can solve for a focal length given our beam parameters. Using the fact that the light coming into the coupling lens has a much longer coherence length than the focal length of the lens we get that:
$$ r_0^2 = \frac{\lambda}{\pi * r_{laser}}*f \implies f = 51.77cm$$ 
Unfortunately, no such focal length lens exists in the lab. We live with the imperfect mode match of 50cm. 

We looked to measure the beam waist around 25cm, we recalculate a theoretical beam waist for this distance. 
$$ W^2/2 = \frac{\lambda}{\pi}\sqrt{L(R_2-L)} \implies W = 0.30mm$$

In reality we get values ranging from 0.393mm to 0.374mm, which gives us a percent difference of ~28\%. While this is a large difference, we expect the beam in reality to be more spread out than predicted in theory. Overall the beam is not being focused exactly where it should be, its passing through non thin elements, and the beam is not being focused exactly. Lastly there are significant measurement uncertainties related to the knife edge measurements. 

We can back calculate the ideal cavity length based on our 50cm focal length. Doing this we get L = 9.6, 20.4 . This is the cavity that would best match the beam radius. This is best cavity length for mode matching the focal length. This is length that corresponds with beam waist of 0.348mm.

## Day 2 2018 02 13
### Optical Cavity Set-up and Piezo Calibration:

We aligned the laser to set up the optical cavity in the following way:

 - Removed the first mirror $M_1$. Aligned the mirrors so that the beam was parallel to the optical table surface throughout the setup.
 - Added the $50~$cm lens to the beam path and centered the laser spot on it.
 - Reinserted the first $M_1$ mirror into the setup on the micrometer stage at about $50~$cm from the lens.
 - Set the second mirror, $M_2$, to be $15~$cm from the first mirror as to create a resonant cavity with a length of $15~$cm.
 - Observed the oscillating/changing time-dependent modes of the resonating beam with the CCD camera.

When only M1 is placed in the beam path, it dramatically reduces the intensity that was going to the end of the optical path. 	

When we add the second mirror and if it is misaligned, there is practically no transmission. Any light which survives is likely being bent around the central path, so there is much lower intensity than with the single mirror.  

Once we correctly align the cavity, the intensity goes back up. In fact the cavity becomes much more intense as the cavity begins to resonate. The cavity pulse brightly, and during those pulse the intensity is significantly higher than the M1 intensity. Outside of those pulse, the cavity transmission is fairly anemic. 

#### Piezo Calibration:
For the piezo actuator we want to find the calibration of the device, that is to say we want to investigate and find any relationship between the frequency or voltage and travel of the piezo when it vibrates. We can do this by looking at the resulting laser beam when the piezo is excited and the cavity length changes with time due to controlled vibrations.

This setup took the longest time and the majority of our time, which was what we expected to take the longest in our lab outline. Our major difficulty was getting a periodic signal that we were able to measure from the 

These measurements are very sensitive to noise and disturbances caused by sounds and other vibrations picked up and conducted by the table (walking/breathing).  

Using $\lambda$ = 632.8$~\mu m$
 
 Datasheet Calibration term: 0.116$~\mu m/V$  

We apply a ramp function from the signal generator into the piezo controller. 
 
Optical cavity Length: 150 $\pm$ 1 mm 
| Frequency $(Hz)$ | Voltage Peak-to-peak $(V)$ | $\Delta$Time or Period $(ms)$ | Slope $(V/s)$| $\Delta$Voltage $(V)$ | Piezo Calibration$(\mu m/V)$|
|--|--|--|--|--|--|
| 22.14 $\pm$ 0.01| 47.8 $\pm$ 0.2 | 2.10 $\pm$ 0.02| 2117 $\pm$ 8.9 | 4.44 $\pm$ 0.046 | 0.07118 $\pm$ 0.00074 |
| 22.14 $\pm$ 0.01| 25.1 $\pm$ 0.3 | 1.895 $\pm$ 0.075 | 1111 $\pm$ 13 | 2.11 $\pm$ 0.087| 0.150 $\pm$ 0.0062|
| 22.14 $\pm$ 0.01| 10.2 $\pm$ 0.3 | 2.00 $\pm$ 0.02|452 $\pm$ 13| 0.903 $\pm$ 0.028| 0.35 $\pm$ 0.011|
| 223.7 $\pm$ 0.1| 48.0 $\pm$ 0.1  | 0.236 $\pm$ 0.024|21500 $\pm$ 45.8| 5.07 $\pm$ 0.516| 0.0624 $\pm$ 0.00635|
| 1018  $\pm$ 1| 48.0 $\pm$ 0.1    |0.0428 $\pm$ 0.0036|97700 $\pm$ 225|4.18 $\pm$ 0.352| 0.0756 $\pm$ 0.0064|

Optical cavity Length: 295 $\pm$ 1 mm 
| Frequency (Hz) | Voltage Peak-to-peak (V) | $\Delta$Time or Period $(ms)$ | Slope $(V/s)$| $\Delta$Voltage $(V)$ | Piezo Calibration$(\mu m/V)$|
|--|--|--|--|--|--|
| 186 $\pm$ 1| 48 $\pm$ 0.2 | 1.08 $\pm$ 0.022|17900 $\pm$ 121|19.4 $\pm$ 0.414|0.016 $\pm$ 0.00035|
| 22.38 $\pm$ 0.01| 48 $\pm$ 0.2 |8.55 $\pm$ 0.29|2150 $\pm$ 9.0|18.4 $\pm$ 0.63|0.017 $\pm$ 0.00059|
| 1867 $\pm$ 1| 48 $\pm$ 0.2 | 0.0512 $\pm$ 0.004|179000 $\pm$ 753|9.18 $\pm$ 0.72| 0.034 $\pm$ 0.0027|
| 22.41 $\pm$ 0.01| 26.6 $\pm$ 0.3 |4.08 $\pm$ 0.46|1190 $\pm$ 13.5|4.86 $\pm$ 0.55|0.065 $\pm$ 0.00737|
| 22.43 $\pm$ 0.01| 9.6 $\pm$ 0.2 |6.32 $\pm$ 1.68|431 $\pm$ 9.0|2.72 $\pm$ 0.73|0.116 $\pm$ 0.031|


Optical cavity Length: 200 $\pm$ 1 mm 
| Frequency (Hz) | Voltage Peak-to-peak (V) | $\Delta$Time or Period $(ms)$ | Slope $(V/s)$| $\Delta$Voltage $(V)$ | Piezo Calibration$(\mu m/V)$|
|--|--|--|--|--|--|
| 22.51 $\pm$ 0.01| 48 $\pm$ 0.1| 2.69 $\pm$ 0.13| 2160 $\pm$ 4.6|5.81 $\pm$ 0.28| 0.054 $\pm$ 0.0026|
| 228.8 $\pm$ 0.1 | 48 $\pm$ 0.1| 0.275 $\pm$ 0.029|21960 $\pm$ 46.8|6.04 $\pm$ 0.637| 0.052 $\pm$ 0.0055$\pm$ | 
| 1047 $\pm$ 1| 48 $\pm$ 0.1    | 0.051 $\pm$ 0.0002| 101000 $\pm$ 230|5.13 $\pm$ 0.023| 0.0617 $\pm$ 0.00028|
| 22.7 $\pm$ 0.1| 29.7 $\pm$ 0.2| 2.74 $\pm$ 0.22|1350 $\pm$ 10.9|3.69 $\pm$ 0.30| 0.0856 $\pm$ 0.0069|
| 22.7 $\pm$ 0.1|  9.7 $\pm$ 0.2| 2.495 $\pm$ 0.135|440 $\pm$ 9.3|1.1 $\pm$ 0.06|0.288 $\pm$ 0.0167|

![Peaks for Piezo Calibration](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/peaksExample1_15cm.jpg)
*Figure: For finding the piezo calibration the free spectral range was found as the difference in time between periodic peaks. This allowed us to calculate the calibration constant. Also seen here is the ramp voltage that was recorded, which should range from 0 V to 47.8 V but instead varies from -0.1 V to 0.92 V. Because of this the ramp data was not used and a new linear line was used based off the recorded applied voltage*

![FT Analysis method](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/20180312-FT-15cmRawData.jpg)
*Figure: We chose to try to find the periodicity of the the graph by taking the fast fourier transform (FFT) of the data and finding the fundamental frequencies. For the first graph we found that the frequency found was 480 Hz and was comparable to the measured frequency of 476 Hz. We went against this method however because the resolution in frequencies was very broad and gave us very little variability.* 

We find that the piezo calibration is a a function of the peak to peak driving voltages. This is likely due to some sort of non-linear response in the controller piezo stack. Ideally, this calibration would be constant and independent of all variables that may change in the experiment. In general, we find that the calibration is significantly lower than Thor Labs specification. For low voltages however, we get values close to or at least on the order of the calibration value. This leads us to believe that specification is probably given for a driving voltage around 0V.


## Day 3 2018 02 27
### Piezo Calibration Analysis and Q-Factor (Finesse):

### Cavity Observations
We start by creating a very short cavity of length 1.5cm then we adjust the alignment of the cavity to maximize power in the 0,0 mode. The 0,0 mode has the most power transmitted through it. 
![0,0 Mode](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111632.jpg)
*Figure: TEM 0,0 Mode Picture*
![Gaussian Intensity](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20Peizo%20control/Guassian%20Intensity.png)
*Figure: Here it is fairly clear that we have close to a pure Gaussian beam, but we managed to saturate the sensor making it hard to distinguish the top of the curve. These points were removed from the plot prior to curve fitting in MATLAB* 

Then we adjust the $M_2$ mirror to put the cavity into a mode match for the TEM 1,0 and 0,1 modes
![1,0](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111643.jpg)
*Figure: TEM 1,0 Mode Picture*
*Because it is hard to maintain this exact cavity length the optical cavity occasionally goes into 2,0 mode.* 
![2,0](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111637.jpg)
*Figure: TEM 0,1 Mode Picture*
![IntensityGH1,0](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/Intensity%20vs.%20X,%20GH%201,0.png)
*Figure: Cross-sectional pixel analysis. Here we see that the intensity clearly tracks the expected power distribution.*

At this distance the modes are all primarily Hermite-Gauss Polynomial solutions. 

By applying a significant voltage, we can get a mixed mode between 2,2 and 0,0 for the HG polynomial. 

Now we set the cavity 15cm, here there are far more mode possible modes available.
We found that we primarily we got Laguerre–Gaussian modes 
First we got to a 2,4 mode
![LG-2,4](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111629.jpg)
*Figure: TEM LG 2,4 Mode*
![IntensityLG2,4](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/Intensity%20vs.%20X,%20LG%202,4.png)
Then by increase the path length very slightly(~0.25mm) we got the cavity into a 7,1 LG mode. 
![LG-7,1](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Images%20trying%20to%20maxmize%20power%20in%20first%20mode,%20at%20Cavity%20Length%2012.5cm%20No%20Peizo%20control/capture_20180227_111631.jpg)
*Figure: TEM LG 7,1 Mode*
![Intensity LG 7,1](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Figures/Intensity%20vs.%20X,%20LG%207,1.png)
*Figure: Using the intensity curves we can clearly see that the intensity is correlated strongly with the modes. This also helps us look at the power transmission inside the cavity for various modes.* 

Long cavities allow to get far more modes, of higher order than are possible at short cavity lengths. This is primarily related to the beam waist at the $M_2$ mirror. Having a more diffuse beam on a curved mirror affects the path length seen by the photons on the outskirts of the beam compared to the middle. This means that they will be diffracted by different amounts on every trip through cavity producing the kind of spherical symmetry we see in the cavity observations. In the limit where the cavity is of size 0, we expect to see just the 0,0 mode corresponding to a pure Gaussian beam. 

The laser is not actually perfectly monochromatic (single mode), so the different photons have slightly different integer wave-paths inside the cavity. This explains why the 0,0 mode carries the most power because none of those photons are being diffracted away, out of the cavity. 

Tune the optical cavity to find the max power when the laser is in the $TEM_{00}$ mode. After >25 cm of cavity length the transmitted laser seems to become marginally unstable. 

Last point of resonance is when the optical cavity length is 29.75 cm. This measurement leads us to believe that the max cavity length is at or around 30 cm.

Set the cavity length to 1.5 cm and record the optical power transmitted as measured by the photo-diode (PD). This plot has several peaks that occur in a period pattern. 

### Resonator Finesse 

The optical cavity length was set to multiple different lengths and the optical power transmitted was measured using the photo-diode. 

| Optical cavity Length (mm) | Frequency (Hz) | Finesse |
|--|--|--|
|  15 $\pm$ 2|  73.4 $\pm$ 0.1 | 151.85 $\pm$ 35.77 |
|  50 $\pm$ 2|  73.4 $\pm$ 0.1 | 242.36 $\pm$ 93.46|
| 100 $\pm$ 2|  73.4 $\pm$ 0.1 | 121.64 $\pm$ 44.02|
| 150 $\pm$ 2|  73.4 $\pm$ 0.1 | 42.81 $\pm$ 10.53| the best so far
| 200 $\pm$ 2|  73.4 $\pm$ 0.1 | 54.56 $\pm$ 15.11|
| 250 $\pm$ 2|  73.4 $\pm$ 0.1 | 19.44 $\pm$ 5.3 |
| 300 $\pm$ 2|  73.4 $\pm$ 0.1 | 133.35 $\pm$ 53.70|

![Finesse Plot](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Finesse1.jpg)
*Figure: This plot shows the relation between the optical cavity length and the finesse of the cavity. Here we see that the theoretical finesse is a constant at 185.55 and that our experimental finesse varies for different optical cavity lengths.*


The 150 mm Optical  Cavity length gave the clearest signal for the transmitted optical power. The signal did not fluctuate as much as other measurements and the periodicity of the signal was very clear. This was the recommend length to use as it is the focal length of the mirror used. This is because the optical cavity consist of two mirrors: one flat, and one with a radius of curvature of 30 cm. Also, $F = ROC/2$, so a ROC of 30 cm gives us the 15 cm focal length.

We expect that the line width of the HeNe Laser, to be significantly larger than the linewidth of cavity. This is clear from the linewidth data we collected. 

The Q-factor
$$Q = qF, \ \ q = \frac{L}{\lambda}$$

| Optical cavity Length (mm) | Q Factor ($\times 10^7$)|
|--|--|--|
|  15 $\pm$ 2| 0.4 $\pm$ 0.1|
|  50 $\pm$ 2| 1.9 $\pm$ 0.8|
| 100 $\pm$ 2| 1.9 $\pm$ 0.7|
| 150 $\pm$ 2| 1.01 $\pm$ 0.3| 
| 200 $\pm$ 2| 1.72 $\pm$ 0.3|
| 250 $\pm$ 2| 0.77 $\pm$ 0.2|
| 300 $\pm$ 2| 6.32 $\pm$ 2.5|

![Q-Factor plot](https://raw.githubusercontent.com/akshivbansal/phys408OpticalCavity/master/Q-Factor1.jpg)
*Figure: This plot shows the relation between the optical cavity length and the Q-factor of the optical cavity. Theoretically, the Q-factor should increase proportionally to the optical cavity length, but here we see that the experimental Q-factors found are almost constant for varying optical cavity length. It should also be noted that the very first point for the Q-factor aligns very well to the expected value. We suggest that for the very small cavity length we were only able to get low order modes that isolate the laser and provide less variability in signal.*

How long would a tuning fork need to ring out at 440Hz to have the same quality factor? $$\tau = \frac{Q}{2\pi\nu} = \frac{1.92\times10^7}{2\pi*440\ \mathrm{Hz}} = 1.93 \ \mathrm{Hours}$$
Clearly, this is unreasonable. Typically tuning forks become imperceptibility loud in a matter of seconds, not hours. 

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
*Figure: This plot showcases the drop of power as the cavities modes become degenerate. As the cavity passes out of a stability region the power drops back to the misaligned baseline.*

The most challenging part of this lab was interpreting and then processing the finesse data. The issue was we didn't have a complete understanding of the underlying physics when we took the data, which made it hard to make extra measurement to ease some the data processing. If we had an extra lab section after we did some of the analysis, we could have taken oscilloscope cursor data, to speed up the finesse calculations. We thought that actually building and aligning the cavity would be the most challenging, but this turned out to be relatively easy. 

## File Directory Log

Each data file is time stamped with when it was collected. 
Each data file is in placed in the directory where it belongs depending on which part of the experiment it was collected for. 

### Piezo Calibration
15cm

	2018-2-13-12.47-47.6V-48V-22.14Hz-OC15cm.csv 
	2018-2-13-12.51-24.8V-25.4V-22.14Hz-OC15cm.csv 
	2018-2-13-12.54-9.9V-10.4V-22.14Hz-OC15cm.csv 
	2018-2-13-12.55-223.7Hz-48V-OC15cm.csv 
	2018-2-13-12.58-1018Hz-48V-OC15cm.csv
20cm

	2018-2-13-13.35-22.51Hz-48V-OC20cm.csv 
	2018-2-13-13.36-1047Hz-48V-OC20cm.csv 
	2018-2-13-13.36-228.8Hz-48V-OC20cm.csv 
	2018-2-13-13.38-29.7+-0.2V-22.7Hz-OC20cm.csv 
	2018-2-13-13.40-9.7+-0.2V-22.7Hz-OC20cm.csv
30cm

	2018-2-13-13.11-186Hz-48V-OC30cm.csv 
	2018-2-13-13.12-1867Hz-48V-OC30cm.csv  
	2018-2-13-13.12-22.38Hz-48+-0.2V-OC30cm.csv 
	2018-2-13-13.17-26.6+-0.3V-22.41Hz-OC30cm.csv 
	2018-2-13-13.22-9.6+-0.2V-22.43Hz-OC30cm.csv

### Finesse Measurements
	2018-2-27-11.56-73.4Hz-50.6V-OC1.5cm.csv 
	2018-2-27-12.03-73.4Hz-50.6V-OC5cm.csv  
	2018-2-27-12.04-73.4Hz-50.6V-OC5cmZoomedIn.csv   
	2018-2-27-12.11-73.4Hz-50.6V-OC10cmZoomedIn.csv  
	2018-2-27-12.12-73.4Hz-50.6V-OC10cm.csv  
	2018-2-27-12.13-73.4Hz-50.6V-OC15cm.csv  
	2018-2-27-12.14-73.4Hz-50.6V-OC15cmZoomedIn.csv 
	2018-2-27-12.17-73.4Hz-50.6V-OC20cmZoomedIn.csv 
	2018-2-27-12.18-73.4Hz-50.6V-OC20cm.csv 
	2018-2-27-12.20-73.4Hz-50.6V-OC25cm.csv 
	2018-2-27-12.22-73.4Hz-50.6V-OC25cmZoomedIn.csv 
	2018-2-27-12.25-73.4Hz-50.6V-OC29.5cm.csv 
	2018-2-27-12.26-73.4Hz-50.6V-OC29.5cmZoomedIn.csv 

### Cavity Stability Measurements
	2018-2-27-12.52-73.4Hz-50.6V-Shorter than 30.csv 
	2018-2-27-12.52-73.4Hz-50.6V-approx30.csv 
	2018-2-27-12.52-73.4Hz-50.6V-justPast30.csv 
	2018-2-27-12.52-73.4Hz-50.6V-well Past30.csv

## Matlab Code
All code and raw data is publicly available here: https://github.com/akshivbansal/phys408OpticalCavity and is distributed under the GPL 3.0 license. 

Files of relevance to the data processed are:

	correctTimeSeries.m
	fastFourierTransform.m
	finesseCalc.asv
	finesseCalc.m
	lengthVsPower.m
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTgwNzM0NzQ1NCwyMDM5MzMzOTYyLC04MD
czNDc0NTQsNzcwNzM0MTAzLC04MTk0OTUzMDMsMTc0ODMzMzI0
OSwtMTcyNzY2NTQxOCwxODk1OTMyMjIyLDUwOTgyNjMxNSw5Nz
MwNzc5NTUsNTA5ODI2MzE1LDk3MzA3Nzk1NSwxNjc5OTc2NDU0
LDE2NzMzMzI2NCwtMTk1MjI1NzQ0LDU4MTYyNzY4OCwtMTk1Mj
I1NzQ0LDU4MTYyNzY4OCwtMTk1MjI1NzQ0LDU4MTYyNzY4OCwt
MTk1MjI1NzQ0LDU4MTYyNzY4OCwtMTk1MjI1NzQ0LDU4MTYyNz
Y4OCwtMTk1MjI1NzQ0LDU4MTYyNzY4OCwtMTk1MjI1NzQ0LDU4
MTYyNzY4OCwtMTk1MjI1NzQ0LDU4MTYyNzY4OCwtMTk1MjI1Nz
Q0LDU4MTYyNzY4OCwtMTk1MjI1NzQ0LDU4MTYyNzY4OCwtODMy
MDI0NzQxLC0xODQzOTY3MDA0XX0=
-->