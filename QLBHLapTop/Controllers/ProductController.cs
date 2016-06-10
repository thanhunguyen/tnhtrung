using QLBHLapTop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QLBHLapTop.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult ByCat(int? id, int curPage = 1)
        {
            if (id.HasValue == false)
            {
                return RedirectToAction("Index", "Home");
            }

            using (QLBHLapTopEntities ctx = new QLBHLapTopEntities())
            {
                //List<Product> list = ctx.Products
                //    .Where(p => p.ManufacturerID == id).ToList();
                var query = ctx.Products.Where(p => p.ManufacturerID == id);

                int n = query.Count();

                int nPages = n / 3;
                if (n % 3 > 0) nPages++;
                ViewBag.Pages = nPages;
                ViewBag.NextPage = curPage + 1;
                ViewBag.PrevPage = curPage - 1;

                int nSkip = (curPage - 1) * 3;
                List<Product> list = query
                    .OrderBy(p => p.ProID)
                    .Skip(nSkip).Take(3)
                    .ToList();
                return View(list);
            }
        }
    }
}