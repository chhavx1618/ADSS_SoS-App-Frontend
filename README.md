# ADSS-Application

An SOS-generation and alert creation flutter application developed as a part of Advanced Drone Surveillance System. 

## Introduction to the Application

This application has been created to generate SOS by a user who is stuck in some sort of emergency. It allows the user to create two types of SOS alerts - 

1. Soft Alert: When the situation is not immediately posing a threat to someone's life, soft SOS is raised. It does not lead to the locking and complete overlay of your mobile phone, but does send an alert to the command center and starts streaming your live location to the center.

2. Hard Alert: When the situation is posing a lethal threat to someone, hard SOS is raised. It leads to a complete overlay of your mobile phone, blocking all ports except microphone, to record the situation and internet port, for the app to be able to constantly feed your live location to the command center.

The application sends the signal further to command center, where the next action sequence is activated - alert is given to authorities and a drone is deployed to the target location.

## Features

#### 1. Live Location Sharing
Upon raising an SOS, your live location is immediately transferred to the designated Command Center, where the authorities are notified about the situation and a drone with inbuilt camera is deployed to start recording the disaster. 
   
#### 2. Mobile Phone Overlay
In case of a Hard SOS, your mobile phone is completely locked in order to protect your identity and other sensitive information that could be stored in your phone, all the ports are closed immediately. But what's great is that the microphone and the internet port still remains active, with the microphone recording everything and the internet port allowing the app to send your location updates constantly. 
   
#### 3. Secure storing of your data
When you first install the app, you have to enter your basic details such as your name, phone number, gender and other general details. This data is stored securely on MongoDB database which is connected with the application.
   
#### 4. Fast response, quick action
Immediately upon raising the SOS, an alert is transferred to the mobile phone, and the overlay starts happening. Along with this, an alert is transferred without delay to the Command Center where a further safety sequence is initiated. It has been taken great care of that at no stage must the user struggle or face delay when stuck in an emergency situation.

#### 5. Instant speech to text
When the microphone starts to record, the app converts all the speech it hears into text and transfers it to the Command Center and the cloud.

## Screenshots

Take a look around

<img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/9b90107c-d69d-43ee-82df-690892c6a308" alt="Logo and main screen" style="width:120px;">           <img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/c1c146ff-9134-45b7-aafe-6cf331312a08" alt="Getting Started" style="width:120px;">           <img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/85ebf09c-0781-4e98-a9ad-c08dcb222653" alt="Your Info" style="width:120px;">

<img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/ab6e381f-de9b-46d9-b388-33d21e72a2e5" alt="OTP verification" style="width:120px;">           <img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/c6bd24f2-1a86-41ed-a350-91346b616e3e" alt="Welcome page" style="width:120px;">           <img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/6d67c213-533c-46f2-892f-9d75c03da73f" alt="Swipe to raise SOS" style="width:120px;">

<img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/c78fe2e9-f795-4436-9621-1d6eca66ab5b" alt="Swipe up to raise SOS loading screen" style="width:120px;">           <img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/c78fe2e9-f795-4436-9621-1d6eca66ab5b" alt="Live location and coordinates" style="width:120px;">           <img src="https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/9fa888b4-8bdf-481e-9b6f-70daf871c245" alt="Speech to text" style="width:120px;">


## Future Goals

For now, our app is defined within the actions of raising and generating an SOS and creating alerts in the command center. In future, we are working to add many more features to our app, a few main ones being - 

1. Making it even easier to raise an alert
2. Having options of different types of alert when the situation is not imminently threatening.
3. Adding city mapping features to let users know how far or near they are to immediate support.
4. Finding ways to allow others to create SOS for others in danger
5. Creating methods to verify the correctness of a raised SOS.
