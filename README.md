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
![WhatsApp Image 2024-02-10 at 23 02 31_ac6f7aa8](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/9b90107c-d69d-43ee-82df-690892c6a308) 
<img src="[image_url_here](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/9b90107c-d69d-43ee-82df-690892c6a308)" alt="Image Description" style="width:300px;">

![WhatsApp Image 2024-02-10 at 23 02 30_f4e5b326](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/c1c146ff-9134-45b7-aafe-6cf331312a08)
![WhatsApp Image 2024-02-10 at 23 02 29_cb2cb1db](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/85ebf09c-0781-4e98-a9ad-c08dcb222653)
![WhatsApp Image 2024-02-10 at 23 02 29_6f13ad0c](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/ab6e381f-de9b-46d9-b388-33d21e72a2e5)
![WhatsApp Image 2024-02-10 at 23 02 28_95c0dc29](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/c6bd24f2-1a86-41ed-a350-91346b616e3e)
![WhatsApp Image 2024-02-10 at 23 02 26_f9a46f0a](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/6d67c213-533c-46f2-892f-9d75c03da73f)
![WhatsApp Image 2024-02-10 at 23 02 18_f55a6aa5](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/c78fe2e9-f795-4436-9621-1d6eca66ab5b)
![WhatsApp Image 2024-02-10 at 23 02 18_b2ed894a](https://github.com/SkyGuard-ADSS/ADSS_SoS-App-Frontend/assets/152146397/9fa888b4-8bdf-481e-9b6f-70daf871c245)


## Future Goals

For now, our app is defined within the actions of raising and generating an SOS and creating alerts in the command center. In future, we are working to add many more features to our app, a few main ones being - 

1. Making it even easier to raise an alert
2. Having options of different types of alert when the situation is not imminently threatening.
3. Adding city mapping features to let users know how far or near they are to immediate support.
4. Finding ways to allow others to create SOS for others in danger
5. Creating methods to verify the correctness of a raised SOS.
