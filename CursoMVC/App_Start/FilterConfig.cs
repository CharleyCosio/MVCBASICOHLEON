using System.Web;
using System.Web.Mvc;

namespace CursoMVC
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            //SE AGREGA A LA PILA DE FILTROS
            filters.Add(new Filters.VerifySession());
        }
    }
}
