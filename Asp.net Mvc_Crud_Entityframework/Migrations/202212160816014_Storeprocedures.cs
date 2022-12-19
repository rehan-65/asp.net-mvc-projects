namespace Asp.net_Mvc_Crud_Entityframework.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Storeprocedures : DbMigration
    {
        public override void Up()
        {
            CreateStoredProcedure(
              "dbo.sp_getrecord",

              body:
                  @"Select * from records"


          );
            CreateStoredProcedure(
           "dbo.sp_AddRecord",
            p => new
            {
                Name = p.String(),
                Address = p.String(),
            },
           body:
               @"INSERT into [dbo].[records]( [Name], [Address])  
            VALUES ( @Name, @Address)"

       );

            CreateStoredProcedure(
                       "dbo.sp_Updaterecord",
                       p => new
                       {
                           Id = p.Int(),
                           Name = p.String(),
                           Address = p.String(),

                       },
                       body:
                           @"UPDATE [dbo].[records]  
            SET [Name] = @Name, [Address] = @Address
            WHERE ([Id] = @Id)"
                   );

            CreateStoredProcedure(
             "dbo.sp_Deleterecord",

             p => new
             {
                 Id = p.Int(),
                

             },
                       body:
                           @"Delete from [dbo].[records]           
            WHERE ([Id] = @Id)"
                   );
        }

        public override void Down()
        {
            DropStoredProcedure("dbo.sp_getrecord");
            DropStoredProcedure("dbo.sp_AddRecord");
            DropStoredProcedure("dbo.sp_Updaterecord");
            DropStoredProcedure("dbo.sp_Deleterecord");

        }
    }
}
