```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --primary:#635bff;
    --primary-dark:#5148e5;
    --bg:#f7f8fc;
    --card:#ffffff;
    --text:#18181b;
    --muted:#71717a;
    --border:#e5e7eb;
    --success:#16a34a;
    --danger:#ef4444;
    --radius:18px;
}

body{
    font-family:Inter,Arial,sans-serif;
    background:var(--bg);
    color:var(--text);
}

button,
input,
select{
    font:inherit;
}

button{
    cursor:pointer;
}

a{
    text-decoration:none;
    color:inherit;
}

/* =========================
   SIDEBAR
========================= */

.sidebar{
    position:fixed;
    left:0;
    top:0;
    bottom:0;
    width:235px;
    background:#fff;
    border-right:1px solid var(--border);
    padding:25px 18px;
    z-index:100;
}

.logo{
    font-size:22px;
    font-weight:800;
    margin-bottom:40px;
    padding-left:10px;
}

.logo span{
    color:var(--primary);
}

.menu-title{
    color:#a1a1aa;
    font-size:11px;
    font-weight:700;
    text-transform:uppercase;
    padding:0 12px;
    margin:20px 0 8px;
}

.menu-item{
    display:flex;
    align-items:center;
    gap:13px;
    padding:12px;
    border-radius:12px;
    margin:3px 0;
    color:#52525b;
    font-size:14px;
    font-weight:600;
    transition:.2s;
}

.menu-item i{
    width:20px;
    text-align:center;
}

.menu-item:hover,
.menu-item.active{
    background:#eeecff;
    color:var(--primary);
}

.sidebar-bottom{
    position:absolute;
    left:18px;
    right:18px;
    bottom:25px;
}

.profile{
    display:flex;
    align-items:center;
    gap:10px;
    padding:12px;
    background:#f8f8fa;
    border-radius:14px;
}

.profile-avatar{
    width:38px;
    height:38px;
    border-radius:50%;
    background:linear-gradient(135deg,#635bff,#a78bfa);
    color:#fff;
    display:grid;
    place-items:center;
    font-weight:700;
}

.profile-info{
    flex:1;
}

.profile-info strong{
    font-size:12px;
}

.profile-info span{
    display:block;
    font-size:10px;
    color:var(--muted);
}

/* =========================
   MAIN
========================= */

.main{
    margin-left:235px;
    min-height:100vh;
}

/* =========================
   TOP HEADER
========================= */

.top-header{
    height:76px;
    background:#fff;
    border-bottom:1px solid var(--border);
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:0 35px;
    position:sticky;
    top:0;
    z-index:50;
}

.page-title h1{
    font-size:20px;
}

.page-title p{
    font-size:12px;
    color:var(--muted);
    margin-top:2px;
}

.header-right{
    display:flex;
    align-items:center;
    gap:10px;
}

.search{
    position:relative;
}

.search input{
    width:260px;
    height:40px;
    border:1px solid var(--border);
    border-radius:10px;
    background:#f8f8fa;
    padding:0 40px 0 14px;
    outline:none;
}

.search input:focus{
    border-color:var(--primary);
    background:#fff;
}

.search i{
    position:absolute;
    right:13px;
    top:12px;
    color:#9ca3af;
}

.header-btn{
    width:40px;
    height:40px;
    border:1px solid var(--border);
    background:#fff;
    border-radius:10px;
    color:#52525b;
}

.header-btn:hover{
    color:var(--primary);
    background:#f8f8ff;
}

/* =========================
   CONTENT
========================= */

.content{
    padding:30px 35px;
}

/* =========================
   HERO
========================= */

.hero{
    background:
    linear-gradient(110deg,rgba(22,19,55,.96),rgba(62,54,160,.82)),
    url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=85")
    center/cover;

    min-height:330px;
    border-radius:24px;
    padding:48px;
    color:#fff;

    display:flex;
    align-items:center;
    justify-content:space-between;

    overflow:hidden;
}

.hero-content{
    max-width:600px;
}

.hero-label{
    display:inline-block;
    background:rgba(255,255,255,.15);
    padding:7px 12px;
    border-radius:20px;
    font-size:11px;
    font-weight:700;
    margin-bottom:15px;
}

.hero h2{
    font-size:43px;
    line-height:1.08;
    letter-spacing:-2px;
    margin-bottom:14px;
}

.hero p{
    color:#ddd9ff;
    font-size:14px;
    max-width:500px;
}

.hero-buttons{
    display:flex;
    gap:10px;
    margin-top:25px;
}

.btn{
    border:0;
    padding:11px 17px;
    border-radius:10px;
    font-weight:700;
    display:inline-flex;
    align-items:center;
    gap:8px;
}

.btn-primary{
    background:#fff;
    color:#5148e5;
}

.btn-primary:hover{
    transform:translateY(-2px);
}

.btn-dark{
    background:#111827;
    color:#fff;
}

.btn-purple{
    background:var(--primary);
    color:#fff;
}

.btn-purple:hover{
    background:var(--primary-dark);
}

/* =========================
   QUICK STATS
========================= */

.stats{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
    margin:22px 0;
}

.stat{
    background:#fff;
    border:1px solid var(--border);
    border-radius:15px;
    padding:18px;
    display:flex;
    align-items:center;
    gap:13px;
}

.stat-icon{
    width:42px;
    height:42px;
    border-radius:12px;
    background:#eeecff;
    color:var(--primary);
    display:grid;
    place-items:center;
}

.stat strong{
    font-size:17px;
}

.stat span{
    display:block;
    color:var(--muted);
    font-size:11px;
}

/* =========================
   SECTION HEADER
========================= */

.section-header{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin:35px 0 18px;
}

.section-header h2{
    font-size:20px;
}

.section-header p{
    font-size:12px;
    color:var(--muted);
    margin-top:3px;
}

/* =========================
   CATEGORIES
========================= */

.categories{
    display:flex;
    gap:10px;
    overflow:auto;
    padding-bottom:4px;
}

.category{
    min-width:125px;
    padding:16px 14px;
    border:1px solid var(--border);
    background:#fff;
    border-radius:14px;
    text-align:center;
    transition:.2s;
}

.category:hover,
.category.active{
    border-color:#c7c3ff;
    background:#f1f0ff;
    color:var(--primary);
}

.category i{
    font-size:22px;
    margin-bottom:8px;
}

.category strong{
    display:block;
    font-size:12px;
}

.category span{
    color:var(--muted);
    font-size:10px;
}

/* =========================
   PRODUCTS TOOLBAR
========================= */

.toolbar{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-bottom:18px;
}

.filters{
    display:flex;
    gap:7px;
}

.filter{
    border:1px solid var(--border);
    background:#fff;
    border-radius:20px;
    padding:8px 13px;
    font-size:11px;
    font-weight:700;
}

.filter.active{
    background:var(--primary);
    color:#fff;
    border-color:var(--primary);
}

.sort{
    border:1px solid var(--border);
    background:#fff;
    border-radius:9px;
    padding:8px 10px;
    font-size:12px;
}

/* =========================
   PRODUCTS
========================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:16px;
}

.product{
    background:#fff;
    border:1px solid var(--border);
    border-radius:17px;
    overflow:hidden;
    transition:.25s;
}

.product:hover{
    transform:translateY(-5px);
    box-shadow:0 15px 35px rgba(0,0,0,.08);
}

.product-image{
    height:205px;
    background:#f3f4f6;
    position:relative;
    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.3s;
}

.product:hover img{
    transform:scale(1.05);
}

.badge{
    position:absolute;
    left:10px;
    top:10px;
    background:#111827;
    color:#fff;
    padding:5px 8px;
    border-radius:6px;
    font-size:9px;
    font-weight:800;
    z-index:2;
}

.badge.sale{
    background:var(--danger);
}

.wishlist{
    position:absolute;
    right:10px;
    top:10px;
    width:34px;
    height:34px;
    border:0;
    border-radius:50%;
    background:#fff;
    color:#71717a;
    z-index:3;
}

.wishlist.active{
    color:#ef4444;
}

.product-info{
    padding:15px;
}

.product-category{
    color:#9ca3af;
    font-size:9px;
    text-transform:uppercase;
    font-weight:800;
}

.product h3{
    font-size:14px;
    margin:5px 0;
}

.rating{
    color:#f59e0b;
    font-size:11px;
}

.rating span{
    color:#9ca3af;
}

.price{
    margin-top:9px;
    font-size:17px;
    font-weight:800;
}

.old-price{
    color:#9ca3af;
    text-decoration:line-through;
    font-size:11px;
    margin-left:5px;
}

.product-actions{
    display:flex;
    gap:7px;
    padding:0 15px 15px;
}

.add-cart{
    flex:1;
    border:0;
    background:#111827;
    color:#fff;
    border-radius:9px;
    padding:10px;
    font-size:11px;
    font-weight:800;
}

.add-cart:hover{
    background:var(--primary);
}

.view-btn{
    width:40px;
    border:1px solid var(--border);
    background:#fff;
    border-radius:9px;
}

/* =========================
   DEAL SECTION
========================= */

.deal{
    margin-top:35px;
    background:#111827;
    color:#fff;
    border-radius:22px;
    padding:35px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:30px;
}

.deal small{
    color:#a78bfa;
    font-weight:800;
    text-transform:uppercase;
}

.deal h2{
    font-size:30px;
    margin:7px 0;
}

.deal p{
    color:#a1a1aa;
    font-size:13px;
}

.timer{
    display:flex;
    gap:7px;
    margin:18px 0;
}

.time{
    background:#27272a;
    border-radius:9px;
    padding:9px 13px;
    text-align:center;
}

.time strong{
    display:block;
    font-size:18px;
}

.time span{
    font-size:8px;
    color:#a1a1aa;
}

/* =========================
   FOOTER
========================= */

footer{
    margin-top:50px;
    background:#fff;
    border-top:1px solid var(--border);
    padding:30px 35px;
}

.footer-content{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.footer-content p{
    color:var(--muted);
    font-size:11px;
}

.socials{
    display:flex;
    gap:7px;
}

.socials a{
    width:34px;
    height:34px;
    border:1px solid var(--border);
    border-radius:8px;
    display:grid;
    place-items:center;
    font-size:13px;
}

/* =========================
   CART
========================= */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.45);
    display:none;
    z-index:200;
}

.overlay.show{
    display:block;
}

.cart{
    position:fixed;
    right:0;
    top:0;
    bottom:0;
    width:390px;
    max-width:92vw;
    background:#fff;
    z-index:210;
    transform:translateX(100%);
    transition:.25s;
    padding:22px;
    display:flex;
    flex-direction:column;
}

.cart.open{
    transform:translateX(0);
}

.cart-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding-bottom:16px;
    border-bottom:1px solid var(--border);
}

.close{
    width:35px;
    height:35px;
    border:0;
    border-radius:9px;
    background:#f4f4f5;
}

.cart-items{
    flex:1;
    overflow:auto;
}

.cart-item{
    display:flex;
    gap:10px;
    padding:13px 0;
    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:58px;
    height:58px;
    object-fit:cover;
    border-radius:8px;
}

.cart-item h4{
    font-size:12px;
}

.cart-item p{
    color:var(--muted);
    font-size:11px;
}

.cart-footer{
    border-top:1px solid var(--border);
    padding-top:15px;
}

.total{
    display:flex;
    justify-content:space-between;
    font-weight:800;
    margin-bottom:13px;
}

.checkout{
    width:100%;
    border:0;
    background:var(--primary);
    color:#fff;
    padding:13px;
    border-radius:10px;
    font-weight:800;
}

/* =========================
   TOAST
========================= */

.toast{
    position:fixed;
    bottom:25px;
    left:50%;
    transform:translate(-50%,20px);
    background:#111827;
    color:#fff;
    padding:11px 17px;
    border-radius:9px;
    font-size:12px;
    opacity:0;
    pointer-events:none;
    transition:.25s;
    z-index:500;
}

.toast.show{
    opacity:1;
    transform:translate(-50%,0);
}

/* =========================
   MOBILE
========================= */

.mobile-menu{
    display:none;
}

@media(max-width:1100px){

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .stats{
        grid-template-columns:repeat(2,1fr);
    }

}

@media(max-width:800px){

    .sidebar{
        transform:translateX(-100%);
        transition:.25s;
    }

    .sidebar.open{
        transform:translateX(0);
    }

    .main{
        margin-left:0;
    }

    .top-header{
        padding:0 18px;
    }

    .mobile-menu{
        display:block;
        width:38px;
        height:38px;
        border:1px solid var(--border);
        background:#fff;
        border-radius:9px;
    }

    .search{
        display:none;
    }

    .content{
        padding:20px 18px;
    }

    .hero{
        padding:35px 25px;
        min-height:400px;
    }

    .hero h2{
        font-size:34px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .deal{
        display:block;
    }

    .deal .btn{
        margin-top:10px;
    }

}

@media(max-width:520px){

    .page-title p{
        display:none;
    }

    .header-btn{
        width:36px;
        height:36px;
    }

    .stats{
        grid-template-columns:1fr 1fr;
    }

    .stat{
        padding:12px;
    }

    .stat strong{
        font-size:14px;
    }

    .hero{
        min-height:430px;
    }

    .hero h2{
        font-size:31px;
    }

    .products{
        grid-template-columns:1fr;
    }

    .toolbar{
        display:block;
    }

    .sort{
        margin-top:10px;
    }

    .footer-content{
        display:block;
    }

    .socials{
        margin-top:15px;
    }

}

</style>
</head>

<body>

<!-- ================= SIDEBAR ================= -->

<aside class="sidebar" id="sidebar">

    <div class="logo">
        Nexus<span>Shop</span>
    </div>

    <div class="menu-title">Shopping</div>

    <a href="#home" class="menu-item active">
        <i class="fa-solid fa-house"></i>
        Home
    </a>

    <a href="#products" class="menu-item">
        <i class="fa-solid fa-bag-shopping"></i>
        Products
    </a>

    <a href="#categories" class="menu-item">
        <i class="fa-solid fa-layer-group"></i>
        Categories
    </a>

    <a href="#deals" class="menu-item">
        <i class="fa-solid fa-tags"></i>
        Today's Deals
    </a>

    <div class="menu-title">Your Account</div>

    <a href="#" class="menu-item">
        <i class="fa-regular fa-heart"></i>
        Wishlist
        <span id="wishlistCount"
        style="margin-left:auto;font-size:10px;background:#eeecff;padding:3px 7px;border-radius:10px">
        0
        </span>
    </a>

    <a href="#" class="menu-item">
        <i class="fa-solid fa-clock-rotate-left"></i>
        Orders
    </a>

    <a href="#" class="menu-item">
        <i class="fa-regular fa-user"></i>
        My Account
    </a>

    <div class="menu-title">Support</div>

    <a href="#" class="menu-item">
        <i class="fa-regular fa-circle-question"></i>
        Help Center
    </a>

    <a href="#" class="menu-item">
        <i class="fa-solid fa-headset"></i>
        Contact Us
    </a>

    <div class="sidebar-bottom">

        <div class="profile">

            <div class="profile-avatar">
                NS
            </div>

            <div class="profile-info">
                <strong>Nexus Shopper</strong>
                <span>Premium Member</span>
            </div>

            <i class="fa-solid fa-chevron-right"
            style="font-size:10px;color:#aaa"></i>

        </div>

    </div>

</aside>


<!-- ================= MAIN ================= -->

<div class="main" id="home">

    <!-- TOP HEADER -->

    <header class="top-header">

        <div style="display:flex;align-items:center;gap:12px">

            <button class="mobile-menu" id="mobileMenu">
                <i class="fa-solid fa-bars"></i>
            </button>

            <div class="page-title">

                <h1>Good morning 👋</h1>

                <p>Find something you'll love today.</p>

            </div>

        </div>

        <div class="header-right">

            <div class="search">

                <input
                type="search"
                id="searchInput"
                placeholder="Search products...">

                <i class="fa-solid fa-magnifying-glass"></i>

            </div>

            <button class="header-btn">

                <i class="fa-regular fa-bell"></i>

            </button>

            <button
            class="header-btn"
            id="cartButton">

                <i class="fa-solid fa-cart-shopping"></i>

                <span
                id="cartCount"
                style="
                position:absolute;
                margin-top:-20px;
                margin-left:-5px;
                background:#ef4444;
                color:#fff;
                width:17px;
                height:17px;
                border-radius:50%;
                font-size:9px;
                display:grid;
                place-items:center;">
                0
                </span>

            </button>

        </div>

    </header>


    <!-- CONTENT -->

    <main class="content">


        <!-- HERO -->

        <section class="hero">

            <div class="hero-content">

                <span class="hero-label">
                    <i class="fa-solid fa-bolt"></i>
                    New Season Collection
                </span>

                <h2>
                    Upgrade your everyday.
                </h2>

                <p>
                    Discover carefully selected technology,
                    fashion and lifestyle products designed
                    to make your everyday better.
                </p>

                <div class="hero-buttons">

                    <button
                    class="btn btn-primary"
                    onclick="scrollToProducts()">

                        Shop Now
                        <i class="fa-solid fa-arrow-right"></i>

                    </button>

                    <button
                    class="btn"
                    style="background:rgba(255,255,255,.15);color:#fff">

                        Explore Collection

                    </button>

                </div>

            </div>

        </section>


        <!-- STATS -->

        <section class="stats">

            <div class="stat">

                <div class="stat-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>

                <div>
                    <strong>Fast Delivery</strong>
                    <span>Across the country</span>
                </div>

            </div>


            <div class="stat">

                <div class="stat-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>

                <div>
                    <strong>Secure Payment</strong>
                    <span>100% protected</span>
                </div>

            </div>


            <div class="stat">

                <div class="stat-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>

                <div>
                    <strong>Easy Returns</strong>
                    <span>30-day returns</span>
                </div>

            </div>


            <div class="stat">

                <div class="stat-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>

                <div>
                    <strong>24/7 Support</strong>
                    <span>We're here to help</span>
                </div>

            </div>

        </section>


        <!-- CATEGORIES -->

        <section id="categories">

            <div class="section-header">

                <div>

                    <h2>Browse Categories</h2>

                    <p>Find what you're looking for quickly.</p>

                </div>

            </div>


            <div class="categories">

                <button class="category active"
                onclick="filterCategory('all',this)">

                    <i class="fa-solid fa-border-all"></i>

                    <strong>All</strong>

                    <span>Everything</span>

                </button>


                <button class="category"
                onclick="filterCategory('phones',this)">

                    <i class="fa-solid fa-mobile-screen"></i>

                    <strong>Phones</strong>

                    <span>Smartphones</span>

                </button>


                <button class="category"
                onclick="filterCategory('laptops',this)">

                    <i class="fa-solid fa-laptop"></i>

                    <strong>Laptops</strong>

                    <span>Computers</span>

                </button>


                <button class="category"
                onclick="filterCategory('gadgets',this)">

                    <i class="fa-solid fa-headphones"></i>

                    <strong>Gadgets</strong>

                    <span>Accessories</span>

                </button>


                <button class="category"
                onclick="filterCategory('footwear',this)">

                    <i class="fa-solid fa-shoe-prints"></i>

                    <strong>Footwear</strong>

                    <span>Shoes</span>

                </button>


                <button class="category"
                onclick="filterCategory('accessories',this)">

                    <i class="fa-solid fa-watch"></i>

                    <strong>Accessories</strong>

                    <span>More</span>

                </button>

            </div>

        </section>


        <!-- PRODUCTS -->

        <section id="products">

            <div class="section-header">

                <div>

                    <h2>Popular Products</h2>

                    <p>Our customers' favorite picks.</p>

                </div>

                <a href="#" style="font-size:12px;color:#635bff;font-weight:800">
                    View All →
                </a>

            </div>


            <div class="toolbar">

                <div class="filters">

                    <button
                    class="filter active"
                    onclick="filterCategory('all',this)">
                    All
                    </button>

                    <button
                    class="filter"
                    onclick="filterCategory('phones',this)">
                    Electronics
                    </button>

                    <button
                    class="filter"
                    onclick="filterCategory('footwear',this)">
                    Fashion
                    </button>

                    <button
                    class="filter"
                    onclick="filterCategory('gadgets',this)">
                    Gadgets
                    </button>

                </div>


                <select class="sort" id="sort">

                    <option value="featured">
                        Featured
                    </option>

                    <option value="low">
                        Price: Low → High
                    </option>

                    <option value="high">
                        Price: High → Low
                    </option>

                    <option value="rating">
                        Top Rated
                    </option>

                </select>

            </div>


            <div
            class="products"
            id="productsGrid">
            </div>

        </section>


        <!-- DEAL -->

        <section id="deals">

            <div class="deal">

                <div>

                    <small>
                        Limited Time Offer
                    </small>

                    <h2>
                        Premium Tech.
                        Better Price.
                    </h2>

                    <p>
                        Save big on selected technology
                        products before the offer ends.
                    </p>


                    <div class="timer">

                        <div class="time">
                            <strong id="days">01</strong>
                            <span>Days</span>
                        </div>

                        <div class="time">
                            <strong id="hours">12</strong>
                            <span>Hours</span>
                        </div>

                        <div class="time">
                            <strong id="minutes">45</strong>
                            <span>Minutes</span>
                        </div>

                        <div class="time">
                            <strong id="seconds">20</strong>
                            <span>Seconds</span>
                        </div>

                    </div>


                    <button
                    class="btn btn-purple"
                    onclick="addToCart(2)">

                        Shop Deal
                        <i class="fa-solid fa-arrow-right"></i>

                    </button>

                </div>


                <div
                style="
                width:280px;
                height:220px;
                border-radius:18px;
                background:url('https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=700&q=85') center/cover;
                ">
                </div>

            </div>

        </section>

    </main>


    <!-- FOOTER -->

    <footer>

        <div class="footer-content">

            <div>

                <strong>
                    Nexus<span style="color:#635bff">Shop</span>
                </strong>

                <p>
                    A smarter and simpler shopping experience.
                </p>

            </div>

            <div class="socials">

                <a href="#">
                    <i class="fa-brands fa-instagram"></i>
                </a>

                <a href="#">
                    <i class="fa-brands fa-facebook"></i>
                </a>

                <a href="#">
                    <i class="fa-brands fa-x-twitter"></i>
                </a>

            </div>

        </div>

    </footer>

</div>


<!-- ================= CART ================= -->

<div
class="overlay"
id="overlay">
</div>


<aside
class="cart"
id="cart">

    <div class="cart-header">

        <div>

            <strong style="font-size:18px">
                Shopping Cart
            </strong>

            <div
            style="font-size:11px;color:#71717a"
            id="cartSubtitle">

                0 items

            </div>

        </div>

        <button
        class="close"
        id="closeCart">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div
    class="cart-items"
    id="cartItems">
    </div>


    <div class="cart-footer">

        <div class="total">

            <span>Total</span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button
        class="checkout"
        onclick="checkout()">

            Proceed to Checkout
            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>

</aside>


<div
class="toast"
id="toast">
</div>


<script>

/* =========================
   PRODUCT DATA
========================= */

const products = [

{
    id:1,
    name:"iPhone 14 Pro Max",
    price:1099,
    old:1199,
    rating:5,
    reviews:128,
    category:"phones",
    badge:"New",
    image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
},

{
    id:2,
    name:"MacBook Pro 14",
    price:1999,
    rating:4,
    reviews:86,
    category:"laptops",
    image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
},

{
    id:3,
    name:"Apple Watch Series 8",
    price:349,
    old:399,
    rating:5,
    reviews:214,
    category:"accessories",
    badge:"Sale",
    image:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85"
},

{
    id:4,
    name:"Nike Air Max 270",
    price:150,
    rating:4,
    reviews:53,
    category:"footwear",
    image:"https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85"
},

{
    id:5,
    name:"Sony A7 IV Camera",
    price:2499,
    rating:5,
    reviews:42,
    category:"gadgets",
    image:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
},

{
    id:6,
    name:"Sony WH-1000XM5",
    price:399,
    rating:5,
    reviews:156,
    category:"gadgets",
    image:"https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85"
},

{
    id:7,
    name:"Travel Backpack",
    price:79,
    old:99,
    rating:4,
    reviews:67,
    category:"accessories",
    badge:"Sale",
    image:"https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85"
},

{
    id:8,
    name:"Premium Sneakers",
    price:129,
    rating:5,
    reviews:98,
    category:"footwear",
    badge:"Popular",
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
}

];


/* =========================
   STATE
========================= */

let cartItems = [];

let wishlist = new Set();

let currentCategory = "all";

let searchText = "";


/* =========================
   HELPERS
========================= */

const $ = id =>
document.getElementById(id);


function money(value){

    return "$" + value.toLocaleString();

}


function toast(message){

    const el = $("toast");

    el.textContent = message;

    el.classList.add("show");

    setTimeout(() => {

        el.classList.remove("show");

    },1800);

}


/* =========================
   RENDER PRODUCTS
========================= */

function renderProducts(){

    let list = products.filter(product => {

        const categoryMatch =
        currentCategory === "all" ||
        product.category === currentCategory;

        const searchMatch =
        product.name
        .toLowerCase()
        .includes(searchText);

        return categoryMatch && searchMatch;

    });


    const sort = $("sort").value;


    if(sort === "low"){

        list.sort((a,b) =>
        a.price - b.price);

    }

    if(sort === "high"){

        list.sort((a,b) =>
        b.price - a.price);

    }

    if(sort === "rating"){

        list.sort((a,b) =>
        b.rating - a.rating);

    }


    $("productsGrid").innerHTML = list.map(product => `

        <article class="product">

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `<span class="badge">
                        ${product.badge}
                    </span>`
                    :
                    ""
                }

                <button
                class="wishlist ${wishlist.has(product.id) ? "active":""}"
                onclick="toggleWishlist(${product.id})">

                    <i class="${
                        wishlist.has(product.id)
                        ?
                        "fa-solid"
                        :
                        "fa-regular"
                    } fa-heart"></i>

                </button>


                <img
                src="${product.image}"
                alt="${product.name}">

            </div>


            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <h3>
                    ${product.name}
                </h3>

                <div class="rating">

                    ${"★".repeat(product.rating)}
                    ${"☆".repeat(5-product.rating)}

                    <span>
                        (${product.reviews})
                    </span>

                </div>

                <div class="price">

                    ${money(product.price)}

                    ${
                        product.old
                        ?
                        `<span class="old-price">
                            ${money(product.old)}
                        </span>`
                        :
                        ""
                    }

                </div>

            </div>


            <div class="product-actions">

                <button
                class="add-cart"
                onclick="addToCart(${product.id})">

                    <i class="fa-solid fa-plus"></i>
                    Add to Cart

                </button>


                <button
                class="view-btn"
                onclick="quickView(${product.id})">

                    <i class="fa-regular fa-eye"></i>

                </button>

            </div>

        </article>

    `).join("");

}


/* =========================
   CART
========================= */

function addToCart(id){

    const product =
    products.find(p => p.id === id);

    const existing =
    cartItems.find(item => item.id === id);


    if(existing){

        existing.quantity++;

    }else{

        cartItems.push({

            ...product,

            quantity:1

        });

    }


    updateCart();

    toast(product.name + " added to cart");

}


function updateCart(){

    const count =
    cartItems.reduce(
        (total,item) =>
        total + item.quantity,
        0
    );


    $("cartCount").textContent = count;

    $("cartSubtitle").textContent =
    count + (count === 1 ? " item":" items");


    $("cartTotal").textContent =
    money(
        cartItems.reduce(
            (total,item) =>
            total + item.price * item.quantity,
            0
        )
    );


    if(cartItems.length === 0){

        $("cartItems").innerHTML = `

            <div style="
            text-align:center;
            padding:70px 10px;
            color:#71717a">

                <i
                class="fa-solid fa-cart-shopping"
                style="
                font-size:40px;
                margin-bottom:15px">
                </i>

                <p>
                    Your cart is empty.
                </p>

            </div>

        `;

        return;

    }


    $("cartItems").innerHTML =
    cartItems.map(item => `

        <div class="cart-item">

            <img
            src="${item.image}"
            alt="${item.name}">

            <div style="flex:1">

                <h4>
                    ${item.name}
                </h4>

                <p>
                    ${money(item.price)}
                    × ${item.quantity}
                </p>

                <button
                onclick="removeFromCart(${item.id})"
                style="
                border:0;
                background:none;
                color:#635bff;
                font-size:10px;
                padding:0">

                    Remove

                </button>

            </div>

            <strong>
                ${money(item.price * item.quantity)}
            </strong>

        </div>

    `).join("");

}


function removeFromCart(id){

    cartItems =
    cartItems.filter(
        item => item.id !== id
    );

    updateCart();

}


/* =========================
   WISHLIST
========================= */

function toggleWishlist(id){

    if(wishlist.has(id)){

        wishlist.delete(id);

        toast("Removed from wishlist");

    }else{

        wishlist.add(id);

        toast("Added to wishlist");

    }


    $("wishlistCount").textContent =
    wishlist.size;


    renderProducts();

}


/* =========================
   CATEGORY
========================= */

function filterCategory(category,button){

    currentCategory = category;

    document
    .querySelectorAll(".category")
    .forEach(item =>
    item.classList.remove("active")
    );


    if(button &&
       button.classList.contains("category")){

        button.classList.add("active");

    }


    renderProducts();

}


/* =========================
   SEARCH
========================= */

$("searchInput").addEventListener(
    "input",
    function(){

        searchText =
        this.value
        .trim()
        .toLowerCase();

        renderProducts();

    }
);


/* =========================
   SORT
========================= */

$("sort").addEventListener(
    "change",
    renderProducts
);


/* =========================
   SCROLL
========================= */

function scrollToProducts(){

    $("products").scrollIntoView({

        behavior:"smooth"

    });

}


/* =========================
   CART OPEN / CLOSE
========================= */

function openCart(){

    $("cart").classList.add("open");

    $("overlay").classList.add("show");

}


function closeCart(){

    $("cart").classList.remove("open");

    $("overlay").classList.remove("show");

}


$("cartButton").onclick =
openCart;

$("closeCart").onclick =
closeCart;

$("overlay").onclick =
closeCart;


/* =========================
   MOBILE MENU
========================= */

$("mobileMenu").onclick = () => {

    $("sidebar").classList.toggle("open");

};


/* =========================
   QUICK VIEW
========================= */

function quickView(id){

    const product =
    products.find(p => p.id === id);

    toast(
        product.name +
        " — " +
        money(product.price)
    );

}


/* =========================
   CHECKOUT
========================= */

function checkout(){

    if(cartItems.length === 0){

        toast("Your cart is empty");

        return;

    }


    toast("Checkout is ready!");

}


/* =========================
   COUNTDOWN
========================= */

let endTime =
Date.now() + 24 * 60 * 60 * 1000;


function updateTimer(){

    const remaining =
    Math.max(
        0,
        endTime - Date.now()
    );


    const days =
    Math.floor(
        remaining / 86400000
    );

    const hours =
    Math.floor(
        remaining / 3600000
    ) % 24;

    const minutes =
    Math.floor(
        remaining / 60000
    ) % 60;

    const seconds =
    Math.floor(
        remaining / 1000
    ) % 60;


    $("days").textContent =
    String(days).padStart(2,"0");

    $("hours").textContent =
    String(hours).padStart(2,"0");

    $("minutes").textContent =
    String(minutes).padStart(2,"0");

    $("seconds").textContent =
    String(seconds).padStart(2,"0");

}


setInterval(
    updateTimer,
    1000
);


/* =========================
   INITIALIZE
========================= */

renderProducts();

updateCart();

updateTimer();

</script>

</body>
</html>
```
