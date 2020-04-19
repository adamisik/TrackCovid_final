# TrackCovid_final

# Inspiration
One problem with COVID-19 is that infected people don't know when they should go to the hospital. We have an idea how to inform the patients, based on certain health indicators, at which point they should search professional help. It involves the usage of pulse oximeters/smart wearables and health data provided with Smart Wearables.

# What it does
Our idea was to focus on the app dev, as there are already functional bluetooth pulse oximeters in the market which can be used for the data generation. Also, there are apps (like Oximeter, Whoop) which can track metrics like SpO2, Respiratory rate or Pulse. However, they are not using any thresholding on these metrics and won't notify you when your oxygen levels are critical. This is our USP. We want to develop a thresholding algorithm, which would notify you when your health status is critical. If your health stats are in a dangerous zone, you will get a recommendation to contact your local physician, who will decide the further measures to take.

# #How we built it
We used data from an israeli clinic which provided us with SpO2, Respitory and Pulse metrics. In Matlab AppDeveloper we created a thresholding algorithm to inform users about their current health status. There are three different states for each metric:
1. Green = Metrics look good
2. Orange = Pay attention
3. Red = Get in contact with your physician 

# What's next for TrackCovid
We are also thinking about:
- predictive monitoring, where you will be notified even before you have serious breathing difficulties
- integratating informtion about nearest hospital with free capactiy
- integrating video call (e.g.CGM Clickdoc or doccura.de) with physician to facilitate communication

# Instructions
Pull the .mlapp file together with the helper functions into your Matlab-environment. Open the .mlapp file in Matlab and run it in the App Designer. Make sure that the data.mat file is in your path.

# References 
Goldberger AL, Amaral LAN, Glass L, Hausdorff JM, Ivanov PCh, Mark RG, Mietus JE, Moody GB, Peng C-K, Stanley HE. PhysioBank, PhysioToolkit, and PhysioNet: Components of a New Research Resource for Complex Physiologic Signals (2003). Circulation. 101(23):e215-e220.
