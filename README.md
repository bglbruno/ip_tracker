# IP Tracker
Studies for a WebCrawler writen in ruby for IP Tracking

## Installation

    $ git clone https://github.com/bglbruno/ip_tracker.git
    $ cd ip_tracker/
    $ bundle
    
## Usage

    $ ruby ip_tracker.rb [IP]
    
Example:

    $ ruby ip_tracker.rb 8.8.8.8
    
Output:

    +----------------+-------------------------+
    |         Informations for 8.8.8.8         |
    +----------------+-------------------------+
    | Nome do Host   |                         |
    | IP Address     | 8.8.8.8                 |
    | País           | Saint Kitts and Nevis   |
    | Código do país | KN (KNA)                |
    | Região         |                         |
    | Cidade         | 60750                   |
    | Hora local     | 02 Apr 21:44 (AST-0400) |
    | Latitude       | 615.5265                |
    | Longitude      | 462.2528                |
    +----------------+-------------------------+

## Dependencies
* commander
* nokogiri
* ipaddress
* terminal-table

## Contrib

Feel free to fork and request a pull, or submit a ticket
https://github.com/bglbruno/ip_tracker/issues
