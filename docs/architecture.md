| | |
|-|-|
| Version | 0.1.0 |

## Intro
This document should contain the application design and structure, detailing how the different components work together and how data is stored/retrieved.

## Dependencies & Project Setup

### Client
#### Initial Setup

### Server
#### Initial Setup

## Architecture

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

    | | |
    |-|-|
    | Endpoint         | `/notes/all`   |
    | HTTP Method      | `GET`            |


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

### Database Structure

