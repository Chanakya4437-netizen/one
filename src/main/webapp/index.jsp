```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>HealMotion Physiotherapy Clinic</title>

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary: #159a8c;
            --primary-dark: #08796e;
            --secondary: #e8f8f5;
            --dark: #12302d;
            --text: #263a38;
            --muted: #71807e;
            --white: #ffffff;
            --bg: #f5fbfa;
            --border: #dcebea;
            --shadow: 0 15px 40px rgba(18, 48, 45, 0.08);
            --radius: 18px;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input,
        textarea,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255,255,255,0.96);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border);
        }

        .navbar {
            max-width: 1200px;
            margin: auto;
            height: 76px;
            padding: 0 25px;

            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 21px;
            font-weight: 800;
            color: var(--dark);
        }

        .logo-icon {
            width: 42px;
            height: 42px;
            border-radius: 13px;
            background: var(--primary);
            color: white;

            display: grid;
            place-items: center;
        }

        .logo span {
            color: var(--primary);
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav-links a {
            font-size: 14px;
            font-weight: 600;
            color: #536360;
            transition: 0.2s;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .nav-btn {
            background: var(--primary);
            color: white !important;
            padding: 11px 17px;
            border-radius: 10px;
        }

        .nav-btn:hover {
            background: var(--primary-dark);
        }

        .menu-btn {
            display: none;
            border: 0;
            background: var(--secondary);
            width: 40px;
            height: 40px;
            border-radius: 10px;
            color: var(--primary);
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            max-width: 1200px;
            margin: auto;
            min-height: 600px;
            padding: 70px 25px;

            display: grid;
            grid-template-columns: 1.05fr 0.95fr;
            align-items: center;
            gap: 50px;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 7px;

            background: var(--secondary);
            color: var(--primary);

            padding: 8px 13px;
            border-radius: 30px;

            font-size: 12px;
            font-weight: 800;
            margin-bottom: 18px;
        }

        .hero h1 {
            font-size: 52px;
            line-height: 1.1;
            letter-spacing: -2px;
            color: var(--dark);
            margin-bottom: 18px;
        }

        .hero h1 span {
            color: var(--primary);
        }

        .hero p {
            max-width: 570px;
            color: var(--muted);
            font-size: 16px;
            margin-bottom: 28px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: 0;
            padding: 13px 19px;
            border-radius: 10px;

            display: inline-flex;
            align-items: center;
            gap: 8px;

            font-size: 13px;
            font-weight: 800;
            transition: 0.2s;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: white;
            color: var(--primary);
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--primary);
        }

        .hero-image {
            min-height: 470px;
            border-radius: 30px;
            overflow: hidden;
            position: relative;

            background:
                linear-gradient(
                    135deg,
                    rgba(21,154,140,.12),
                    rgba(255,255,255,.1)
                ),
                url("https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?auto=format&fit=crop&w=1000&q=85")
                center/cover;
        }

        .doctor-card {
            position: absolute;
            bottom: 25px;
            left: 25px;
            right: 25px;

            background: rgba(255,255,255,.96);
            padding: 17px;
            border-radius: 16px;

            display: flex;
            align-items: center;
            gap: 13px;

            box-shadow: var(--shadow);
        }

        .doctor-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: var(--secondary);
            color: var(--primary);

            display: grid;
            place-items: center;
            font-size: 20px;
        }

        .doctor-card strong {
            font-size: 14px;
        }

        .doctor-card span {
            display: block;
            font-size: 11px;
            color: var(--muted);
        }

        /* =========================
           STATS
        ========================= */

        .stats-wrapper {
            max-width: 1200px;
            margin: -35px auto 50px;
            padding: 0 25px;
            position: relative;
            z-index: 5;
        }

        .stats {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            padding: 22px;

            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;

            box-shadow: var(--shadow);
        }

        .stat {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .stat-icon {
            width: 44px;
            height: 44px;
            border-radius: 12px;
            background: var(--secondary);
            color: var(--primary);

            display: grid;
            place-items: center;
        }

        .stat strong {
            display: block;
            font-size: 17px;
            color: var(--dark);
        }

        .stat span {
            font-size: 11px;
            color: var(--muted);
        }

        /* =========================
           COMMON SECTION
        ========================= */

        section {
            scroll-margin-top: 90px;
        }

        .section {
            max-width: 1200px;
            margin: auto;
            padding: 75px 25px;
        }

        .section-heading {
            text-align: center;
            max-width: 650px;
            margin: 0 auto 45px;
        }

        .section-heading small {
            color: var(--primary);
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .section-heading h2 {
            color: var(--dark);
            font-size: 34px;
            line-height: 1.2;
            margin: 8px 0 12px;
        }

        .section-heading p {
            color: var(--muted);
            font-size: 14px;
        }

        /* =========================
           SERVICES
        ========================= */

        .services {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .service-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 25px;

            transition: 0.25s;
        }

        .service-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow);
            border-color: #bce4de;
        }

        .service-icon {
            width: 50px;
            height: 50px;
            border-radius: 14px;
            background: var(--secondary);
            color: var(--primary);

            display: grid;
            place-items: center;

            font-size: 20px;
            margin-bottom: 17px;
        }

        .service-card h3 {
            font-size: 17px;
            color: var(--dark);
            margin-bottom: 7px;
        }

        .service-card p {
            font-size: 12px;
            color: var(--muted);
        }

        /* =========================
           ABOUT DOCTOR
        ========================= */

        .about {
            background: white;
        }

        .about-grid {
            max-width: 1200px;
            margin: auto;
            padding: 75px 25px;

            display: grid;
            grid-template-columns: .8fr 1.2fr;
            gap: 60px;
            align-items: center;
        }

        .doctor-photo {
            height: 430px;
            border-radius: 25px;

            background:
                url("https://images.unsplash.com/photo-1559839734-2b71ea197ec2?auto=format&fit=crop&w=900&q=85")
                center/cover;
        }

        .about-content small {
            color: var(--primary);
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .about-content h2 {
            font-size: 35px;
            color: var(--dark);
            line-height: 1.2;
            margin: 8px 0 14px;
        }

        .about-content p {
            color: var(--muted);
            font-size: 14px;
            margin-bottom: 15px;
        }

        .doctor-details {
            margin: 22px 0;
        }

        .detail {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 10px 0;
        }

        .detail i {
            color: var(--primary);
            width: 18px;
        }

        .detail span {
            font-size: 13px;
            color: var(--text);
        }

        /* =========================
           PROCESS
        ========================= */

        .process {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .process-card {
            text-align: center;
            padding: 25px 18px;
        }

        .process-number {
            width: 48px;
            height: 48px;
            margin: auto auto 15px;

            background: var(--primary);
            color: white;

            border-radius: 50%;

            display: grid;
            place-items: center;

            font-weight: 800;
        }

        .process-card h3 {
            font-size: 15px;
            color: var(--dark);
            margin-bottom: 5px;
        }

        .process-card p {
            font-size: 11px;
            color: var(--muted);
        }

        /* =========================
           APPOINTMENT
        ========================= */

        .appointment-section {
            background: #eaf8f5;
        }

        .appointment {
            max-width: 1000px;
            margin: auto;
            background: white;
            border-radius: 25px;
            padding: 35px;

            box-shadow: var(--shadow);

            display: grid;
            grid-template-columns: .8fr 1.2fr;
            gap: 35px;
        }

        .appointment-info h2 {
            color: var(--dark);
            font-size: 28px;
            line-height: 1.2;
            margin-bottom: 12px;
        }

        .appointment-info p {
            font-size: 13px;
            color: var(--muted);
            margin-bottom: 22px;
        }

        .contact-line {
            display: flex;
            gap: 10px;
            margin: 12px 0;
            font-size: 12px;
        }

        .contact-line i {
            color: var(--primary);
            width: 18px;
        }

        .form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 13px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .form-group.full {
            grid-column: 1 / -1;
        }

        .form-group label {
            font-size: 11px;
            font-weight: 700;
            color: var(--dark);
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            border: 1px solid var(--border);
            border-radius: 9px;
            padding: 11px;
            outline: none;
            font-size: 12px;
            background: #fbfdfd;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            border-color: var(--primary);
        }

        .form-group textarea {
            resize: vertical;
            min-height: 90px;
        }

        .submit-btn {
            grid-column: 1 / -1;
            border: 0;
            background: var(--primary);
            color: white;
            padding: 13px;
            border-radius: 10px;
            font-weight: 800;
        }

        .submit-btn:hover {
            background: var(--primary-dark);
        }

        /* =========================
           CONTACT
        ========================= */

        .contact-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .contact-card {
            background: white;
            border: 1px solid var(--border);
            padding: 25px;
            border-radius: 18px;
            text-align: center;
        }

        .contact-card i {
            font-size: 22px;
            color: var(--primary);
            margin-bottom: 12px;
        }

        .contact-card h3 {
            font-size: 15px;
            color: var(--dark);
        }

        .contact-card p {
            font-size: 12px;
            color: var(--muted);
            margin-top: 5px;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            background: var(--dark);
            color: white;
            padding: 45px 25px 20px;
        }

        .footer-content {
            max-width: 1200px;
            margin: auto;

            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr;
            gap: 40px;
        }

        .footer-brand h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .footer-brand h2 span {
            color: #50c8b9;
        }

        .footer-brand p {
            color: #a9bbb8;
            font-size: 12px;
            max-width: 350px;
        }

        .footer-column h3 {
            font-size: 13px;
            margin-bottom: 12px;
        }

        .footer-column p,
        .footer-column a {
            display: block;
            color: #a9bbb8;
            font-size: 11px;
            margin: 7px 0;
        }

        .footer-bottom {
            max-width: 1200px;
            margin: 35px auto 0;
            padding-top: 17px;
            border-top: 1px solid rgba(255,255,255,.1);

            display: flex;
            justify-content: space-between;

            color: #8ea09d;
            font-size: 10px;
        }

        /* =========================
           TOAST
        ========================= */

        .toast {
            position: fixed;
            left: 50%;
            bottom: 25px;

            transform: translate(-50%, 20px);

            background: var(--dark);
            color: white;

            padding: 12px 18px;
            border-radius: 10px;

            font-size: 12px;

            opacity: 0;
            pointer-events: none;
            transition: .25s;

            z-index: 2000;
        }

        .toast.show {
            opacity: 1;
            transform: translate(-50%, 0);
        }

        /* =========================
           MOBILE
        ========================= */

        @media(max-width: 900px) {

            .nav-links {
                position: absolute;
                top: 76px;
                left: 0;
                right: 0;

                background: white;
                border-bottom: 1px solid var(--border);

                display: none;
                flex-direction: column;
                align-items: stretch;

                padding: 15px 25px;
                gap: 0;
            }

            .nav-links.show {
                display: flex;
            }

            .nav-links a {
                padding: 13px 0;
            }

            .menu-btn {
                display: block;
            }

            .hero {
                grid-template-columns: 1fr;
                padding-top: 45px;
            }

            .hero h1 {
                font-size: 42px;
            }

            .hero-image {
                min-height: 400px;
            }

            .stats {
                grid-template-columns: 1fr 1fr;
            }

            .services {
                grid-template-columns: 1fr 1fr;
            }

            .about-grid {
                grid-template-columns: 1fr;
            }

            .doctor-photo {
                height: 400px;
            }

            .process {
                grid-template-columns: 1fr 1fr;
            }

            .appointment {
                grid-template-columns: 1fr;
            }

            .contact-grid {
                grid-template-columns: 1fr;
            }

            .footer-content {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width: 600px) {

            .navbar {
                padding: 0 18px;
            }

            .hero {
                padding: 40px 18px;
            }

            .hero h1 {
                font-size: 35px;
            }

            .hero p {
                font-size: 14px;
            }

            .hero-image {
                min-height: 360px;
            }

            .stats-wrapper {
                padding: 0 18px;
            }

            .stats {
                grid-template-columns: 1fr 1fr;
                padding: 15px;
            }

            .stat strong {
                font-size: 13px;
            }

            .section {
                padding: 55px 18px;
            }

            .section-heading h2 {
                font-size: 28px;
            }

            .services {
                grid-template-columns: 1fr;
            }

            .process {
                grid-template-columns: 1fr;
            }

            .appointment {
                padding: 22px;
            }

            .form {
                grid-template-columns: 1fr;
            }

            .form-group.full {
                grid-column: auto;
            }

            .submit-btn {
                grid-column: auto;
            }

            .footer-content {
                grid-template-columns: 1fr;
            }

            .footer-bottom {
                display: block;
            }

            .footer-bottom span {
                display: block;
                margin-top: 5px;
            }
        }

    </style>
</head>

<body>

<!-- =========================
     HEADER
========================= -->

<header>

    <nav class="navbar">

        <a href="#home" class="logo">

            <div class="logo-icon">
                <i class="fa-solid fa-person-walking"></i>
            </div>

            Heal<span>Motion</span>

        </a>

        <div class="nav-links" id="navLinks">

            <a href="#home">Home</a>
            <a href="#services">Services</a>
            <a href="#doctor">Our Doctor</a>
            <a href="#appointment">Appointment</a>
            <a href="#contact">Contact</a>

            <a href="#appointment" class="nav-btn">
                Book Appointment
            </a>

        </div>

        <button class="menu-btn" id="menuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

    </nav>

</header>


<!-- =========================
     HERO
========================= -->

<section class="hero" id="home">

    <div>

        <div class="hero-label">
            <i class="fa-solid fa-heart-pulse"></i>
            Professional Physiotherapy Care
        </div>

        <h1>
            Move Better.<br>
            <span>Live Better.</span>
        </h1>

        <p>
            Personalized physiotherapy treatments designed to
            reduce pain, restore movement and help you return
            to an active and healthy lifestyle.
        </p>

        <div class="hero-buttons">

            <a href="#appointment" class="btn btn-primary">
                <i class="fa-solid fa-calendar-check"></i>
                Book Appointment
            </a>

            <a href="tel:+919876543210" class="btn btn-outline">
                <i class="fa-solid fa-phone"></i>
                Call Clinic
            </a>

        </div>

    </div>


    <div class="hero-image">

        <div class="doctor-card">

            <div class="doctor-avatar">
                <i class="fa-solid fa-user-doctor"></i>
            </div>

            <div>
                <strong>Dr. Ananya Rao</strong>
                <span>
                    MPT - Orthopaedic Physiotherapist
                    • 10+ Years Experience
                </span>
            </div>

        </div>

    </div>

</section>


<!-- =========================
     STATS
========================= -->

<div class="stats-wrapper">

    <div class="stats">

        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-user-group"></i>
            </div>

            <div>
                <strong>5,000+</strong>
                <span>Patients Treated</span>
            </div>

        </div>


        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-award"></i>
            </div>

            <div>
                <strong>10+ Years</strong>
                <span>Clinical Experience</span>
            </div>

        </div>


        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-star"></i>
            </div>

            <div>
                <strong>4.9 / 5</strong>
                <span>Patient Rating</span>
            </div>

        </div>


        <div class="stat">

            <div class="stat-icon">
                <i class="fa-solid fa-clock"></i>
            </div>

            <div>
                <strong>Mon - Sat</strong>
                <span>8 AM - 8 PM</span>
            </div>

        </div>

    </div>

</div>


<!-- =========================
     SERVICES
========================= -->

<section class="section" id="services">

    <div class="section-heading">

        <small>Our Services</small>

        <h2>
            Comprehensive Physiotherapy Care
        </h2>

        <p>
            Evidence-based treatments focused on reducing pain,
            improving mobility and helping you recover safely.
        </p>

    </div>


    <div class="services">

        <div class="service-card">

            <div class="service-icon">
                <i class="fa-solid fa-bone"></i>
            </div>

            <h3>Orthopaedic Physiotherapy</h3>

            <p>
                Treatment for joint pain, arthritis, fractures,
                muscle injuries and post-surgical rehabilitation.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">
                <i class="fa-solid fa-person-running"></i>
            </div>

            <h3>Sports Injury Rehabilitation</h3>

            <p>
                Specialized rehabilitation programs for athletes
                recovering from sports-related injuries.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">
                <i class="fa-solid fa-person"></i>
            </div>

            <h3>Back & Neck Pain</h3>

            <p>
                Personalized treatment for back pain, neck pain,
                posture problems and spinal conditions.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">
                <i class="fa-solid fa-wheelchair"></i>
            </div>

            <h3>Post-Surgery Rehabilitation</h3>

            <p>
                Structured recovery programs after orthopaedic
                and other surgeries.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">
                <i class="fa-solid fa-child-reaching"></i>
            </div>

            <h3>Posture Correction</h3>

            <p>
                Assessment and exercises designed to improve
                posture, flexibility and body mechanics.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">
                <i class="fa-solid fa-house-medical"></i>
            </div>

            <h3>Home Physiotherapy</h3>

            <p>
                Convenient physiotherapy sessions delivered
                at your home by our trained professionals.
            </p>

        </div>

    </div>

</section>


<!-- =========================
     DOCTOR
========================= -->

<section class="about" id="doctor">

    <div class="about-grid">

        <div class="doctor-photo"></div>

        <div class="about-content">

            <small>Meet Your Physiotherapist</small>

            <h2>
                Dr. Ananya Rao
            </h2>

            <p>
                Dr. Ananya Rao is an experienced physiotherapist
                specializing in orthopaedic rehabilitation,
                sports injuries and chronic pain management.
            </p>

            <p>
                Her approach combines personalized exercise
                therapy, manual therapy and patient education
                to help patients achieve long-term improvements.
            </p>


            <div class="doctor-details">

                <div class="detail">
                    <i class="fa-solid fa-graduation-cap"></i>
                    <span>
                        Master of Physiotherapy (MPT)
                    </span>
                </div>

                <div class="detail">
                    <i class="fa-solid fa-briefcase-medical"></i>
                    <span>
                        10+ Years Clinical Experience
                    </span>
                </div>

                <div class="detail">
                    <i class="fa-solid fa-location-dot"></i>
                    <span>
                        Hyderabad, Telangana
                    </span>
                </div>

                <div class="detail">
                    <i class="fa-solid fa-language"></i>
                    <span>
                        English • Telugu • Hindi
                    </span>
                </div>

            </div>


            <a href="#appointment" class="btn btn-primary">
                Consult Dr. Ananya
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

    </div>

</section>


<!-- =========================
     HOW IT WORKS
========================= -->

<section class="section">

    <div class="section-heading">

        <small>Simple Process</small>

        <h2>
            Your Recovery Journey
        </h2>

        <p>
            We follow a personalized approach to understand
            your condition and create a suitable treatment plan.
        </p>

    </div>


    <div class="process">

        <div class="process-card">

            <div class="process-number">01</div>

            <h3>Initial Assessment</h3>

            <p>
                Detailed assessment of pain, mobility,
                strength and movement.
            </p>

        </div>


        <div class="process-card">

            <div class="process-number">02</div>

            <h3>Treatment Plan</h3>

            <p>
                A personalized rehabilitation program
                based on your condition.
            </p>

        </div>


        <div class="process-card">

            <div class="process-number">03</div>

            <h3>Therapy Sessions</h3>

            <p>
                Guided exercises and therapy techniques
                during your recovery.
            </p>

        </div>


        <div class="process-card">

            <div class="process-number">04</div>

            <h3>Progress Tracking</h3>

            <p>
                Regular monitoring and adjustments
                to improve your recovery.
            </p>

        </div>

    </div>

</section>


<!-- =========================
     APPOINTMENT
========================= -->

<section class="appointment-section" id="appointment">

    <div class="section">

        <div class="appointment">

            <div class="appointment-info">

                <h2>
                    Book Your Appointment
                </h2>

                <p>
                    Take the first step towards better movement
                    and a pain-free lifestyle.
                </p>


                <div class="contact-line">
                    <i class="fa-solid fa-phone"></i>
                    <span>+91 98765 43210</span>
                </div>

                <div class="contact-line">
                    <i class="fa-solid fa-envelope"></i>
                    <span>hello@healmotionclinic.com</span>
                </div>

                <div class="contact-line">
                    <i class="fa-solid fa-location-dot"></i>
                    <span>
                        Plot 24, Road No. 36,<br>
                        Jubilee Hills, Hyderabad,<br>
                        Telangana - 500033
                    </span>
                </div>

                <div class="contact-line">
                    <i class="fa-solid fa-clock"></i>
                    <span>
                        Monday - Saturday<br>
                        8:00 AM - 8:00 PM
                    </span>
                </div>

            </div>


            <form class="form" id="appointmentForm">

                <div class="form-group">

                    <label>Your Name</label>

                    <input
                        type="text"
                        id="name"
                        placeholder="Enter your name"
                        required>

                </div>


                <div class="form-group">

                    <label>Phone Number</label>

                    <input
                        type="tel"
                        id="phone"
                        placeholder="Enter phone number"
                        required>

                </div>


                <div class="form-group">

                    <label>Appointment Date</label>

                    <input
                        type="date"
                        id="date"
                        required>

                </div>


                <div class="form-group">

                    <label>Preferred Time</label>

                    <select id="time" required>

                        <option value="">
                            Select time
                        </option>

                        <option>08:00 AM</option>
                        <option>10:00 AM</option>
                        <option>12:00 PM</option>
                        <option>03:00 PM</option>
                        <option>05:00 PM</option>
                        <option>07:00 PM</option>

                    </select>

                </div>


                <div class="form-group full">

                    <label>Service Required</label>

                    <select id="service" required>

                        <option value="">
                            Select a service
                        </option>

                        <option>
                            Orthopaedic Physiotherapy
                        </option>

                        <option>
                            Sports Injury Rehabilitation
                        </option>

                        <option>
                            Back & Neck Pain
                        </option>

                        <option>
                            Post-Surgery Rehabilitation
                        </option>

                        <option>
                            Posture Correction
                        </option>

                        <option>
                            Home Physiotherapy
                        </option>

                    </select>

                </div>


                <div class="form-group full">

                    <label>Message</label>

                    <textarea
                        id="message"
                        placeholder="Briefly describe your concern"></textarea>

                </div>


                <button
                    type="submit"
                    class="submit-btn">

                    <i class="fa-solid fa-calendar-check"></i>
                    Request Appointment

                </button>

            </form>

        </div>

    </div>

</section>


<!-- =========================
     CONTACT
========================= -->

<section class="section" id="contact">

    <div class="section-heading">

        <small>Contact Us</small>

        <h2>
            Visit HealMotion Clinic
        </h2>

        <p>
            We are here to help you move comfortably,
            recover confidently and stay active.
        </p>

    </div>


    <div class="contact-grid">

        <div class="contact-card">

            <i class="fa-solid fa-location-dot"></i>

            <h3>Clinic Address</h3>

            <p>
                Plot 24, Road No. 36,<br>
                Jubilee Hills,<br>
                Hyderabad, Telangana - 500033
            </p>

        </div>


        <div class="contact-card">

            <i class="fa-solid fa-phone"></i>

            <h3>Call Us</h3>

            <p>
                +91 98765 43210<br>
                +91 91234 56789
            </p>

        </div>


        <div class="contact-card">

            <i class="fa-solid fa-envelope"></i>

            <h3>Email</h3>

            <p>
                hello@healmotionclinic.com<br>
                appointments@healmotionclinic.com
            </p>

        </div>

    </div>

</section>


<!-- =========================
     FOOTER
========================= -->

<footer>

    <div class="footer-content">

        <div class="footer-brand">

            <h2>
                Heal<span>Motion</span>
            </h2>

            <p>
                Professional physiotherapy and rehabilitation
                services focused on helping you move better
                and live healthier.
            </p>

        </div>


        <div class="footer-column">

            <h3>Quick Links</h3>

            <a href="#home">Home</a>
            <a href="#services">Services</a>
            <a href="#doctor">Our Doctor</a>
            <a href="#appointment">Appointment</a>

        </div>


        <div class="footer-column">

            <h3>Clinic Hours</h3>

            <p>Monday - Saturday</p>
            <p>8:00 AM - 8:00 PM</p>
            <p>Sunday - Closed</p>

        </div>

    </div>


    <div class="footer-bottom">

        <span>
            © 2026 HealMotion Physiotherapy Clinic.
            All rights reserved.
        </span>

        <span>
            Designed for better healthcare.
        </span>

    </div>

</footer>


<!-- =========================
     TOAST
========================= -->

<div class="toast" id="toast"></div>


<script>

    /* =========================
       MOBILE MENU
    ========================= */

    const menuBtn = document.getElementById("menuBtn");
    const navLinks = document.getElementById("navLinks");

    menuBtn.addEventListener("click", () => {

        navLinks.classList.toggle("show");

    });


    /* Close mobile menu after clicking link */

    document.querySelectorAll(".nav-links a").forEach(link => {

        link.addEventListener("click", () => {

            navLinks.classList.remove("show");

        });

    });


    /* =========================
       APPOINTMENT FORM
    ========================= */

    const form =
        document.getElementById("appointmentForm");

    const toast =
        document.getElementById("toast");


    function showToast(message) {

        toast.textContent = message;

        toast.classList.add("show");

        setTimeout(() => {

            toast.classList.remove("show");

        }, 3000);

    }


    form.addEventListener("submit", function(event) {

        event.preventDefault();

        const name =
            document.getElementById("name").value;

        showToast(
            "Thank you " +
            name +
            "! Your appointment request has been received."
        );

        form.reset();

    });


    /* =========================
       SET MINIMUM APPOINTMENT DATE
    ========================= */

    const dateInput =
        document.getElementById("date");

    const today =
        new Date().toISOString().split("T")[0];

    dateInput.min = today;


</script>

</body>
</html>
```
