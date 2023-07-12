# MVC_with_Entity.Framework
Describes a project built with Entity framework core as its data access layer. It is an improvement of the initial ADO.NET MVC project. Reverse engineering technology was used to scaffold the various entities(models).
The project steps.
--------------------
1. If you have an existing database, you can scaffold it. This process will automatically build models files for your project so you donot need to use ADO to access data.
2. Run the command "Scaffold-DbContext 'YourConnectionString' Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models"
