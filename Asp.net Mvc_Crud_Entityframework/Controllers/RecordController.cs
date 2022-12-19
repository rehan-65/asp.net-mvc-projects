using Asp.net_Mvc_Crud_Entityframework.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;

namespace Asp.net_Mvc_Crud_Entityframework.Controllers
{
    public class RecordController : Controller
    {
        private ApplicationDbContext _db = new ApplicationDbContext();
        // GET: Record
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult GetAllRecords()
        {
            //  var records = _db.Records.ToList();
            //  var data = _db.Database.SqlQuery<record>("exec sp_SelectAllRecord").ToList();
            var data = _db.Database.SqlQuery<record>("exec view_getrecord").ToList();
            return Json(new { data },JsonRequestBehavior.AllowGet);

        }
        public ActionResult GetRecordPartial(int?id)
        {
            var record = _db.Records.Find(id)?? new record();
            return PartialView("_CreateOrUpdateRecordPartial", record);
        }
        public ActionResult CreatOrUpdate(record record)
        {
            //if (ModelState.IsValid)
            //{
            //    if (record.id > 0)
            //    {
            //        _db.Entry(record).State = System.Data.Entity.EntityState.Modified;
            //    }
            //    else
            //    {
            //        _db.Records.Add(record);
            //    }

            //    _db.SaveChanges();
           // string id = record.id.ToString();
          
            if (record.id==0)
            {
                SqlParameter param1 = new SqlParameter("@Name", record.Name.ToString());
                SqlParameter param2 = new SqlParameter("@Address", record.Address.ToString());
                int result = _db.Database.ExecuteSqlCommand("sp_AddRecord @Name, @Address", param1, param2);

                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
               
                SqlParameter param1 = new SqlParameter("@Name", record.Name.ToString());
                SqlParameter param2 = new SqlParameter("@Address", record.Address.ToString());
                SqlParameter param3 = new SqlParameter ("@Id", record.id);
               
                int result = _db.Database.ExecuteSqlCommand("sp_Updaterecord @Id ,@Name, @Address ", param3, param1, param2);


                return Json(true, JsonRequestBehavior.AllowGet);
            }
          //else { return Json(false, JsonRequestBehavior.AllowGet); }

        }
        public ActionResult Deletedata(int id)
        {
            //try {
            //    var recordid = _db.Records.Find(id);
            //    _db.Records.Remove(recordid);
            //    _db.SaveChanges();
            //    return Json(true, JsonRequestBehavior.AllowGet);
            //}
            //catch(Exception ex)
            //{
            //    return Json(false, JsonRequestBehavior.AllowGet);
            //}
            try
            {
                SqlParameter param3 = new SqlParameter("@Id",id);

                int result = _db.Database.ExecuteSqlCommand("sp_Deleterecord @Id", param3);
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
    }
}