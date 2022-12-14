# JPACRUDProject

## Description:
This is a full stack application that features a database of famous guitar players, a java backend layer, and a web user interface.  The user has full CRUD abilities, meaning that the user can create a record for a new guitar player, update the record of an existing player, read existing records, as well as delete existing player records.  A JUnit (Jupiter) test also ensures proper mapping.  

### Stretch Goals Implemented:
Once the CRUD functionality in place, I styled the frontend with CSS and Bootstrap.  The pages have basic responsive qualities.  I used a photo (which I edited in the default MacOS photo tool) for a custom background image, installed a font which mimics Fender's logo and set the colors (including the form input boxes) to a brown/cream theme evocative of tweed amplifier covers and aged guitar knobs.  I applied sepia filters to the image tags so that they better fit into the page's styling theme and embedded appropriate videos from YouTube.  

## Lessons Learned:
This was my first full stack project.  I built the database, filled it with inserts, wrote the java backend to retrieve and manipulate data from the database as well as receive requests and deliver responses to the frontend which I built.  

I learned a bit more about dealing with dates - using a date picker field in HTML and then converting that to LocalDate in java with logic to only parse the strings that were not empty.

I also learned more about JSTL logic and operators.  The page that displays an individual player's information has a fair bit of logic that determines the formatting for text based on whether or not certain fields (expression language) are populated.  For example, if a player has both a date of birth and a date of death, the page will insert a "to"  in between the dates.  If the player has no death date, the page will display the birth date and append "and still rocking."  If the player has neither date, the list item will be skipped altogether (vs. displaying a bullet with no text).  Finally, (if for some reason) a player is added with only a date of death, "passed on:" will be prepended.  Similar logic governs the possible combinations for a player's birth city and birth country.  

### What I Might Do Differently:
Given more time, I would have like to add some logic that would use the birth date and current date (or date of death as applicable) to display the player's current age or age at their time of death.   Additionally, a keyword search could be a useful tool, especially if the database held substantially more records.  Also, in hindsight, it would be a good idea to use a desaturate filter on the userImage tag so that if a user supplies a color picture, it would still  match the site's black and white/sepia theme.  

## Technology Used:
### Applications:
MySQL Workbench, Atom, Bootstrap, Unix Terminal, Spring, Spring Boot, JPA, Spring Tools Suite, Chrome, git/gitHub, Slack, Zoom

### Languages:
Java, MySQL, HTML, CSS   
