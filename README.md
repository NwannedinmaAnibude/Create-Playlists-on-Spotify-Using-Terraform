# Create-Playlists-on-Spotify-Using-Terraform

**Project Overview**
This project involves using Terraform to create multiple Spotify playlists for different occasions like morning, evening, party night, etc. Terraform will be used to automate the creation and management of these playlists.

**Prerequisites**
1.Terraform Installed: Ensure Terraform is installed on your machine.
2.Docker Installed: Make sure Docker is installed and running.
3.Spotify Account: You need a Spotify account (without premium access)
4.Spotify Developer Account: Register and create an application to get the Client ID and Client Secret.
5.Spotify Provider for Terraform: Install and configure the Spotify provider for Terraform.
6.VS Code Editor: Recommended for editing Terraform files.

**STEPS TO COMPLETE THE PROJECT**
**1. Creating Terraform Code**
Start by setting up your Terraform project.
  1.Create a new directory for your Terraform project and navigate to it in your     terminal.
  2.Create a file named *main.tf*.
   
**2. Define Provider**
In main.tf, define the Spotify provider:

        provider "spotify" { 
           api_key = "?" 
         }

**3. Need API Key**
To interact with Spotify's API, you need a Client ID and Client Secret.

**4. Start with App Creation**
  1. Go to the Spotify Developer Dashboard.
  2. Log in with your Spotify account.
  3. Click on "Create an App".
<img width="447" alt="image" src="https://github.com/user-attachments/assets/9ba232ba-3141-4e04-9f5d-19a6b1a3d8a7" />

  4.Fill in the required details and create the app.
    Name: My Playlist through Terraform
    Description: Create multiple Spotify playlists using Terraform.
    Redirect URIs: http://localhost:27228/spotify_callback
1.Click on Settings and note down the Client ID and Client Secret.

<img width="416" alt="image" src="https://github.com/user-attachments/assets/3ab0a994-d633-47c2-ad4c-b2225ebccb06" />


**5. Enter Details**
Create a file named .env to store your Spotify application's Client ID and Secret:
    *SPOTIFY_CLIENT_ID=<your_spotify_client_id> SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>*
​
**6. Run the Spotify Auth App and Get the API Key**
Make sure Docker Desktop is running, and start the authorization proxy server:
    *docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy*
