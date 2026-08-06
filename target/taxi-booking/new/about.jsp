<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | About Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <jsp:include page="/WEB-INF/jspf/common/navbar.jspf" />

    <div class="container py-5">
        <div class="row g-4">
            <div class="col-lg-6">
                <div class="card contact-card p-4 h-100">
                    <h2 class="fw-bold mb-3">About Taxi Booking</h2>
                    <p>Taxi Booking is a trusted mobility platform delivering professional rides, driver support, and on-demand travel convenience.</p>
                    <h5 class="fw-bold">Mission</h5>
                    <p>To provide affordable, punctual, and secure transport experiences for every rider.</p>
                    <h5 class="fw-bold">Vision</h5>
                    <p>To become the most dependable urban mobility brand in every city we serve.</p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card contact-card p-4 h-100">
                    <h2 class="fw-bold mb-3">Achievements</h2>
                    <div class="row g-3 text-center">
                        <div class="col-6">
                            <div class="stat-card p-4 h-100">
                                <div class="stat-number">50K+</div>
                                <div>Trips Completed</div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="stat-card p-4 h-100">
                                <div class="stat-number">300+</div>
                                <div>Drivers</div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="stat-card p-4 h-100">
                                <div class="stat-number">99%</div>
                                <div>Customer Satisfaction</div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="stat-card p-4 h-100">
                                <div class="stat-number">24/7</div>
                                <div>Support</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/jspf/common/footer.jspf" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
