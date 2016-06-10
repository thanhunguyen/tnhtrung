using QLBHLapTop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QLBHLapTop.Controllers
{
    public class ManufacturerController : Controller
    {
        // GET: Manufacturer
        public ActionResult PartialView()
        {
            using (QLBHLapTopEntities ctx = new QLBHLapTopEntities())
            {
                var list = ctx.Manufacturers.ToList();
                return PartialView(list);
            }
        }
    }
}