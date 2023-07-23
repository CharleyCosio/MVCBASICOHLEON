using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CursoMVC.Models.TableViewModels;
using CursoMVC.Models;

namespace CursoMVC.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            List<UserTableViewModel> lst = null;
            using (cursomvcEntities db=new cursomvcEntities())
            {
                lst = (from d in db.user
                      where d.idState == 1
                      orderby d.email
                      select new UserTableViewModel
                      {
                          Email = d.email,
                          id = d.id,
                          Edad = d.edad
                      }).ToList();

            }

            return View(lst);
        }
    }
}