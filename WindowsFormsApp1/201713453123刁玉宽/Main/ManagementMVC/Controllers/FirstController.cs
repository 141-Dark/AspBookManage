using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ManagementMVC.Controllers
{
    public class FirstController : Controller
    {
        // GET: First
        public ActionResult CreatView()
        {
            return View();
        }
    }
}