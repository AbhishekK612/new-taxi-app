<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | Privacy Policy</title>
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
                    <span class="hero-badge">Privacy first</span>
                    <h1 class="hero-title">Your data, protected and respected.</h1>
                    <p class="lead text-white-50 mb-4">We collect only what is needed to provide reliable rides and keep your account safe.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 bg-white">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-8 mx-auto">
                    <div class="card p-4">
                        <h2 class="section-title mb-3">Privacy Policy</h2>
                        <p class="text-muted">We respect your privacy and handle your information with care. Here are the main privacy commitments for Taxi Booking.</p>
                        <h5 class="mt-4">Data we collect</h5>
                        <p class="text-muted">We collect registration details, ride history, payment preferences, and contact information to make your bookings seamless and secure.</p>
                        <h5 class="mt-4">How we use it</h5>
                        <p class="text-muted">Your data is used only to support ride requests, improve service quality, communicate trip updates, and prevent fraud.</p>
                        <h5 class="mt-4">Sharing and security</h5>
                        <p class="text-muted">We do not sell your personal data. We share limited information only with drivers and service partners needed to complete a ride.</p>
                        <h5 class="mt-4">Your control</h5>
                        <p class="text-muted">You can update your profile and contact settings through the account page. If you need help, contact support anytime.</p>
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
