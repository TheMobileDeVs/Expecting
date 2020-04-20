
Group Project - README Template
===

# Expecting

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description

To remind pregnant women to do the various things deemed neccesary to have a healthy pregnancy.

### App Evaluation

- **Category:** Health and Lifestyle
- **Mobile:** This app would be optimized for mobile use
- **Story:** Allows users to have a reliable scorce to keep them alert and conscius of neccesary tasks or actions during their pregnancy
- **Market:** Pregnant Women
- **Habit:** This app would be used based on how often the user may need to be remineded of a pregnancy related necessity
- **Scope:** 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [X] User can register and login (done)
- [ ] User can add name, age, weeks pregnant
- [ ] User can add information given from doctor

**Optional Nice-to-have Stories**

- [ ] Ring alarm when time to eat or take required medication
- [ ] Reminder of when you should go to bed
- [ ] Encouraging reminders sent throughout the day


### 2. Screen Archetypes

* The Login or Register Screen 
   * User can login
   * Creates username and password
   
* User Profile Screen 
   * User adds age, weeks pregnant
   * User can add if they are on multivitamins
   * User can add a bedtime
   * User can add if they are physically
   * User can create unique reminders 
   * User can logout
   * User can delete account

* Home Page
   * User can adjust the amount of reminders needed
   * User can delete reminders
   * User can specify what time they would like to be reminded 
   
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home
* Schedule
* Edit Profile

**Flow Navigation** (Screen to Screen)

* Login Screen => Home Page (If user has already signed up)
- OPTIONS: 
- If sign up button is tapped the user will be taken to the registration page 
- OR: 
- Username and password creation page
- Personal Info
- Maternal Welfare page
- Then to Homepage

* Home Page Screen => Schedule page
* Home Page Screen => Edit profile page
* Profile Page => Login Screen (If user logs out or deletes account)

## Wireframes

<img src="https://i.imgur.com/41dXEGu.jpg" width=600 >

### [BONUS] Digital Wireframes & Mockups!
<img src="https://i.imgur.com/sB6dYim.jpg" width=600 >

### [BONUS] Interactive Prototype

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/OoCElfrSOo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Schema 

### Models
**Posts**
| Property | types | Description |
| --- | --- | --- |
| Reminder | String | Unique notification to the user |
| Profile | String | User information |
| Additional Notes | String | Additional details information for reminder |
| Time | Date and Time | User will get remind at a specific time |
| Reminder Name | String | Title of Reminder |
| URL | Hyperlink | Add links |
| Image | File | Image user attach |
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]

```
let query = PFQuery(className: "Items")
        query.includeKeys(["title", "dateTime", "description", "status"])
        query.limit = 20
        query.findObjectsInBackground { (posts, error) in
            if items != nil {
                self.items = items!
                self.tableView.reloadData()
            }
        }
```
    
- [OPTIONAL: List endpoints if using existing API such as Yelp]
