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

  As we can see, the complexity points acquired after dividing the part os this feature is 7, which is not part of Fibonacci's secuence; thus, we must round it to the value next to it in the secuence, in this case 8.

  Every user story needs to be analized this way by every member of the team, in order to have a better estimation of the system complexity.

  In order to create a good user story is important to follow INVEST. Another important tip is take care of the lenguage and concepts that the team going to follow throu the project.

Scrume is an agil, incremental and iterative methodology, for me, the most interesting part of this topic
was the principles that handle, the first one is individuals and interactions over processes, this is 
more about how a process is being done, if you realize that something is being done in a wrong way, or
if you think that something can improve, you can say it. The second one is working software over documentation, 
which refers to get things done over having a pretty well structured documentation, this doesn't mean that you 
don't have to do documentation, it's fine, just that it's more important finish the project activities. 
The third one is customer collaboration, over contract negotiation this means that since the begining, you 
have to talk with the client about what's gonna be done with the project for example, requirements, deadline, and 
budget, one of the main advices was that you can't ever have these three together, if you've a time stablish 
and a budget, requirements have to be negotiated, if you have budget and requirements, you have to estimate the 
time, you will never have all of this items. Doing this, you're collaborating with the client finding a better 
solution to get things done. And the last one is responding to change over follow a plan, as i understood, this 
is more about the way in which you take feedback, when you're working in a project you have to be sure that what 
you're doing will succeed, that why you first should make tests or ask about whether what'you're doing is good for God. 
