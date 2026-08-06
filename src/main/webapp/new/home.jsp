<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <jsp:include page="/WEB-INF/jspf/common/navbar.jspf" />

    <section class="hero-section">
        <div class="container">
            <div class="row align-items-center g-5">
                <div class="col-lg-7">
                    <span class="hero-badge">Fast • Safe • Affordable</span>
                    <h1 class="hero-title">Premium taxi rides for every city journey.</h1>
                    <p class="lead text-white-50 mb-4">Book a ride in seconds, track your driver live, and enjoy a polished urban mobility experience inspired by modern ride platforms.</p>
                    <div class="hero-cta d-flex flex-wrap">
                        <a href="${pageContext.request.contextPath}/new/book-ride.jsp" class="btn btn-primary-custom">Book Now</a>
                        <a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-outline-custom">Search Ride</a>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="hero-card p-4 p-lg-5">
                        <h4 class="fw-bold mb-3">Ready to ride?</h4>
                        <div class="row g-3">
                            <div class="col-12">
                                <input class="form-control" type="text" placeholder="Pickup location">
                            </div>
                            <div class="col-12">
                                <input class="form-control" type="text" placeholder="Destination">
                            </div>
                            <div class="col-12">
                                <select class="form-select">
                                    <option>Standard</option>
                                    <option>Premium</option>
                                    <option>SUV</option>
                                </select>
                            </div>
                            <div class="col-12 text-end">
                                <button class="btn btn-primary-custom">Find Ride</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="section-title">Why riders choose us</h2>
                <p class="text-muted">Professional mobility with premium safety and speed.</p>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-shield-heart"></i></div>
                        <h5>Verified safety</h5>
                        <p class="text-muted mb-0">Trusted drivers, secure pickups, and transparent service.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-stopwatch"></i></div>
                        <h5>Rapid response</h5>
                        <p class="text-muted mb-0">Real-time ride requests and faster arrival experience.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-sack-dollar"></i></div>
                        <h5>Fair pricing</h5>
                        <p class="text-muted mb-0">Clear estimates and predictable journey costs.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 bg-white">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="section-title">How it works</h2>
            </div>
            <div class="row g-4 text-center">
                <div class="col-md-4">
                    <div class="card service-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-location-dot"></i></div>
                        <h5>1. Choose your route</h5>
                        <p class="text-muted">Select pickup and destination without friction.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card service-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-id-card"></i></div>
                        <h5>2. Confirm the ride</h5>
                        <p class="text-muted">View fare, driver, and travel detail instantly.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card service-card h-100 p-4">
                        <div class="card-icon mb-3"><i class="fa-solid fa-route"></i></div>
                        <h5>3. Enjoy the trip</h5>
                        <p class="text-muted">Track progress and experience a smooth arrival.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <h2 class="section-title">What customers say</h2>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <p class="mb-3">"A polished booking experience with premium cab quality and fast support."</p>
                        <strong>Ritika</strong>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <p class="mb-3">"The ride flow feels clean, modern, and genuinely trustworthy from start to finish."</p>
                        <strong>Arjun</strong>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card feature-card h-100 p-4">
                        <p class="mb-3">"Professional cars, strong UX, and the best value for business commutes."</p>
                        <strong>Meera</strong>
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
