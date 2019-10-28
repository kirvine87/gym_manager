# gym_manager

## Brief
To design a CRUD application which helps to manage memberships, classes, and register members for classes.

#### User Stories - MVP

| As a  | I want to be able to  | So that |
|---|---|---|
| Gym Manager | Manage the list of members | I am storing current information about members |
| Gym Manager | Manage the list of classes | I know what classes are available |
| Gym Manager | Add a user to a class | I can book a member in a class |
| Gym Manager | View all members assigned to a class| I can see which classes are going to be busy |

#### MVP

Gym managers should be able to
* Create members
* Edit members
* Create classes
* Delete classes
* Assign members to classes
* View a list of classes
* See the members that will be attending each class

#### User Stories - Extensions

| As a  | I want to be able to  | So that |
|---|---|---|
| Gym Manager | Assign a maximum capacity to a class | The class can't be over-booked |
| Gym Manager | Mark members as having "Premium Membership" | Premium members can book premium classes |

#### Extensions:

Gym managers should be able to
* Give each class a maximum capacity<br />
* Only assign members until the maximum capacity is reached
* Assign premium membership to members
* Assign a time to a class
* Assign only premium members to classes that take place during peak hours. (7-9am, 5-8pm)
