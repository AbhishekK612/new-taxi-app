<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taxi Booking | Drivers</title>
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
        <h2 class="fw-bold mb-4">Available Drivers</h2>
        <div class="row g-4">
            <div class="col-md-6 col-lg-4">
                <div class="card driver-card p-4 h-100 text-center">
                    <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=300&q=80" class="rounded-circle mb-3" width="110" height="110" alt="Driver">
                    <h5 class="fw-bold">John Carter</h5>
                    <p class="text-muted mb-1">Rating: 4.9</p>
                    <p class="text-muted mb-3">Vehicle: Hyundai Creta</p>
                    <div class="d-flex justify-content-center gap-2">
                        <a href="tel:+123456789" class="btn btn-primary-custom">Call</a>
                        <a href="${pageContext.request.contextPath}/new/book-ride.jsp" class="btn btn-outline-custom">Book</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/jspf/common/footer.jspf" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
