# Bucket Estimation

  It is important to take into consideration the perks of team-based estimation; in this case, we are talking about chosing to estimate using complexity as the main unit, instead of time; basing the effort we put into developing a certain story, in how difficult it is to get done.

  Bucket estimation divides a simple task into a series of columns according to its nature, these columns are called buckets...

  A common buckets configuration example could be made as following:

  - Business Logic (The algorithm)
  - Data Integration (Data Base)
  - User Interface (UX/UI)
  - Testing (QA)
 
  Task's complexity must be divided in above's columns format by setting a certain value using Fibonacci's secuence values [1,2,3,5,8,13...]

### Example.

The table below represents an estimation of a single feature in a system.

| BL | DI | T | UI |
| ------ | ------ | ------ | ------ |
| 2 | 3 | 1 | 1 |
| Total | - | - | 7 |

diana was here

As we can see, the complexity points acquired after dividing the part os this feature is 7, which is not part of Fibonacci's secuence; thus, we must round it to the value next to it in the secuence, in this case 8.

  Every user story needs to be analized this way by every member of the team, in order to have a better estimation of the system complexity.

  In order to create a good user story is important to follow INVEST. Another important tip is take care of the lenguage and concepts that the team going to follow throu the project.
