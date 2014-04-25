# Using Kimai

This is the Kimai manual - our end-user documentation. Its english version is not very comprehensive, we could use your help in improving it. [Please contact us in the forum](http://forum.kimai.org/).

## Extensions

The timesheet, export or expenses screen which you get by clicking the corresponding tab is called an extension. To enable Extensions just delete the hash (#) symbol in front of the folder name. To disable, do it otherwise.

For developing an extension please refer to the [Kimai forum][2].

## Timesheet

Here you can track your time. The surface is easy to understand and use.

### Tracking your time

Just select a customer and all corresponding projects will be highlighted. Next step is to choose the project you are working on and last but not least the task you are doing. Now you are ready to track your time. Just hit the big green button in the top right corner to start tracking. To stop your current record hit the red stop-button either on the left of your current record or the top right corner. Afterwards you can choose another customer, project and/or task and continue to record.

### Editing your time

If you have forgot to quit tracking or selected a wrong task: don’t panic! There is a little pencil next to your recorded events. By clicking on it you will be able to rearrange a mistake that might have happened.

Attention: The start and end-time of events that have been recorded after that mistake will not be modified automatically. Have a look if there are overlapping entries.

If you are in need of some extra info to your current task use the comments bubble displayed beneath the running time. Here you can add whatever info you think can help you with explained what you did.

## Admin Panel

In the admin panel you can do every administration that is necessary for the running system.

### Customers

Here you can add, modify and delete customers. If you do not set a password the customer cannot login to Kimai. By selecting a group you enable all members of that group to see that customer. All fields except the customer name are optionally.

### Projects

Here you can add, modify and delete projects. Projects have to be aligned to a customer. Further you can set rates for this project if they differ from the standard rates (for details about rates see chapter 7.5). If there is a budget it can be set here, too.

### Tasks

Here you can add, modify and delete tasks. A task has no relation to a customer or a project, but you can select which groups can use them. Additionally you can set rates here, too (for details about rates see chapter 7.5).

### Users

Here you can add, modify and delete users. A user can only belong to one group at a time. If you enter a valid email address you can send emails from your local account by clicking the mailer symbol.

### Groups

Here you can add, modify and delete groups and also define their leaders. Every group can have an unlimited amount of leaders.

### Advanced

Here you can define general settings like number of failed login-tries, bantime, currency, etc.

## Budget

This extension simply shows you a graphical overview over the budget for your projects.

## Expenses

Here you can add expenses to a project which, of course, affect the projects’ budget.

## Export

With this extension you can export tracked time per User into an Excel-file, csv-file or a pdf-file. As a regular user you can only see your time. If you are at least a group leader you can select members of your group and export their data for reporting.

## Invoice

Here you can create invoices for your customers. Does not work properly, needs PDO connection to database. (03/05/2010)

## Database

The database will be created automatically by the installer. It contains the following tables:

Maintenance of the database can be done via Kimai. If there is still some rubbish left it can be identified by the trash value.

## Rates

If you have a look into the table kimai_rates you may see something like this:

| User | Project | Event | Rate |
| -- | -- | -- | -- |
| 1 | 2 | 5 | 10.00 |
| 2 | NULL | 5 | 20.00 |
| 2 | 2 | NULL | 30.00 |
| 2 | NULL | NULL | 40.00 |
| NULL | 2 | 5 | 50.00 |
| NULL | NULL | 5 | 60.00 |
| NULL | 2 | NULL | 70.00 |

The entries are already sorted. Kimai takes the first row that exists (maybe the one with the most hits).

Explanation of the table:

- user 1 on project 2 and task 5 has a rate of 10.00 € per hour
- user 2 on task 5 has a rate of 20.00 € per hour
- user 2 on project has a rate of 30.00 € per hour
- user 2 has a rate of 40.00 € per hour
- project 2 and task 5 have a rate of 50.00 € per hour
- task 5 has a rate of 60.00 € per hour
- project 2 has a rate of 70.00 € per hour

Some examples:
- User 3 is working on project 2: his rate is 70.00 €
- User 2 is working on project 1 and task 5: his rate is 20.00 €
- User 2 is working on any project except the defined ones for him: his rate is 40.00 €

This table can only be edited with SQL statements or a database-tool (05/03/2010).
