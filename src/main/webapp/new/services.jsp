<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | Services</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <jsp:include page="/WEB-INF/jspf/common/navbar.jspf" />

    <section class="hero-section">
        <div class="container">
            <div class="row align-items-center g-5">
                <div class="col-lg-7">
                    <span class="hero-badge">Our Services</span>
                    <h1 class="hero-title">Flexible taxi solutions for every journey.</h1>
                    <p class="lead text-white-50 mb-4">From airport transfers to corporate commutes, our service range is designed to give you comfort, control, and quick booking.</p>
                    <div class="hero-cta d-flex flex-wrap">
                        <a href="${pageContext.request.contextPath}/new/book-ride.jsp" class="btn btn-primary-custom">Book a Ride</a>
                        <a href="${pageContext.request.contextPath}/new/contact.jsp" class="btn btn-outline-custom">Contact Support</a>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="hero-card p-4 p-lg-5">
                        <h4 class="fw-bold mb-3">Need a tailored ride?</h4>
                        <ul class="list-unstyled text-muted mb-0">
                            <li class="mb-2"><i class="fa-solid fa-check text-primary"></i> Airport transfers</li>
                            <li class="mb-2"><i class="fa-solid fa-check text-primary"></i> City rides</li>
                            <li class="mb-2"><i class="fa-solid fa-check text-primary"></i> Business travel</li>
                            <li class="mb-2"><i class="fa-solid fa-check text-primary"></i> Hourly rentals</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 bg-white">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="section-title">Ride options</h2>
                <p class="text-muted">Choose from a service tier that fits your schedule and style.</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-car-side"></i></div>
                        <h5>Standard rides</h5>
                        <p class="text-muted mb-0">Affordable everyday trips with reliable drivers and smooth booking.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-star"></i></div>
                        <h5>Premium service</h5>
                        <p class="text-muted mb-0">Luxury cars, extra comfort, and priority dispatch for special occasions.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-briefcase"></i></div>
                        <h5>Corporate travel</h5>
                        <p class="text-muted mb-0">Business accounts, recurring rides, and expense-friendly invoicing.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="section-title">Why choose our services</h2>
            </div>
            <div class="row g-4">
                <div class="col-md-6">
                    <div class="card service-card h-100 p-4">
                        <h5>Fast matching</h5>
                        <p class="text-muted">Our platform connects you with nearby drivers instantly, reducing wait time.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card service-card h-100 p-4">
                        <h5>24/7 support</h5>
                        <p class="text-muted">Our team is available around the clock to help with bookings and travel questions.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="/WEB-INF/jspf/common/footer.jspf" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
