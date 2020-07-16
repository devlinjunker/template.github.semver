---
Version: 0.1.0
---

## Intro
_This document should contain the application design and structure, detailing how the different components work together and how data is stored/retrieved._

## Dependencies & Project Setup
_Describe the frameworks and libraries this project uses and how to set them up (Example sections provided)_

### Client
#### Initial Setup

### Server
#### Initial Setup

## Architecture
_Describe how the components are structured and organized/where they retreive data from and how they display that (Example sections provided)_

### Client Side Application
#### Entry Point
#### Views
1.
2.
#### Workflows
1.
2.

### Server (REST) API
#### Entry Point
#### Endpoints

1.  List All Notes

    | Method | Endpoint |
    |-|-|
    | `GET` | `/notes/all`  |


    ##### Headers
    | Field            | Value          |
    |------------------|---|
    | header-1         | example |
    | header-2         | example-2 |

    ##### Request Body Example
    ```
    {

    }
    ```
    ##### Response Example
    ```
      [{
        id: 1,
        name: ‘Woven Fire’,
        Category: 1,  // (1 - 10)
        img_location: ‘/../..png’,
        bio: ‘Yada yada'
      }]
      ```  
2. Save Note


### Communication Diagrams
_Describe the communcation protocol and when the different components talk to each other. You can also link to documents or include images that help to explain this_

### Database Structure
_Define the structure of the data stored in a each database/datastore. Diagrams are useful here too_
