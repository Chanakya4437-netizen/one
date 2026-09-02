<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
  --bg:#f7f8fc;--surface:#fff;--surface-2:#f0f2f7;--text:#171a24;--muted:#6d7280;
  --primary:#5b4bff;--primary-dark:#4638db;--accent:#ff5c7a;--success:#16a34a;
  --border:#e7e9ef;--shadow:0 12px 35px rgba(24,28,50,.08);--radius:18px;--container:1240px
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{margin:0;background:var(--bg);color:var(--text);font-family:Inter,system-ui,sans-serif;line-height:1.5}
button,input{font:inherit}
button,a{cursor:pointer}
a{text-decoration:none;color:inherit}
img{max-width:100%;display:block}
.container{width:min(var(--container),calc(100% - 40px));margin:auto}
.muted{color:var(--muted)}
.section{padding:72px 0}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:28px}
.section-head h2{margin:0;font:700 30px Poppins,sans-serif;letter-spacing:-.02em}
.section-head p{margin:7px 0 0;color:var(--muted)}
.link{color:var(--primary);font-weight:700}

/* Header */
.topbar{background:#171a24;color:#fff;font-size:13px}
.topbar .container{min-height:36px;display:flex;align-items:center;justify-content:space-between}
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.92);backdrop-filter:blur(18px);border-bottom:1px solid var(--border)}
.header-main{height:76px;display:flex;align-items:center;gap:24px}
.logo{font:800 23px Poppins,sans-serif;white-space:nowrap}
.logo span{color:var(--primary)}
.search{flex:1;max-width:620px;position:relative}
.search input{width:100%;height:46px;border:1px solid var(--border);border-radius:13px;background:var(--surface-2);padding:0 48px 0 17px;outline:0;transition:.2s}
.search input:focus{background:#fff;border-color:var(--primary);box-shadow:0 0 0 4px rgba(91,75,255,.1)}
.search button{position:absolute;right:5px;top:5px;width:36px;height:36px;border:0;border-radius:10px;background:var(--primary);color:#fff}
.header-actions{display:flex;align-items:center;gap:6px;margin-left:auto}
.icon-action{position:relative;width:42px;height:42px;border:0;background:transparent;border-radius:12px;display:grid;place-items:center;font-size:18px}
.icon-action:hover{background:var(--surface-2);color:var(--primary)}
.badge-count{position:absolute;right:1px;top:0;background:var(--accent);color:#fff;border-radius:999px;min-width:18px;height:18px;padding:0 5px;font-size:10px;font-weight:800;display:grid;place-items:center;border:2px solid #fff}
.nav-row{border-top:1px solid var(--border)}
.nav{height:48px;display:flex;align-items:center;gap:26px;overflow:auto;white-space:nowrap}
.nav a{font-size:14px;font-weight:600;color:#454a58}
.nav a:hover,.nav a.active{color:var(--primary)}
.menu-btn{display:none}

/* Hero */
.hero{padding:34px 0 18px}
.hero-card{min-height:470px;border-radius:28px;overflow:hidden;position:relative;background:
linear-gradient(90deg,rgba(15,17,28,.88) 0%,rgba(15,17,28,.58) 48%,rgba(15,17,28,.12) 100%),
url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover}
.hero-content{max-width:650px;padding:74px 70px;color:#fff}
.eyebrow{display:inline-flex;align-items:center;gap:8px;padding:7px 11px;border-radius:999px;background:rgba(255,255,255,.14);font-size:12px;font-weight:800;letter-spacing:.08em;text-transform:uppercase}
.hero h1{font:800 clamp(38px,5vw,64px)/1.05 Poppins,sans-serif;margin:20px 0 16px;letter-spacing:-.045em}
.hero p{font-size:17px;color:rgba(255,255,255,.86);max-width:580px}
.hero-actions{display:flex;gap:12px;margin-top:28px;flex-wrap:wrap}
.btn{border:0;border-radius:12px;padding:12px 18px;font-weight:800;display:inline-flex;align-items:center;justify-content:center;gap:9px;transition:.2s}
.btn-primary{background:var(--primary);color:#fff}.btn-primary:hover{background:var(--primary-dark);transform:translateY(-1px)}
.btn-light{background:#fff;color:#171a24}.btn-light:hover{transform:translateY(-1px)}
.btn-outline{background:transparent;border:1px solid var(--border);color:var(--text)}
.btn-small{padding:9px 12px;font-size:13px}

/* Benefits */
.benefits{display:grid;grid-template-columns:repeat(4,1fr);gap:14px;margin-top:18px}
.benefit{background:#fff;border:1px solid var(--border);border-radius:15px;padding:17px;display:flex;gap:13px;align-items:center}
.benefit i{width:40px;height:40px;border-radius:12px;background:#eeecff;color:var(--primary);display:grid;place-items:center}
.benefit strong{display:block;font-size:14px}.benefit span{font-size:12px;color:var(--muted)}

/* Categories */
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:15px}
.category{border:1px solid var(--border);background:#fff;border-radius:17px;padding:22px 14px;text-align:center;transition:.2s}
.category:hover{transform:translateY(-4px);box-shadow:var(--shadow);border-color:#d8d3ff}
.category i{font-size:26px;color:var(--primary);margin-bottom:12px}
.category strong{display:block;font-size:14px}.category span{font-size:12px;color:var(--muted)}

/* Toolbar */
.toolbar{display:flex;align-items:center;justify-content:space-between;gap:15px;margin-bottom:20px}
.filters{display:flex;gap:8px;overflow:auto}
.filter{border:1px solid var(--border);background:#fff;padding:9px 13px;border-radius:999px;font-size:13px;font-weight:700;white-space:nowrap}
.filter.active,.filter:hover{background:#eeecff;border-color:#d8d3ff;color:var(--primary)}
.sort{border:1px solid var(--border);background:#fff;border-radius:10px;padding:9px 12px}

/* Products */
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{background:#fff;border:1px solid var(--border);border-radius:18px;overflow:hidden;position:relative;transition:.2s}
.product:hover{transform:translateY(-5px);box-shadow:var(--shadow)}
.product-image{height:225px;background:#f2f3f7;position:relative;overflow:hidden}
.product-image img{width:100%;height:100%;object-fit:cover;transition:.3s}
.product:hover .product-image img{transform:scale(1.04)}
.product-badge{position:absolute;left:12px;top:12px;background:#171a24;color:#fff;padding:6px 9px;border-radius:8px;font-size:11px;font-weight:800}
.product-badge.sale{background:var(--accent)}
.wish{position:absolute;right:11px;top:11px;width:36px;height:36px;border:0;border-radius:50%;background:#fff;box-shadow:0 4px 14px rgba(0,0,0,.1);color:#555;z-index:2}
.wish.active{color:var(--accent)}
.product-body{padding:16px}
.product-category{font-size:11px;color:var(--muted);text-transform:uppercase;letter-spacing:.08em;font-weight:800}
.product h3{font-size:15px;margin:7px 0 9px}
.rating{font-size:12px;color:#f59e0b}.rating span{color:var(--muted)}
.price-row{display:flex;align-items:end;justify-content:space-between;margin-top:13px}
.price{font-size:18px;font-weight:800}.old{font-size:12px;color:var(--muted);text-decoration:line-through;margin-left:5px}
.product-footer{padding:0 16px 16px;display:flex;gap:8px}
.add{flex:1;border:0;background:#171a24;color:#fff;border-radius:11px;padding:10px;font-weight:800}
.add:hover{background:var(--primary)}
.quick{width:42px;border:1px solid var(--border);background:#fff;border-radius:11px}

/* Deal */
.deal{display:grid;grid-template-columns:1.05fr .95fr;background:#171a24;border-radius:24px;overflow:hidden;color:#fff}
.deal-image{min-height:390px;background:url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85') center/cover}
.deal-content{padding:52px}
.deal-label{color:#ff91a7;font-size:12px;font-weight:900;text-transform:uppercase;letter-spacing:.12em}
.deal h2{font:800 36px Poppins;margin:10px 0}
.deal p{color:#bfc3cf}
.timer{display:grid;grid-template-columns:repeat(4,1fr);gap:8px;margin:25px 0}
.time{background:#292d3a;border-radius:12px;padding:12px;text-align:center}.time strong{display:block;font-size:22px}.time span{font-size:10px;color:#aeb3c0;text-transform:uppercase}
.deal-price{font-size:29px;font-weight:800}.deal-price del{font-size:14px;color:#9da2af;margin-left:8px}

/* Testimonials + newsletter */
.testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.review{background:#fff;border:1px solid var(--border);border-radius:17px;padding:22px}
.review p{color:#555b68}.review-user{display:flex;align-items:center;gap:10px;margin-top:18px}
.avatar{width:40px;height:40px;border-radius:50%;object-fit:cover}
.newsletter{background:linear-gradient(135deg,#5b4bff,#7d6fff);border-radius:24px;color:#fff;padding:50px;display:flex;align-items:center;justify-content:space-between;gap:30px}
.newsletter h2{font:800 30px Poppins;margin:0 0 8px}.newsletter p{margin:0;color:#e9e7ff}
.news-form{display:flex;gap:8px;min-width:min(470px,100%)}.news-form input{flex:1;border:0;border-radius:11px;padding:13px 15px;outline:0}

/* Footer */
footer{background:#171a24;color:#fff;padding:55px 0 25px}
.footer-grid{display:grid;grid-template-columns:1.5fr 1fr 1fr 1fr;gap:35px}
footer h4{margin:0 0 13px}footer p,footer a{color:#aeb3c0;font-size:13px}footer a{display:block;margin:9px 0}
.socials{display:flex;gap:8px;margin-top:18px}.socials a{width:38px;height:38px;border:1px solid #333846;border-radius:10px;display:grid;place-items:center;margin:0;color:#fff}
.copyright{border-top:1px solid #2b2f3b;margin-top:35px;padding-top:20px;text-align:center;color:#8e94a2;font-size:12px}

/* Drawer / toast */
.overlay{position:fixed;inset:0;background:rgba(0,0,0,.4);z-index:150;display:none}
.overlay.show{display:block}
.drawer{position:fixed;right:0;top:0;height:100%;width:min(430px,92vw);background:#fff;z-index:160;transform:translateX(100%);transition:.25s;padding:22px;display:flex;flex-direction:column}
.drawer.open{transform:translateX(0)}
.drawer-head{display:flex;align-items:center;justify-content:space-between;border-bottom:1px solid var(--border);padding-bottom:16px}
.drawer-items{flex:1;overflow:auto;padding:10px 0}.cart-item{display:flex;gap:12px;padding:14px 0;border-bottom:1px solid var(--border)}
.cart-item img{width:65px;height:65px;border-radius:10px;object-fit:cover}.cart-item h4{margin:0;font-size:14px}.cart-item p{margin:4px 0;font-size:13px;color:var(--muted)}
.drawer-total{border-top:1px solid var(--border);padding-top:17px}.total-row{display:flex;justify-content:space-between;font-weight:800;margin-bottom:14px}
.toast{position:fixed;bottom:24px;left:50%;transform:translate(-50%,20px);background:#171a24;color:#fff;padding:12px 16px;border-radius:11px;z-index:300;opacity:0;pointer-events:none;transition:.25s;font-size:13px}.toast.show{opacity:1;transform:translate(-50%,0)}

/* Responsive */
@media(max-width:1050px){
 .categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(3,1fr)}
 .benefits{grid-template-columns:repeat(2,1fr)}.hero-content{padding:60px 45px}
}
@media(max-width:800px){
 .container{width:min(var(--container),calc(100% - 28px))}
 .topbar{display:none}.header-main{height:68px}.search{order:3;position:absolute;left:14px;right:14px;top:75px;max-width:none;display:none}
 .search.mobile-open{display:block}.header-main{position:relative}.menu-btn{display:grid;width:40px;height:40px;border:0;background:var(--surface-2);border-radius:10px;place-items:center}
 .nav-row{display:none}.logo{font-size:20px}.header-actions{gap:0}
 .hero{padding-top:20px}.hero-card{min-height:540px}.hero-content{padding:55px 28px}.hero h1{font-size:42px}
 .products{grid-template-columns:repeat(2,1fr)}.deal{grid-template-columns:1fr}.deal-image{min-height:250px}.deal-content{padding:35px}
 .testimonials{grid-template-columns:1fr}.newsletter{padding:35px;display:block}.news-form{margin-top:22px;min-width:0}
 .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:560px){
 .section{padding:50px 0}.section-head{display:block}.section-head .link{display:inline-block;margin-top:10px}
 .benefits{grid-template-columns:1fr 1fr}.categories{grid-template-columns:repeat(2,1fr)}
 .products{grid-template-columns:1fr}.hero-card{min-height:570px}.hero h1{font-size:36px}
 .timer{gap:5px}.time{padding:9px 4px}.time strong{font-size:18px}
 .deal h2{font-size:29px}.footer-grid{grid-template-columns:1fr}.newsletter h2{font-size:25px}.news-form{flex-direction:column}
}
</style>
</head>

<body>
<div class="topbar">
  <div class="container"><span><i class="fa-solid fa-truck"></i> Free shipping on orders over $50</span><span>24/7 support · Easy returns</span></div>
</div>

<header>
  <div class="container header-main">
    <button class="menu-btn" id="menuBtn" aria-label="Open navigation"><i class="fa-solid fa-bars"></i></button>
    <a class="logo" href="#">Nexus<span>Shop</span></a>
    <div class="search" id="searchBox">
      <input id="searchInput" type="search" placeholder="Search products, brands & categories…" aria-label="Search">
      <button id="searchBtn" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
    </div>
    <div class="header-actions">
      <button class="icon-action" id="mobileSearch" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
      <button class="icon-action" aria-label="Account"><i class="fa-regular fa-user"></i></button>
      <button class="icon-action" id="wishlistBtn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i><span class="badge-count" id="wishCount">0</span></button>
      <button class="icon-action" id="cartBtn" aria-label="Shopping cart"><i class="fa-solid fa-bag-shopping"></i><span class="badge-count" id="cartCount">0</span></button>
    </div>
  </div>
  <div class="nav-row">
    <nav class="container nav">
      <a class="active" href="#home">Home</a><a href="#categories">Categories</a><a href="#products">Trending</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a><a href="#about">About</a>
    </nav>
  </div>
</header>

<main>
<section class="hero" id="home">
  <div class="container">
    <div class="hero-card">
      <div class="hero-content">
        <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season is here</span>
        <h1>Everything you love. In one place.</h1>
        <p>Discover hand-picked tech, fashion and everyday essentials with simple shopping, secure checkout and fast delivery.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">Shop collection <i class="fa-solid fa-arrow-right"></i></button>
          <button class="btn btn-light" id="heroDeals">View today's deals</button>
        </div>
      </div>
    </div>
    <div class="benefits">
      <div class="benefit"><i class="fa-solid fa-truck-fast"></i><div><strong>Fast delivery</strong><span>Reliable doorstep delivery</span></div></div>
      <div class="benefit"><i class="fa-solid fa-shield-halved"></i><div><strong>Secure payments</strong><span>Your data stays protected</span></div></div>
      <div class="benefit"><i class="fa-solid fa-rotate-left"></i><div><strong>Easy returns</strong><span>Hassle-free return policy</span></div></div>
      <div class="benefit"><i class="fa-solid fa-headset"></i><div><strong>Helpful support</strong><span>We're here when you need us</span></div></div>
    </div>
  </div>
</section>

<section class="section" id="categories">
<div class="container">
  <div class="section-head"><div><h2>Shop by category</h2><p>Find what you need faster.</p></div><a class="link" href="#products">View all <i class="fa-solid fa-arrow-right"></i></a></div>
  <div class="categories" id="categoriesGrid"></div>
</div>
</section>

<section class="section" id="products" style="padding-top:20px">
<div class="container">
  <div class="section-head"><div><h2>Trending products</h2><p>Popular picks customers are loving right now.</p></div></div>
  <div class="toolbar">
    <div class="filters" id="filters"></div>
    <select class="sort" id="sortSelect" aria-label="Sort products"><option value="featured">Featured</option><option value="low">Price: low to high</option><option value="high">Price: high to low</option><option value="rating">Top rated</option></select>
  </div>
  <div class="products" id="productsGrid"></div>
  <p id="emptyState" class="muted" style="display:none;text-align:center;padding:50px">No products found. Try another search.</p>
</div>
</section>

<section class="section" id="deals">
<div class="container">
  <div class="deal">
    <div class="deal-image"></div>
    <div class="deal-content">
      <div class="deal-label">Limited-time offer</div>
      <h2>MacBook Air M2</h2>
      <p>Thin, light and powerful. Get premium performance at a special price while stock lasts.</p>
      <div class="timer">
        <div class="time"><strong id="days">01</strong><span>Days</span></div><div class="time"><strong id="hours">00</strong><span>Hours</span></div><div class="time"><strong id="minutes">00</strong><span>Minutes</span></div><div class="time"><strong id="seconds">00</strong><span>Seconds</span></div>
      </div>
      <div class="deal-price">$999 <del>$1,199</del></div>
      <button class="btn btn-primary" id="dealBtn" style="margin-top:18px">Add deal to cart <i class="fa-solid fa-bag-shopping"></i></button>
    </div>
  </div>
</div>
</section>

<section class="section" id="reviews">
<div class="container">
  <div class="section-head"><div><h2>Loved by shoppers</h2><p>What our customers have to say.</p></div></div>
  <div class="testimonials">
    <article class="review"><div class="rating">★★★★★</div><p>“Fast shipping, clean packaging and the product was exactly as described. The whole experience felt effortless.”</p><div class="review-user"><img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt=""><div><strong>Ava Martin</strong><div class="muted" style="font-size:12px">Verified buyer</div></div></div></article>
    <article class="review"><div class="rating">★★★★★</div><p>“Great selection and the checkout was incredibly smooth. I found what I wanted in less than five minutes.”</p><div class="review-user"><img class="avatar" src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80" alt=""><div><strong>Michael Lee</strong><div class="muted" style="font-size:12px">Frequent buyer</div></div></div></article>
    <article class="review"><div class="rating">★★★★☆</div><p>“The deals are genuinely useful and the product cards make it easy to compare prices and ratings.”</p><div class="review-user"><img class="avatar" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80" alt=""><div><strong>Sophia Reed</strong><div class="muted" style="font-size:12px">Verified buyer</div></div></div></article>
  </div>
</div>
</section>

<section class="section" id="about">
<div class="container">
  <div class="newsletter">
    <div><h2>Get the best deals in your inbox.</h2><p>New arrivals, exclusive offers and useful updates — no spam.</p></div>
    <form class="news-form" id="newsletterForm"><input id="email" type="email" placeholder="Your email address" required><button class="btn btn-light">Subscribe</button></form>
  </div>
</div>
</section>
</main>

<footer>
<div class="container">
  <div class="footer-grid">
    <div><div class="logo">Nexus<span>Shop</span></div><p>A cleaner, friendlier shopping experience for everyday products and premium picks.</p><div class="socials"><a href="#"><i class="fa-brands fa-instagram"></i></a><a href="#"><i class="fa-brands fa-facebook-f"></i></a><a href="#"><i class="fa-brands fa-x-twitter"></i></a></div></div>
    <div><h4>Shop</h4><a href="#products">Trending</a><a href="#deals">Deals</a><a href="#categories">Categories</a></div>
    <div><h4>Help</h4><a href="#">Help center</a><a href="#">Shipping & returns</a><a href="#">Contact us</a></div>
    <div><h4>Company</h4><a href="#about">About</a><a href="#">Careers</a><a href="#">Privacy</a></div>
  </div>
  <div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</div>
</footer>

<div class="overlay" id="overlay"></div>
<aside class="drawer" id="drawer" aria-label="Shopping cart">
  <div class="drawer-head"><div><strong style="font-size:19px">Your cart</strong><div class="muted" id="cartSubtitle">0 items</div></div><button class="icon-action" id="closeCart"><i class="fa-solid fa-xmark"></i></button></div>
  <div class="drawer-items" id="cartItems"></div>
  <div class="drawer-total"><div class="total-row"><span>Total</span><span id="cartTotal">$0</span></div><button class="btn btn-primary" style="width:100%" id="checkout">Checkout <i class="fa-solid fa-arrow-right"></i></button></div>
</aside>
<div class="toast" id="toast"></div>

<script>
const CATEGORIES=[
{id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button'},
{id:'laptops',name:'Laptops',icon:'fa-laptop'},
{id:'clothing',name:'Clothing',icon:'fa-shirt'},
{id:'gadgets',name:'Gadgets',icon:'fa-headphones'},
{id:'footwear',name:'Footwear',icon:'fa-shoe-prints'},
{id:'accessories',name:'Accessories',icon:'fa-watch'}
];

const PRODUCTS=[
{id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',category:'phones'},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',category:'laptops'},
{id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'-25%',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',category:'accessories'},
{id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',category:'footwear'},
{id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',category:'gadgets'},
{id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',category:'accessories'},
{id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',category:'accessories'},
{id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',category:'gadgets'}
];

let cart=[],wishlist=new Set(),activeCategory='all',searchQuery='';

const $=id=>document.getElementById(id);
function money(n){return '$'+n.toLocaleString()}
function showToast(msg){$('toast').textContent=msg;$('toast').classList.add('show');setTimeout(()=>$('toast').classList.remove('show'),1800)}

function renderCategories(){
 $('categoriesGrid').innerHTML=CATEGORIES.map(c=>`<button class="category" data-cat="${c.id}"><i class="fa-solid ${c.icon}"></i><strong>${c.name}</strong><span>Explore products</span></button>`).join('');
 document.querySelectorAll('.category').forEach(b=>b.onclick=()=>{activeCategory=b.dataset.cat;renderFilters();renderProducts();$('products').scrollIntoView({behavior:'smooth'})});
}
function renderFilters(){
 const names=[['all','All'],...CATEGORIES.map(c=>[c.id,c.name])];
 $('filters').innerHTML=names.map(([id,name])=>`<button class="filter ${activeCategory===id?'active':''}" data-filter="${id}">${name}</button>`).join('');
 document.querySelectorAll('.filter').forEach(b=>b.onclick=()=>{activeCategory=b.dataset.filter;renderFilters();renderProducts()});
}
function filtered(){
 let list=PRODUCTS.filter(p=>(activeCategory==='all'||p.category===activeCategory)&&(!searchQuery||`${p.title} ${p.category}`.toLowerCase().includes(searchQuery)));
 const sort=$('sortSelect').value;
 if(sort==='low')list.sort((a,b)=>a.price-b.price);
 if(sort==='high')list.sort((a,b)=>b.price-a.price);
 if(sort==='rating')list.sort((a,b)=>b.rating-a.rating);
 return list;
}
function renderProducts(){
 const list=filtered();$('emptyState').style.display=list.length?'none':'block';
 $('productsGrid').innerHTML=list.map(p=>`
 <article class="product">
   <div class="product-image">
     ${p.badge?`<span class="product-badge ${p.badge==='Sale'||p.badge.startsWith('-')?'sale':''}">${p.badge}</span>`:''}
     <button class="wish ${wishlist.has(p.id)?'active':''}" data-wish="${p.id}" aria-label="Wishlist"><i class="${wishlist.has(p.id)?'fa-solid':'fa-regular'} fa-heart"></i></button>
     <img src="${p.img}" alt="${p.title}">
   </div>
   <div class="product-body">
     <div class="product-category">${p.category}</div>
     <h3>${p.title}</h3>
     <div class="rating">${'★'.repeat(p.rating)}${'☆'.repeat(5-p.rating)} <span>(${p.reviews})</span></div>
     <div class="price-row"><div class="price">${money(p.price)} ${p.oldPrice?`<span class="old">${money(p.oldPrice)}</span>`:''}</div></div>
   </div>
   <div class="product-footer"><button class="add" data-add="${p.id}"><i class="fa-solid fa-plus"></i> Add to cart</button><button class="quick" data-quick="${p.id}" aria-label="Quick view"><i class="fa-regular fa-eye"></i></button></div>
 </article>`).join('');
 document.querySelectorAll('[data-add]').forEach(b=>b.onclick=()=>addToCart(+b.dataset.add));
 document.querySelectorAll('[data-wish]').forEach(b=>b.onclick=()=>toggleWish(+b.dataset.wish));
 document.querySelectorAll('[data-quick]').forEach(b=>b.onclick=()=>{const p=PRODUCTS.find(x=>x.id===+b.dataset.quick);showToast(`${p.title} — ${money(p.price)}`)});
}
function addToCart(id){
 const p=PRODUCTS.find(x=>x.id===id),item=cart.find(x=>x.id===id);
 if(item)item.qty++;else cart.push({...p,qty:1});
 updateCart();showToast(`${p.title} added to cart`);
}
function toggleWish(id){
 wishlist.has(id)?wishlist.delete(id):wishlist.add(id);$('wishCount').textContent=wishlist.size;renderProducts();
}
function updateCart(){
 $('cartCount').textContent=cart.reduce((s,x)=>s+x.qty,0);
 $('cartSubtitle').textContent=`${cart.reduce((s,x)=>s+x.qty,0)} item${cart.reduce((s,x)=>s+x.qty,0)===1?'':'s'}`;
 $('cartItems').innerHTML=cart.length?cart.map(x=>`<div class="cart-item"><img src="${x.img}" alt=""><div style="flex:1"><h4>${x.title}</h4><p>${money(x.price)} × ${x.qty}</p><button class="link" style="border:0;background:none;padding:0;font-size:12px" data-remove="${x.id}">Remove</button></div><strong>${money(x.price*x.qty)}</strong></div>`).join(''):'<div style="text-align:center;padding:70px 10px;color:#6d7280"><i class="fa-solid fa-bag-shopping" style="font-size:42px;margin-bottom:15px"></i><p>Your cart is empty.</p><button class="btn btn-primary" onclick="closeCart()">Start shopping</button></div>';
 $('cartTotal').textContent=money(cart.reduce((s,x)=>s+x.price*x.qty,0));
 document.querySelectorAll('[data-remove]').forEach(b=>b.onclick=()=>{cart=cart.filter(x=>x.id!==+b.dataset.remove);updateCart()});
}
function openCart(){$('drawer').classList.add('open');$('overlay').classList.add('show')}
function closeCart(){$('drawer').classList.remove('open');$('overlay').classList.remove('show')}

$('searchBtn').onclick=()=>{searchQuery=$('searchInput').value.trim().toLowerCase();renderProducts();$('products').scrollIntoView({behavior:'smooth'})};
$('searchInput').onkeydown=e=>{if(e.key==='Enter')$('searchBtn').click()};
$('sortSelect').onchange=renderProducts;
$('cartBtn').onclick=openCart;$('closeCart').onclick=closeCart;$('overlay').onclick=closeCart;
$('mobileSearch').onclick=()=>{$('searchBox').classList.toggle('mobile-open');if($('searchBox').classList.contains('mobile-open'))$('searchInput').focus()};
$('menuBtn').onclick=()=>document.querySelector('.nav-row').style.display=document.querySelector('.nav-row').style.display==='block'?'none':'block';
$('shopNow').onclick=()=>$('products').scrollIntoView({behavior:'smooth'});
$('heroDeals').onclick=()=>$('deals').scrollIntoView({behavior:'smooth'});
$('dealBtn').onclick=()=>{addToCart(2);openCart()};
$('checkout').onclick=()=>cart.length?showToast('Checkout is ready for integration.') : showToast('Your cart is empty.');
$('newsletterForm').onsubmit=e=>{e.preventDefault();showToast('Thanks for subscribing!');$('email').value=''};

let end=Date.now()+((24*60+36)*60*1000);
function tick(){
 let d=Math.max(0,end-Date.now()),days=Math.floor(d/86400000),hours=Math.floor(d/3600000)%24,mins=Math.floor(d/60000)%60,secs=Math.floor(d/1000)%60;
 $('days').textContent=String(days).padStart(2,'0');$('hours').textContent=String(hours).padStart(2,'0');$('minutes').textContent=String(mins).padStart(2,'0');$('seconds').textContent=String(secs).padStart(2,'0');
}
setInterval(tick,1000);tick();
$('year').textContent=new Date().getFullYear();
renderCategories();renderFilters();renderProducts();updateCart();
</script>
</body>
</html>
