﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
//importar modelo entity framework
using CursoMVC.Models;

namespace CursoMVC.Controllers
{
    public class AccessController : Controller
    {
        // GET: Access
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Enter(string user,string password)
        {
            try
            {
                using (cursomvcEntities db=new cursomvcEntities())
                {
                    var lst = from d in db.user
                              where d.email == user && d.password == password && d.idState == 1
                              select d;
                    if (lst.Count() > 0)
                    {
                        user oUser= lst.First();
                        Session["User"] = oUser;
                        return Content("1");
                    }
                    else
                    {
                        return Content("Usuario invalido");
                    }
                }

            }
            catch (Exception ex)
            {

                return Content("Ocurrio un error: "+ex.Message);
            }
        }
    }
}