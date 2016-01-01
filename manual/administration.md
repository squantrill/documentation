# Administration

In the admin panel you can do every administration that is necessary for the running system.

### Customers

Here you can add, change and delete customers. If you do not set a password the customer cannot login to Kimai. By selecting a group you enable all members of that group to see that customer. All fields except the customer name are optionally.

### Projects

Here you can add, change and delete projects. Projects have to be aligned to a customer. Further you can set rates for this project if they differ from the standard rates (for details about rates see chapter [Rates](rates.md)). If there is a budget it can be set here, too.

### Tasks

Here you can add, change and delete tasks. A task has no relation to a customer or a project, but you can select which groups can use them. Additionally you can set rates here, too (for details about rates see chapter 'Rates').

### Users

Here you can add, change and delete users. 
Users work with Kimai and add, change or modifiy data like their own time records or other data like customers, projects etc. depending on their roles and rights.

####Add Users

Edit user / General 

Add a name for the new user and press 

![](../assets/manual/user-general.jpg)
(https://raw.githubusercontent.com/actXc/documentation/master/assets/manual/user-general.jpg)

Edit user / Groups
(https://raw.githubusercontent.com/actXc/documentation/master/assets/manual/user-groups.jpg)

A user can only have one global role at a time but can belong to unlimited groups. If you enter a valid email address you can send emails from your local account by clicking the mailer symbol.

### Groups

Here you can add, modify and delete groups and also define their membership role. Every group can have an unlimited amount of membership roles.

### Global Roles

User get their permissions from their global roles and from their group membership 

### Membership roles

The memership role defines with role a user ha insde of a group.

### Status

Status labels can be defined here.

### Advanced

Here you can define general settings like number of failed login-tries, bantime, currency, etc.

### Database

Some maintenance tasks (like a backup before updating) of the database can be done via Kimai.
