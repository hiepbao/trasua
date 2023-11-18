using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using _____.Models;

namespace _____.Areas.Admin.Controllers
{
    public class ProductsController : Controller
    {
        private WebTraSuaEntities db = new WebTraSuaEntities();

        // GET: Admin/Products
        public ActionResult Index()
        {
            var products = db.Products.Include(p => p.Category).Include(p => p.Size).Include(p => p.Suppelier);

            return View(products.ToList());
        }



        

        public ActionResult Search(string productName)
        {
            var products = db.Products
                .Include(p => p.Category)
                .Include(p => p.Size)
                .Include(p => p.Suppelier)
                .Where(p => p.ProName.Contains(productName))
                .ToList();

            return View("Index", products);
        }

       

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        

        // GET: Products/Create
        public ActionResult Create()
        {
            ViewBag.CatID = new SelectList(db.Categories, "CatID", "CatName");
            ViewBag.SizeID = new SelectList(db.Sizes, "SizeID", "SizeName");
            ViewBag.SupID = new SelectList(db.Suppeliers, "SupID", "SupName");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProID,ProName,ProImg,DeScription,CreatedDate,CatID,SupID,SizeID,Price,Quantity")] Product product)
        {
            if (ModelState.IsValid)
            {
                product.CreatedDate = DateTime.Now;

                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CatID = new SelectList(db.Categories, "CatID", "CatName", product.CatID);
            ViewBag.SizeID = new SelectList(db.Sizes, "SizeID", "SizeName", product.SizeID);
            ViewBag.SupID = new SelectList(db.Suppeliers, "SupID", "SupName", product.SupID);
            return View(product);
        }

        // GET: Products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.CatID = new SelectList(db.Categories, "CatID", "CatName", product.CatID);
            ViewBag.SizeID = new SelectList(db.Sizes, "SizeID", "SizeName", product.SizeID);
            ViewBag.SupID = new SelectList(db.Suppeliers, "SupID", "SupName", product.SupID);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProID,ProName,ProImg,DeScription,CreatedDate,CatID,SupID,SizeID,Price,Quantity")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                product.CreatedDate = DateTime.Now;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CatID = new SelectList(db.Categories, "CatID", "CatName", product.CatID);
            ViewBag.SizeID = new SelectList(db.Sizes, "SizeID", "SizeName", product.SizeID);
            ViewBag.SupID = new SelectList(db.Suppeliers, "SupID", "SupName", product.SupID);
            return View(product);
        }

        // GET: Products/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
