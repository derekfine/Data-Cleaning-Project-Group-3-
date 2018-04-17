# Group 3 Codebook

## Variable Key for Task 1
Variable Name | Definition
------------- | ----------
Subject | Test subject unique identifier for each of the 30 participants.
Activity | Type of motion activity the subject is measured performing.

## Activity Abbreviation Key
Each activity has a description comprised of a combination of abbreviated terms. An example description, "tBodyAcc-mean()-X" would translate to the *mean* measurement in the *time domain,* of *acceleration* from the wearer's *body,* across the *X-axis*. 

Abbreviation | Definition
------------- | ----------
Acc | Indicates data taken from a device's accelerometer.
Body | Indicates measurements derived from the acceleration of the wearer's body.
f | Indicates frequency domain signals.
Gravity | Indicates measurements derived from the acceleration of gravity.
Gyro | Indicates data taken from a device's gyroscope.
Jerk | Signals derived from the linear acceleration and angular velocity of the wearer's body in three dimensions (XYZ).
Mag | Calculated magnitude of the signals recorded.
Mean | The mean value of a given measurement.
Std | The standard deviation of a given measurement.
t | Denotes time doman signal. 
X | Data for the X-axis of motion.
Y | Data for the Y-axis of motion.
Z | Data for the Z-axis of motion.


## Data for Task 1



## Task 1 Cleaning Process



## Variable Key for *tidy2.txt*, *tidy2_a.txt*, and *tidy2_b.txt*

Variable Name | Definition
------------- | ----------
Electricity | Daily average of electrical generation produced in MWh
Year| Year of observation
SO2 | Daily average of sulfur dioxide emitted in short tons
NOx | Daily average of nitrous oxides emitted in short tons
Capital | Capital stock measured in 2017 USD
Employees | Number of employees 
Coal_hc | Daily average heat content of coal in MWh
Oil_hc | Daily average heat content of oil in MWh
Gas_hc | Daily average heat content of natural gas in MWh
CAA | Dummy indicating if Phase I of CAA had been announced; equals 1 if the year is 1990 or later

## Task 2 Cleaning Process
1. Column names were changed simultaneously with data importation to descriptive titles.
2. Unnecessary columns were dropped, leaving only the Plant ID, year, input variables, and output variables.
3. Electrical output was converted from annual production measured in kWh to daily averages measured in MWh.
4. Heat contents of coal, oil, and natural gas were converted from annual totals measured in Btu to daily averages in MWh.
5. Capital stock was converted from 1973 USD to 2017 USD.
6. A factor variable was created to indicate if Phase I restrictions of the Clean Air Act had been announced.
7. For *tidy2_a.txt*, table represents averages for each company accross all time periods.
8. For *tidy2_b.txt*, table represents averages for all companies in each time period.
